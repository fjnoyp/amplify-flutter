// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.register_instance_event_notification_attributes_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_tag_notification_attribute.dart'
    as _i2;

part 'register_instance_event_notification_attributes_result.g.dart';

abstract class RegisterInstanceEventNotificationAttributesResult
    with
        _i1.AWSEquatable<RegisterInstanceEventNotificationAttributesResult>
    implements
        Built<RegisterInstanceEventNotificationAttributesResult,
            RegisterInstanceEventNotificationAttributesResultBuilder> {
  factory RegisterInstanceEventNotificationAttributesResult(
      {_i2.InstanceTagNotificationAttribute? instanceTagAttribute}) {
    return _$RegisterInstanceEventNotificationAttributesResult._(
        instanceTagAttribute: instanceTagAttribute);
  }

  factory RegisterInstanceEventNotificationAttributesResult.build(
      [void Function(RegisterInstanceEventNotificationAttributesResultBuilder)
          updates]) = _$RegisterInstanceEventNotificationAttributesResult;

  const RegisterInstanceEventNotificationAttributesResult._();

  /// Constructs a [RegisterInstanceEventNotificationAttributesResult] from a [payload] and [response].
  factory RegisterInstanceEventNotificationAttributesResult.fromResponse(
    RegisterInstanceEventNotificationAttributesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    RegisterInstanceEventNotificationAttributesResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      RegisterInstanceEventNotificationAttributesResultBuilder b) {}

  /// The resulting set of tag keys.
  _i2.InstanceTagNotificationAttribute? get instanceTagAttribute;
  @override
  List<Object?> get props => [instanceTagAttribute];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'RegisterInstanceEventNotificationAttributesResult');
    helper.add(
      'instanceTagAttribute',
      instanceTagAttribute,
    );
    return helper.toString();
  }
}

class RegisterInstanceEventNotificationAttributesResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<
        RegisterInstanceEventNotificationAttributesResult> {
  const RegisterInstanceEventNotificationAttributesResultEc2QuerySerializer()
      : super('RegisterInstanceEventNotificationAttributesResult');

  @override
  Iterable<Type> get types => const [
        RegisterInstanceEventNotificationAttributesResult,
        _$RegisterInstanceEventNotificationAttributesResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RegisterInstanceEventNotificationAttributesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RegisterInstanceEventNotificationAttributesResultBuilder();
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
        (object as RegisterInstanceEventNotificationAttributesResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'RegisterInstanceEventNotificationAttributesResultResponse',
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
