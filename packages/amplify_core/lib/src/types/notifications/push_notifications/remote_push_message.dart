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

import '../notification_types.dart';

class RemotePushMessage {
  final String messageId;
  final String messageType;

  RemotePushNotification? notification;
  Map<String, dynamic>? data;
  PinpointPayload? pinpointPayload;

// iOS specific
  final bool contentAvailable;
  final bool mutableContent;

// Determine which of these are needed
// String senderId;
// String category;
// String from;
// String collapseKey;
// DateTime sentTime;
// String threadId;
// int ttl;

// Taken from the current ios remote message payload
// bool remoteNotificationCompleteCallbackCalled;
// bool sound;

  RemotePushMessage({
    this.messageId = 'default',
    this.messageType = 'default',
    // this.notification = RemotePushNotification(),
    // this.data,
    // this.pinpointPayload,
    this.contentAvailable = false,
    this.mutableContent = false,
  });
}
