// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_analytics_pinpoint/amplify_analytics_pinpoint.dart';
import 'package:amplify_core/amplify_core.dart';

final AmplifyLogger _logger = AmplifyLogger.category(Category.pushNotifications)
    .createChild('AmplifyPushNotification');

// TODO(Samaritan1011001): Complete the implementation using Analytics Client
class PinpointProvider extends ServiceProviderClient {
  late FlutterAnalyticsClient _analyticsClient;

  bool isInitialized = false;
  @override
  Future<void> init({
    required PinpointPluginConfig config,
    required AmplifyAuthProviderRepository authProviderRepo,
  }) async {
    try {
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

      isInitialized = true;
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
      if (isInitialized) {
        await _analyticsClient.endpointClient.setUser(
          userId,
          userProfile,
        );
      }
    } on Exception catch (e) {
      _logger.error('Unable to register user details: $e');
    }
  }

  @override
  Future<void> recordNotificationEvent({
    required PushNotificationEventType eventType,
  }) async {
    try {
      if (isInitialized) {
        // TODO(Samaritan1011001): Add necessary properties
        // final properties = AnalyticsProperties()..addBoolProperty('test', true);
        await _analyticsClient.eventClient.recordEvent(
          eventType: eventType.name,
        );
      }
    } on Exception catch (e) {
      _logger.error('Unable to record event: $e');
    }
  }

  @override
  Future<void> registerDevice(String deviceToken) async {
    try {
      if (isInitialized) {
        _analyticsClient.endpointClient.address = deviceToken;
        _analyticsClient.endpointClient.channelType = ChannelType.push;
        _analyticsClient.endpointClient.optOut = 'NONE';
        await _analyticsClient.endpointClient.updateEndpoint();
      }
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
