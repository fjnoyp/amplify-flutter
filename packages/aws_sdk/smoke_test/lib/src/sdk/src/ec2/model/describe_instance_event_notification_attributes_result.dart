// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_instance_event_notification_attributes_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_tag_notification_attribute.dart'
    as _i2;

part 'describe_instance_event_notification_attributes_result.g.dart';

abstract class DescribeInstanceEventNotificationAttributesResult
    with
        _i1.AWSEquatable<DescribeInstanceEventNotificationAttributesResult>
    implements
        Built<DescribeInstanceEventNotificationAttributesResult,
            DescribeInstanceEventNotificationAttributesResultBuilder> {
  factory DescribeInstanceEventNotificationAttributesResult(
      {_i2.InstanceTagNotificationAttribute? instanceTagAttribute}) {
    return _$DescribeInstanceEventNotificationAttributesResult._(
        instanceTagAttribute: instanceTagAttribute);
  }

  factory DescribeInstanceEventNotificationAttributesResult.build(
      [void Function(DescribeInstanceEventNotificationAttributesResultBuilder)
          updates]) = _$DescribeInstanceEventNotificationAttributesResult;

  const DescribeInstanceEventNotificationAttributesResult._();

  /// Constructs a [DescribeInstanceEventNotificationAttributesResult] from a [payload] and [response].
  factory DescribeInstanceEventNotificationAttributesResult.fromResponse(
    DescribeInstanceEventNotificationAttributesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    DescribeInstanceEventNotificationAttributesResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      DescribeInstanceEventNotificationAttributesResultBuilder b) {}

  /// Information about the registered tag keys.
  _i2.InstanceTagNotificationAttribute? get instanceTagAttribute;
  @override
  List<Object?> get props => [instanceTagAttribute];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeInstanceEventNotificationAttributesResult');
    helper.add(
      'instanceTagAttribute',
      instanceTagAttribute,
    );
    return helper.toString();
  }
}

class DescribeInstanceEventNotificationAttributesResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<
        DescribeInstanceEventNotificationAttributesResult> {
  const DescribeInstanceEventNotificationAttributesResultEc2QuerySerializer()
      : super('DescribeInstanceEventNotificationAttributesResult');

  @override
  Iterable<Type> get types => const [
        DescribeInstanceEventNotificationAttributesResult,
        _$DescribeInstanceEventNotificationAttributesResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeInstanceEventNotificationAttributesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeInstanceEventNotificationAttributesResultBuilder();
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
        (object as DescribeInstanceEventNotificationAttributesResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'DescribeInstanceEventNotificationAttributesResultResponse',
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
