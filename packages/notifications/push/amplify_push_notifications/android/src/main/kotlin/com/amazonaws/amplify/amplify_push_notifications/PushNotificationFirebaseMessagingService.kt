// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

package com.amazonaws.amplify.amplify_push_notifications

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.os.Handler
import com.amplifyframework.pushnotifications.pinpoint.utils.NotificationPayload
import com.amplifyframework.pushnotifications.pinpoint.utils.PushNotificationsUtils
import com.amplifyframework.pushnotifications.pinpoint.utils.processRemoteMessage
import com.google.firebase.messaging.FirebaseMessagingService
import com.google.firebase.messaging.RemoteMessage
import io.flutter.Log
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.engine.FlutterEngineCache
import io.flutter.embedding.engine.FlutterEngineGroup
import io.flutter.embedding.engine.dart.DartExecutor
import io.flutter.embedding.engine.loader.FlutterLoader
import io.flutter.view.FlutterCallbackInformation


private const val TAG = "PushNotificationFirebaseMessagingService"

class PushNotificationFirebaseMessagingService : FirebaseMessagingService() {

    /**
     * Shared utilities from Amplify Android
     */
    private lateinit var utils: PushNotificationsUtils

    /**
     * Flutter Engine group that holds main and background engines
     */
    private lateinit var engineGroup: FlutterEngineGroup

    override fun onCreate() {
        super.onCreate()
        utils = PushNotificationsUtils(baseContext)
        engineGroup = FlutterEngineGroup(baseContext)

    }

    /**
     * Called if the FCM registration token is updated. This may occur if the security of
     * the previous token had been compromised. Note that this is called when the
     * FCM registration token is initially generated so this is where you would retrieve the token.
     */
    override fun onNewToken(token: String) {
        // Should initialize normally as it's initialized for the first time.
        StreamHandlers.initStreamHandlers()
        StreamHandlers.tokenReceived?.send(mapOf("token" to token))
    }

    override fun handleIntent(intent: Intent) {
        // If the intent is for a new token, just forward intent to Firebase SDK
        if (intent.action == PushNotificationPluginConstants.ACTION_NEW_TOKEN) {
            super.handleIntent(intent)
            return
        }
        val extras = intent.extras ?: Bundle()
        // If we can't handle the message type coming in, just forward the intent to Firebase SDK
        if (!extras.isSupported) {
            Log.i(TAG, "Message payload is not supported by Amplify")
            super.handleIntent(intent)
            return
        }
        // Otherwise, try to handle the message
        onMessageReceived(RemoteMessage(intent.extras))
    }

    /**
     * Method to handle and forward messages received in foreground & background using isolates and event channels
     */
    override fun onMessageReceived(remoteMessage: RemoteMessage) {
        Handler(baseContext.mainLooper).post {
            val payload = processRemoteMessage(remoteMessage)
            if (utils.isAppInForeground()) {
                val notificationHashMap = payload.asChannelMap()
                StreamHandlers.foregroundMessageReceived?.send(notificationHashMap)
            } else {
                try {
                    utils.showNotification(
                        payload, baseContext.getLaunchActivityClass()
                    )
                    Log.i(
                        TAG, "App is in background, start background service and enqueue work"
                    )
                    runAppFromKilledState(payload)

                } catch (exception: Exception) {
                    Log.e(
                        TAG, "Something went wrong while starting background engine $exception"
                    )
                }
            }
        }
    }

    private fun runAppFromKilledState(payload: NotificationPayload) {
        // Check if there is already a main Flutter Engine running
        val mainEngine = FlutterEngineCache.getInstance()
            .get(PushNotificationPluginConstants.FLUTTER_ENGINE_ID)
        if (mainEngine == null) {
            val callbackHandle = baseContext.getSharedPreferences(
                PushNotificationPluginConstants.SHARED_PREFERENCES_KEY, Context.MODE_PRIVATE
            ).getLong(
                PushNotificationPluginConstants.CALLBACK_DISPATCHER_HANDLE_KEY, 0
            )
            if (callbackHandle == 0L) {
                Log.w(
                    TAG,
                    "Warning: Background service could not start. Callback dispatcher not found."
                )
                return
            }
            val callbackInfo = FlutterCallbackInformation.lookupCallbackInformation(callbackHandle)
            if (callbackInfo == null) {
                Log.e(TAG, "Error: failed to find callback")
                return
            }
            Log.i(TAG, "Starting Background Flutter Engine")

            val mainHandler = Handler(baseContext.mainLooper)
            mainHandler.post {
                val loader = FlutterLoader()
                loader.startInitialization(baseContext);
                loader.ensureInitializationCompleteAsync(
                    baseContext,
                    null,
                    mainHandler,
                ) {
                    // Create a background Flutter Engine
                    val backgroundFlutterEngine = FlutterEngine(baseContext)
                    backgroundFlutterEngine.dartExecutor.executeDartCallback(
                        DartExecutor.DartCallback(
                            baseContext.assets, loader.findAppBundlePath(), callbackInfo
                        ),
                    )
                    AmplifyPushNotificationsPlugin.flutterApi?.onNotificationReceivedInBackground(
                        payload.asChannelMap()
                    ) {}
                }
            }
            // Runtime error is thrown when [PushNotificationPluginConstants.AMPLIFY_BG_FUNCTION_NAME]
            // does not match the name of the entry point function provided in the Flutter app.
        }else{
            AmplifyPushNotificationsPlugin.flutterApi?.onNotificationReceivedInBackground(
                payload.asChannelMap()
            ) {}
        }
    }
}
