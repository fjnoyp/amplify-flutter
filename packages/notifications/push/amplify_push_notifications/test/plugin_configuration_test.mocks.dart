// Mocks generated by Mockito 5.3.2 from annotations
// in amplify_push_notifications_pinpoint/example/ios/.symlinks/plugins/amplify_push_notifications/test/plugin_configuration_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;

import 'package:amplify_core/amplify_core.dart' as _i4;
import 'package:amplify_push_notifications/src/native_push_notifications_plugin.g.dart'
    as _i2;
import 'package:amplify_secure_storage/src/amplify_secure_storage.vm.dart'
    as _i6;
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart'
    as _i3;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeGetPermissionStatusResult_0 extends _i1.SmartFake
    implements _i2.GetPermissionStatusResult {
  _FakeGetPermissionStatusResult_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeAmplifySecureStorageConfig_1 extends _i1.SmartFake
    implements _i3.AmplifySecureStorageConfig {
  _FakeAmplifySecureStorageConfig_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeAWSLogger_2 extends _i1.SmartFake implements _i4.AWSLogger {
  _FakeAWSLogger_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [PushNotificationsHostApi].
///
/// See the documentation for Mockito's code generation for more information.
class MockPushNotificationsHostApi extends _i1.Mock
    implements _i2.PushNotificationsHostApi {
  MockPushNotificationsHostApi() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<_i2.GetPermissionStatusResult> getPermissionStatus() =>
      (super.noSuchMethod(
        Invocation.method(
          #getPermissionStatus,
          [],
        ),
        returnValue: _i5.Future<_i2.GetPermissionStatusResult>.value(
            _FakeGetPermissionStatusResult_0(
          this,
          Invocation.method(
            #getPermissionStatus,
            [],
          ),
        )),
      ) as _i5.Future<_i2.GetPermissionStatusResult>);
  @override
  _i5.Future<bool> requestPermissions(
          _i2.PermissionsOptions? arg_withPermissionOptions) =>
      (super.noSuchMethod(
        Invocation.method(
          #requestPermissions,
          [arg_withPermissionOptions],
        ),
        returnValue: _i5.Future<bool>.value(false),
      ) as _i5.Future<bool>);
  @override
  _i5.Future<Map<Object?, Object?>?> getLaunchNotification() =>
      (super.noSuchMethod(
        Invocation.method(
          #getLaunchNotification,
          [],
        ),
        returnValue: _i5.Future<Map<Object?, Object?>?>.value(),
      ) as _i5.Future<Map<Object?, Object?>?>);
  @override
  _i5.Future<int> getBadgeCount() => (super.noSuchMethod(
        Invocation.method(
          #getBadgeCount,
          [],
        ),
        returnValue: _i5.Future<int>.value(0),
      ) as _i5.Future<int>);
  @override
  _i5.Future<void> setBadgeCount(int? arg_withBadgeCount) =>
      (super.noSuchMethod(
        Invocation.method(
          #setBadgeCount,
          [arg_withBadgeCount],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  _i5.Future<void> registerCallbackFunction(int? arg_callbackHandle) =>
      (super.noSuchMethod(
        Invocation.method(
          #registerCallbackFunction,
          [arg_callbackHandle],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
}

/// A class which mocks [ServiceProviderClient].
///
/// See the documentation for Mockito's code generation for more information.
class MockServiceProviderClient extends _i1.Mock
    implements _i4.ServiceProviderClient {
  MockServiceProviderClient() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<void> init({
    required _i4.NotificationsPinpointPluginConfig? config,
    required _i4.AmplifyAuthProviderRepository? authProviderRepo,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #init,
          [],
          {
            #config: config,
            #authProviderRepo: authProviderRepo,
          },
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  _i5.Future<void> registerDevice(String? deviceToken) => (super.noSuchMethod(
        Invocation.method(
          #registerDevice,
          [deviceToken],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  _i5.Future<void> recordNotificationEvent({
    required _i4.PinpointEventType? eventType,
    required _i4.PushNotificationMessage? notification,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #recordNotificationEvent,
          [],
          {
            #eventType: eventType,
            #notification: notification,
          },
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  _i5.Future<void> identifyUser({
    required String? userId,
    required _i4.AnalyticsUserProfile? userProfile,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #identifyUser,
          [],
          {
            #userId: userId,
            #userProfile: userProfile,
          },
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
}

/// A class which mocks [AmplifySecureStorage].
///
/// See the documentation for Mockito's code generation for more information.
class MockAmplifySecureStorage extends _i1.Mock
    implements _i6.AmplifySecureStorage {
  MockAmplifySecureStorage() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.AmplifySecureStorageConfig get config => (super.noSuchMethod(
        Invocation.getter(#config),
        returnValue: _FakeAmplifySecureStorageConfig_1(
          this,
          Invocation.getter(#config),
        ),
      ) as _i3.AmplifySecureStorageConfig);
  @override
  String get runtimeTypeName => (super.noSuchMethod(
        Invocation.getter(#runtimeTypeName),
        returnValue: '',
      ) as String);
  @override
  _i4.AWSLogger get logger => (super.noSuchMethod(
        Invocation.getter(#logger),
        returnValue: _FakeAWSLogger_2(
          this,
          Invocation.getter(#logger),
        ),
      ) as _i4.AWSLogger);
  @override
  _i5.Future<void> delete({required String? key}) => (super.noSuchMethod(
        Invocation.method(
          #delete,
          [],
          {#key: key},
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
  @override
  _i5.Future<String?> read({required String? key}) => (super.noSuchMethod(
        Invocation.method(
          #read,
          [],
          {#key: key},
        ),
        returnValue: _i5.Future<String?>.value(),
      ) as _i5.Future<String?>);
  @override
  _i5.Future<void> write({
    required String? key,
    required String? value,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #write,
          [],
          {
            #key: key,
            #value: value,
          },
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
}
