/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/services.dart';

import '../amplify_push_notifications_pinpoint.dart';
// import 'package:amplify_push_notifications_pinpoint/lib/sdk/pinpoint.dart';

const MethodChannel _methodChannel =
    MethodChannel('com.amazonaws.amplify/notifications_pinpoint');

const EventChannel _eventChannel =
    EventChannel('com.amazonaws.amplify/event_channel/notifications_pinpoint');

class AmplifyNotificationsPinpointMethodChannel
    extends AmplifyPushNotificaitonsPinpoint {
  AmplifyNotificationsPinpointMethodChannel() : super.protected();

  static Stream<String>? _newTokenStream;

  // TODO: map using the push token from the event not the entire event
  static Stream<String> get newTokenStream => _newTokenStream ??=
      _eventChannel.receiveBroadcastStream().map((event) => event.toString());

  Future<dynamic> nativeMethodCallHandler(MethodCall methodCall) async {
    print('Native call!');
    switch (methodCall.method) {
      case "getToken":
        print("Received device token");
        break;
      default:
        return "Nothing";
    }
  }

  @override
  Future<void> addPlugin({
    required AmplifyAuthProviderRepository authProviderRepo,
  }) async {
    try {
      _methodChannel.setMethodCallHandler(nativeMethodCallHandler);

      // TODO: Add the call to native layer to add the plugin
      return Future.delayed(const Duration(milliseconds: 10));
      // return await _methodChannel.invokeMethod('addPlugin');
    } on PlatformException catch (e) {
      if (e.code == 'AmplifyAlreadyConfiguredException') {
        throw const AmplifyAlreadyConfiguredException(
          AmplifyExceptionMessages.alreadyConfiguredDefaultMessage,
          recoverySuggestion:
              AmplifyExceptionMessages.missingRecoverySuggestion,
        );
      } else {
        throw AmplifyException.fromMap((e.details as Map).cast());
      }
    }
  }

  @override
  Future<void> configure({
    AmplifyConfig? config,
    required AmplifyAuthProviderRepository authProviderRepo,
  }) async {
    // Register native listeners for token generattion and notification handling
    // Initialize Pinpoint and Endpoint Clients
    // Register FCM and APNS if auto-registeration is enabled
    // Create an Endpoint with a unique endpointId
  }

  @override
  Future<void> registerForRemoteNotifications() async {
    await _methodChannel.invokeMethod<bool>('registerForRemoteNotifications');
  }

  @override
  Future<PushNotificationSettings> requestMessagingPermission(
      {PushNotificationSettings? pushNotificationSettings}) async {
    pushNotificationSettings ??= PushNotificationSettings();

    await _methodChannel.invokeMethod<bool>('requestMessagingPermission');

    pushNotificationSettings.authorizationStatus =
        AuthorizationStatus.authorized;
    print(
        "pushNotificationSettings -> ${pushNotificationSettings.authorizationStatus}");
    return pushNotificationSettings;
  }

  @override
  Future<void> identifyUser({
    required String userId,
    required NotificationsUserProfile userProfile,
  }) async {
    print("userId -> $userId");
    print("userProfile -> $userProfile");

    // await _methodChannel.invokeMethod<bool>('identifyUser');
  }

  @override
  Future<Stream<String>> onNewToken() async {
    await _methodChannel.invokeMethod('onNewToken');
    return newTokenStream;
  }

  @override
  Future<String> getToken() async {
    String? token = await _methodChannel.invokeMethod<String>('getToken');
    print("Token -> $token");

    return '';
  }

  @override
  Future<Stream<RemotePushMessage>> onForegroundNotificationReceived() async {
    return Stream.empty();
  }

  @override
  Future<Stream<RemotePushMessage>> onBackgroundNotificationReceived() async {
    return Stream.empty();
  }

  @override
  Future<Stream<RemotePushMessage>> onNotificationOpenedApp() async {
    return Stream.empty();
  }

  @override
  Future<RemotePushMessage> getInitialNotification() async {
    return RemotePushMessage();
  }

  @override
  Future<int> getBadgeCount() async {
    return 0;
  }

  @override
  Future<void> setBadgeCount(int badgeCount) async {}
}
