// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.deregister_instance_event_notification_attributes_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/deregister_instance_tag_attribute_request.dart'
    as _i3;

part 'deregister_instance_event_notification_attributes_request.g.dart';

abstract class DeregisterInstanceEventNotificationAttributesRequest
    with
        _i1.HttpInput<DeregisterInstanceEventNotificationAttributesRequest>,
        _i2.AWSEquatable<DeregisterInstanceEventNotificationAttributesRequest>
    implements
        Built<DeregisterInstanceEventNotificationAttributesRequest,
            DeregisterInstanceEventNotificationAttributesRequestBuilder> {
  factory DeregisterInstanceEventNotificationAttributesRequest({
    bool? dryRun,
    _i3.DeregisterInstanceTagAttributeRequest? instanceTagAttribute,
  }) {
    dryRun ??= false;
    return _$DeregisterInstanceEventNotificationAttributesRequest._(
      dryRun: dryRun,
      instanceTagAttribute: instanceTagAttribute,
    );
  }

  factory DeregisterInstanceEventNotificationAttributesRequest.build(
      [void Function(
              DeregisterInstanceEventNotificationAttributesRequestBuilder)
          updates]) = _$DeregisterInstanceEventNotificationAttributesRequest;

  const DeregisterInstanceEventNotificationAttributesRequest._();

  factory DeregisterInstanceEventNotificationAttributesRequest.fromRequest(
    DeregisterInstanceEventNotificationAttributesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DeregisterInstanceEventNotificationAttributesRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      DeregisterInstanceEventNotificationAttributesRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// Information about the tag keys to deregister.
  _i3.DeregisterInstanceTagAttributeRequest? get instanceTagAttribute;
  @override
  DeregisterInstanceEventNotificationAttributesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        instanceTagAttribute,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DeregisterInstanceEventNotificationAttributesRequest');
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

class DeregisterInstanceEventNotificationAttributesRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<
        DeregisterInstanceEventNotificationAttributesRequest> {
  const DeregisterInstanceEventNotificationAttributesRequestEc2QuerySerializer()
      : super('DeregisterInstanceEventNotificationAttributesRequest');

  @override
  Iterable<Type> get types => const [
        DeregisterInstanceEventNotificationAttributesRequest,
        _$DeregisterInstanceEventNotificationAttributesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeregisterInstanceEventNotificationAttributesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        DeregisterInstanceEventNotificationAttributesRequestBuilder();
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
                  const FullType(_i3.DeregisterInstanceTagAttributeRequest),
            ) as _i3.DeregisterInstanceTagAttributeRequest));
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
        (object as DeregisterInstanceEventNotificationAttributesRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DeregisterInstanceEventNotificationAttributesRequestResponse',
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
              const FullType(_i3.DeregisterInstanceTagAttributeRequest),
        ));
    }
    return result;
  }
}
