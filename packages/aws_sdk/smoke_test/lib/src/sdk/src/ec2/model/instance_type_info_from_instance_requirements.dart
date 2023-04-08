// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.instance_type_info_from_instance_requirements; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'instance_type_info_from_instance_requirements.g.dart';

/// The list of instance types with the specified instance attributes.
abstract class InstanceTypeInfoFromInstanceRequirements
    with
        _i1.AWSEquatable<InstanceTypeInfoFromInstanceRequirements>
    implements
        Built<InstanceTypeInfoFromInstanceRequirements,
            InstanceTypeInfoFromInstanceRequirementsBuilder> {
  /// The list of instance types with the specified instance attributes.
  factory InstanceTypeInfoFromInstanceRequirements({String? instanceType}) {
    return _$InstanceTypeInfoFromInstanceRequirements._(
        instanceType: instanceType);
  }

  /// The list of instance types with the specified instance attributes.
  factory InstanceTypeInfoFromInstanceRequirements.build(
      [void Function(InstanceTypeInfoFromInstanceRequirementsBuilder)
          updates]) = _$InstanceTypeInfoFromInstanceRequirements;

  const InstanceTypeInfoFromInstanceRequirements._();

  static const List<_i2.SmithySerializer> serializers = [
    InstanceTypeInfoFromInstanceRequirementsEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InstanceTypeInfoFromInstanceRequirementsBuilder b) {}

  /// The matching instance type.
  String? get instanceType;
  @override
  List<Object?> get props => [instanceType];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('InstanceTypeInfoFromInstanceRequirements');
    helper.add(
      'instanceType',
      instanceType,
    );
    return helper.toString();
  }
}

class InstanceTypeInfoFromInstanceRequirementsEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<InstanceTypeInfoFromInstanceRequirements> {
  const InstanceTypeInfoFromInstanceRequirementsEc2QuerySerializer()
      : super('InstanceTypeInfoFromInstanceRequirements');

  @override
  Iterable<Type> get types => const [
        InstanceTypeInfoFromInstanceRequirements,
        _$InstanceTypeInfoFromInstanceRequirements,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceTypeInfoFromInstanceRequirements deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceTypeInfoFromInstanceRequirementsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'instanceType':
          if (value != null) {
            result.instanceType = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as InstanceTypeInfoFromInstanceRequirements);
    final result = <Object?>[
      const _i2.XmlElementName(
        'InstanceTypeInfoFromInstanceRequirementsResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.instanceType != null) {
      result
        ..add(const _i2.XmlElementName('InstanceType'))
        ..add(serializers.serialize(
          payload.instanceType!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
