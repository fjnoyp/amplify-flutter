// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io' show Platform;

import 'package:amplify_analytics_pinpoint/amplify_analytics_pinpoint.dart';
import 'package:amplify_core/amplify_core.dart';

final AmplifyLogger _logger = AmplifyLogger.category(Category.pushNotifications)
    .createChild('AmplifyPushNotification');

const ANDROID_CAMPAIGN_ID_KEY = 'pinpoint.campaign.campaign_id';
const ANDROID_CAMPAIGN_ACTIVITY_ID_KEY =
    'pinpoint.campaign.campaign_activity_id';
const ANDROID_CAMPAIGN_TREATMENT_ID_KEY = 'pinpoint.campaign.treatment_id';

class PinpointProvider extends ServiceProviderClient {
  late FlutterAnalyticsClient _analyticsClient;

  bool _isInitialized = false;
  @override
  Future<void> init({
    required PinpointPluginConfig config,
    required AmplifyAuthProviderRepository authProviderRepo,
  }) async {
    try {
      if (!_isInitialized) {
        final authProvider = authProviderRepo
            .getAuthProvider(APIAuthorizationType.iam.authProviderToken);

        if (authProvider == null) {
          throw const AnalyticsException(
            'No AWSIamAmplifyAuthProvider available. Is Auth category added and configured?',
          );
        }
        final region = config.pinpointAnalytics.region;
        final appId = config.pinpointAnalytics.appId;

        _analyticsClient = FlutterAnalyticsClient(
          endpointInfoStoreManager: FlutterEndpointInfoStoreManager(
            storageScope: EndpointStorageScope.pushNotifications,
          ),
        );
        await _analyticsClient.init(
          pinpointAppId: appId,
          region: region,
          authProvider: authProvider,
        );

        _isInitialized = true;
      }
    } on Exception catch (e) {
      _logger.error('Unable to initialize the Analytics Client: $e');
    }
  }

  @override
  Future<void> identifyUser({
    required String userId,
    required AnalyticsUserProfile userProfile,
  }) async {
    try {
      if (!_isInitialized) {
        _logger.error(
          'Pinpoint provider not configured, re-run Amplify.configure',
        );
        return;
      }
      await _analyticsClient.endpointClient.setUser(
        userId,
        userProfile,
      );
    } on Exception catch (e) {
      _logger.error('Unable to register user details: $e');
    }
  }

  @override
  Future<void> recordNotificationEvent({
    required AWSPinpointMessageEvent eventType,
    required PushNotificationMessage notification,
  }) async {
    try {
      if (!_isInitialized) {
        _logger.error(
          'Pinpoint provider not configured, re-run Amplify.configure',
        );
        return;
      }
      if (notification.data.isEmpty) {
        _logger.error(
          'Notification missing event information was not recorded',
        );
        return;
      }

      final eventInfo = _getEventInfo(notification: notification);

      // TODO(Samaritan1011001): Test for journey and for iOS payload
      // TODO(Samaritan1011001): Event char length is too long even for _campaign.received_foreground
      await _analyticsClient.eventClient.recordEvent(
        eventType: '${eventInfo.first as String}.$eventType',
        properties: eventInfo.last as AnalyticsProperties,
      );
    } on Exception catch (e) {
      _logger.error('Unable to record event: $e');
    }
  }

  @override
  Future<void> registerDevice(String deviceToken) async {
    try {
      if (!_isInitialized) {
        _logger.error(
          'Pinpoint provider not configured, re-run Amplify.configure',
        );
        return;
      }
      _analyticsClient.endpointClient.address = deviceToken;
      final channelType = _getChannelType();
      if (channelType != null) {
        _analyticsClient.endpointClient.channelType = channelType;
      }
      _analyticsClient.endpointClient.optOut = 'NONE';
      await _analyticsClient.endpointClient.updateEndpoint();
    } on AWSHttpException catch (e) {
      _logger.error('Network problem when registering device: ', e);
    } on NotFoundException catch (e) {
      throw PushNotificationException(
        'AppId or region is incorrect: $e',
        recoverySuggestion: 'Ensure the Pinpoint App Id, region are correct',
      );
    }
    // TODO(Samaritan1011001): Add cases for BadRequestException and retry for AWSHttpException
  }
}

Set<Object> _getEventInfo({
  required PushNotificationMessage notification,
}) {
  final data = notification.data;

  final analyticsProperties = AnalyticsProperties();
  var source = AWSPinpointMessageEventSource.campaign.name;
  if (data.containsKey(ANDROID_CAMPAIGN_ID_KEY)) {
    source = AWSPinpointMessageEventSource.campaign.name;
    analyticsProperties.addStringProperty(
      'campaign_id',
      data[ANDROID_CAMPAIGN_ID_KEY] as String,
    );
    if (data.containsKey(ANDROID_CAMPAIGN_ACTIVITY_ID_KEY)) {
      analyticsProperties.addStringProperty(
        'campaign_activity_id',
        data[ANDROID_CAMPAIGN_ACTIVITY_ID_KEY] as String,
      );
    }
    if (data.containsKey(ANDROID_CAMPAIGN_TREATMENT_ID_KEY)) {
      analyticsProperties.addStringProperty(
        'treatment_id',
        data[ANDROID_CAMPAIGN_TREATMENT_ID_KEY] as String,
      );
    }
  }

  // TODO(Samaritan1011001): Pinpoint object only exists on iOS so check what should go into analytics properties then
  if (data.containsKey('pinpoint')) {
    final pinpointData = (data['pinpoint'] as Map<Object, Object>);
    if (pinpointData.containsKey('campaign')) {
      source = AWSPinpointMessageEventSource.campaign.name;
      analyticsProperties.addStringProperty(
        'campaign',
        pinpointData['campaign'] as String,
      );
    } else if (pinpointData.containsKey('journey')) {
      source = AWSPinpointMessageEventSource.journey.name;
      analyticsProperties.addStringProperty(
        'journey',
        pinpointData['journey'] as String,
      );
    }
  }

  return {source, analyticsProperties};
}

// TODO(Samaritan1011001): should we use deviceContextInfo? Can this be infered in Analytics? Should we add ChannelType.apnsSandbox?
ChannelType? _getChannelType() {
  if (Platform.isAndroid) {
    return ChannelType.gcm;
  } else if (Platform.isIOS) {
    return ChannelType.apns;
  }
  return null;
}
