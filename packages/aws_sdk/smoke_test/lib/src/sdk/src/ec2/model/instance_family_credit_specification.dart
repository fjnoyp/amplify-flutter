// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.instance_family_credit_specification; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/unlimited_supported_instance_family.dart'
    as _i2;

part 'instance_family_credit_specification.g.dart';

/// Describes the default credit option for CPU usage of a burstable performance instance family.
abstract class InstanceFamilyCreditSpecification
    with
        _i1.AWSEquatable<InstanceFamilyCreditSpecification>
    implements
        Built<InstanceFamilyCreditSpecification,
            InstanceFamilyCreditSpecificationBuilder> {
  /// Describes the default credit option for CPU usage of a burstable performance instance family.
  factory InstanceFamilyCreditSpecification({
    _i2.UnlimitedSupportedInstanceFamily? instanceFamily,
    String? cpuCredits,
  }) {
    return _$InstanceFamilyCreditSpecification._(
      instanceFamily: instanceFamily,
      cpuCredits: cpuCredits,
    );
  }

  /// Describes the default credit option for CPU usage of a burstable performance instance family.
  factory InstanceFamilyCreditSpecification.build(
          [void Function(InstanceFamilyCreditSpecificationBuilder) updates]) =
      _$InstanceFamilyCreditSpecification;

  const InstanceFamilyCreditSpecification._();

  static const List<_i3.SmithySerializer> serializers = [
    InstanceFamilyCreditSpecificationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InstanceFamilyCreditSpecificationBuilder b) {}

  /// The instance family.
  _i2.UnlimitedSupportedInstanceFamily? get instanceFamily;

  /// The default credit option for CPU usage of the instance family. Valid values are `standard` and `unlimited`.
  String? get cpuCredits;
  @override
  List<Object?> get props => [
        instanceFamily,
        cpuCredits,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('InstanceFamilyCreditSpecification');
    helper.add(
      'instanceFamily',
      instanceFamily,
    );
    helper.add(
      'cpuCredits',
      cpuCredits,
    );
    return helper.toString();
  }
}

class InstanceFamilyCreditSpecificationEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<InstanceFamilyCreditSpecification> {
  const InstanceFamilyCreditSpecificationEc2QuerySerializer()
      : super('InstanceFamilyCreditSpecification');

  @override
  Iterable<Type> get types => const [
        InstanceFamilyCreditSpecification,
        _$InstanceFamilyCreditSpecification,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceFamilyCreditSpecification deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceFamilyCreditSpecificationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'instanceFamily':
          if (value != null) {
            result.instanceFamily = (serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i2.UnlimitedSupportedInstanceFamily),
            ) as _i2.UnlimitedSupportedInstanceFamily);
          }
          break;
        case 'cpuCredits':
          if (value != null) {
            result.cpuCredits = (serializers.deserialize(
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
    final payload = (object as InstanceFamilyCreditSpecification);
    final result = <Object?>[
      const _i3.XmlElementName(
        'InstanceFamilyCreditSpecificationResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.instanceFamily != null) {
      result
        ..add(const _i3.XmlElementName('InstanceFamily'))
        ..add(serializers.serialize(
          payload.instanceFamily!,
          specifiedType:
              const FullType.nullable(_i2.UnlimitedSupportedInstanceFamily),
        ));
    }
    if (payload.cpuCredits != null) {
      result
        ..add(const _i3.XmlElementName('CpuCredits'))
        ..add(serializers.serialize(
          payload.cpuCredits!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
