// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.deregister_instance_event_notification_attributes_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_tag_notification_attribute.dart'
    as _i2;

part 'deregister_instance_event_notification_attributes_result.g.dart';

abstract class DeregisterInstanceEventNotificationAttributesResult
    with
        _i1.AWSEquatable<DeregisterInstanceEventNotificationAttributesResult>
    implements
        Built<DeregisterInstanceEventNotificationAttributesResult,
            DeregisterInstanceEventNotificationAttributesResultBuilder> {
  factory DeregisterInstanceEventNotificationAttributesResult(
      {_i2.InstanceTagNotificationAttribute? instanceTagAttribute}) {
    return _$DeregisterInstanceEventNotificationAttributesResult._(
        instanceTagAttribute: instanceTagAttribute);
  }

  factory DeregisterInstanceEventNotificationAttributesResult.build(
      [void Function(DeregisterInstanceEventNotificationAttributesResultBuilder)
          updates]) = _$DeregisterInstanceEventNotificationAttributesResult;

  const DeregisterInstanceEventNotificationAttributesResult._();

  /// Constructs a [DeregisterInstanceEventNotificationAttributesResult] from a [payload] and [response].
  factory DeregisterInstanceEventNotificationAttributesResult.fromResponse(
    DeregisterInstanceEventNotificationAttributesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    DeregisterInstanceEventNotificationAttributesResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      DeregisterInstanceEventNotificationAttributesResultBuilder b) {}

  /// The resulting set of tag keys.
  _i2.InstanceTagNotificationAttribute? get instanceTagAttribute;
  @override
  List<Object?> get props => [instanceTagAttribute];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DeregisterInstanceEventNotificationAttributesResult');
    helper.add(
      'instanceTagAttribute',
      instanceTagAttribute,
    );
    return helper.toString();
  }
}

class DeregisterInstanceEventNotificationAttributesResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<
        DeregisterInstanceEventNotificationAttributesResult> {
  const DeregisterInstanceEventNotificationAttributesResultEc2QuerySerializer()
      : super('DeregisterInstanceEventNotificationAttributesResult');

  @override
  Iterable<Type> get types => const [
        DeregisterInstanceEventNotificationAttributesResult,
        _$DeregisterInstanceEventNotificationAttributesResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeregisterInstanceEventNotificationAttributesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeregisterInstanceEventNotificationAttributesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'instanceTagAttribute':
          if (value != null) {
            result.instanceTagAttribute.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i2.InstanceTagNotificationAttribute),
            ) as _i2.InstanceTagNotificationAttribute));
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
        (object as DeregisterInstanceEventNotificationAttributesResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'DeregisterInstanceEventNotificationAttributesResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.instanceTagAttribute != null) {
      result
        ..add(const _i3.XmlElementName('InstanceTagAttribute'))
        ..add(serializers.serialize(
          payload.instanceTagAttribute!,
          specifiedType: const FullType(_i2.InstanceTagNotificationAttribute),
        ));
    }
    return result;
  }
}
