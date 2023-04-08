// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.register_instance_event_notification_attributes_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/register_instance_tag_attribute_request.dart'
    as _i3;

part 'register_instance_event_notification_attributes_request.g.dart';

abstract class RegisterInstanceEventNotificationAttributesRequest
    with
        _i1.HttpInput<RegisterInstanceEventNotificationAttributesRequest>,
        _i2.AWSEquatable<RegisterInstanceEventNotificationAttributesRequest>
    implements
        Built<RegisterInstanceEventNotificationAttributesRequest,
            RegisterInstanceEventNotificationAttributesRequestBuilder> {
  factory RegisterInstanceEventNotificationAttributesRequest({
    bool? dryRun,
    _i3.RegisterInstanceTagAttributeRequest? instanceTagAttribute,
  }) {
    dryRun ??= false;
    return _$RegisterInstanceEventNotificationAttributesRequest._(
      dryRun: dryRun,
      instanceTagAttribute: instanceTagAttribute,
    );
  }

  factory RegisterInstanceEventNotificationAttributesRequest.build(
      [void Function(RegisterInstanceEventNotificationAttributesRequestBuilder)
          updates]) = _$RegisterInstanceEventNotificationAttributesRequest;

  const RegisterInstanceEventNotificationAttributesRequest._();

  factory RegisterInstanceEventNotificationAttributesRequest.fromRequest(
    RegisterInstanceEventNotificationAttributesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    RegisterInstanceEventNotificationAttributesRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      RegisterInstanceEventNotificationAttributesRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// Information about the tag keys to register.
  _i3.RegisterInstanceTagAttributeRequest? get instanceTagAttribute;
  @override
  RegisterInstanceEventNotificationAttributesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        instanceTagAttribute,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'RegisterInstanceEventNotificationAttributesRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'instanceTagAttribute',
      instanceTagAttribute,
    );
    return helper.toString();
  }
}

class RegisterInstanceEventNotificationAttributesRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<
        RegisterInstanceEventNotificationAttributesRequest> {
  const RegisterInstanceEventNotificationAttributesRequestEc2QuerySerializer()
      : super('RegisterInstanceEventNotificationAttributesRequest');

  @override
  Iterable<Type> get types => const [
        RegisterInstanceEventNotificationAttributesRequest,
        _$RegisterInstanceEventNotificationAttributesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RegisterInstanceEventNotificationAttributesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RegisterInstanceEventNotificationAttributesRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'InstanceTagAttribute':
          if (value != null) {
            result.instanceTagAttribute.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i3.RegisterInstanceTagAttributeRequest),
            ) as _i3.RegisterInstanceTagAttributeRequest));
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload =
        (object as RegisterInstanceEventNotificationAttributesRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'RegisterInstanceEventNotificationAttributesRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    if (payload.instanceTagAttribute != null) {
      result
        ..add(const _i1.XmlElementName('InstanceTagAttribute'))
        ..add(serializers.serialize(
          payload.instanceTagAttribute!,
          specifiedType:
              const FullType(_i3.RegisterInstanceTagAttributeRequest),
        ));
    }
    return result;
  }
}
