// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.target_capacity_specification; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/default_target_capacity_type.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/target_capacity_unit_type.dart'
    as _i3;

part 'target_capacity_specification.g.dart';

/// The number of units to request. You can choose to set the target capacity in terms of instances or a performance characteristic that is important to your application workload, such as vCPUs, memory, or I/O. If the request type is `maintain`, you can specify a target capacity of 0 and add capacity later.
///
/// You can use the On-Demand Instance `MaxTotalPrice` parameter, the Spot Instance `MaxTotalPrice`, or both to ensure that your fleet cost does not exceed your budget. If you set a maximum price per hour for the On-Demand Instances and Spot Instances in your request, EC2 Fleet will launch instances until it reaches the maximum amount that you're willing to pay. When the maximum amount you're willing to pay is reached, the fleet stops launching instances even if it hasn’t met the target capacity. The `MaxTotalPrice` parameters are located in [OnDemandOptions](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_OnDemandOptions.html) and [SpotOptions](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_SpotOptions).
abstract class TargetCapacitySpecification
    with _i1.AWSEquatable<TargetCapacitySpecification>
    implements
        Built<TargetCapacitySpecification, TargetCapacitySpecificationBuilder> {
  /// The number of units to request. You can choose to set the target capacity in terms of instances or a performance characteristic that is important to your application workload, such as vCPUs, memory, or I/O. If the request type is `maintain`, you can specify a target capacity of 0 and add capacity later.
  ///
  /// You can use the On-Demand Instance `MaxTotalPrice` parameter, the Spot Instance `MaxTotalPrice`, or both to ensure that your fleet cost does not exceed your budget. If you set a maximum price per hour for the On-Demand Instances and Spot Instances in your request, EC2 Fleet will launch instances until it reaches the maximum amount that you're willing to pay. When the maximum amount you're willing to pay is reached, the fleet stops launching instances even if it hasn’t met the target capacity. The `MaxTotalPrice` parameters are located in [OnDemandOptions](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_OnDemandOptions.html) and [SpotOptions](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_SpotOptions).
  factory TargetCapacitySpecification({
    int? totalTargetCapacity,
    int? onDemandTargetCapacity,
    int? spotTargetCapacity,
    _i2.DefaultTargetCapacityType? defaultTargetCapacityType,
    _i3.TargetCapacityUnitType? targetCapacityUnitType,
  }) {
    totalTargetCapacity ??= 0;
    onDemandTargetCapacity ??= 0;
    spotTargetCapacity ??= 0;
    return _$TargetCapacitySpecification._(
      totalTargetCapacity: totalTargetCapacity,
      onDemandTargetCapacity: onDemandTargetCapacity,
      spotTargetCapacity: spotTargetCapacity,
      defaultTargetCapacityType: defaultTargetCapacityType,
      targetCapacityUnitType: targetCapacityUnitType,
    );
  }

  /// The number of units to request. You can choose to set the target capacity in terms of instances or a performance characteristic that is important to your application workload, such as vCPUs, memory, or I/O. If the request type is `maintain`, you can specify a target capacity of 0 and add capacity later.
  ///
  /// You can use the On-Demand Instance `MaxTotalPrice` parameter, the Spot Instance `MaxTotalPrice`, or both to ensure that your fleet cost does not exceed your budget. If you set a maximum price per hour for the On-Demand Instances and Spot Instances in your request, EC2 Fleet will launch instances until it reaches the maximum amount that you're willing to pay. When the maximum amount you're willing to pay is reached, the fleet stops launching instances even if it hasn’t met the target capacity. The `MaxTotalPrice` parameters are located in [OnDemandOptions](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_OnDemandOptions.html) and [SpotOptions](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_SpotOptions).
  factory TargetCapacitySpecification.build(
          [void Function(TargetCapacitySpecificationBuilder) updates]) =
      _$TargetCapacitySpecification;

  const TargetCapacitySpecification._();

  static const List<_i4.SmithySerializer> serializers = [
    TargetCapacitySpecificationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TargetCapacitySpecificationBuilder b) {
    b.totalTargetCapacity = 0;
    b.onDemandTargetCapacity = 0;
    b.spotTargetCapacity = 0;
  }

  /// The number of units to request, filled using `DefaultTargetCapacityType`.
  int get totalTargetCapacity;

  /// The number of On-Demand units to request. If you specify a target capacity for Spot units, you cannot specify a target capacity for On-Demand units.
  int get onDemandTargetCapacity;

  /// The maximum number of Spot units to launch. If you specify a target capacity for On-Demand units, you cannot specify a target capacity for Spot units.
  int get spotTargetCapacity;

  /// The default `TotalTargetCapacity`, which is either `Spot` or `On-Demand`.
  _i2.DefaultTargetCapacityType? get defaultTargetCapacityType;

  /// The unit for the target capacity.
  ///
  /// Default: `units` (translates to number of instances)
  _i3.TargetCapacityUnitType? get targetCapacityUnitType;
  @override
  List<Object?> get props => [
        totalTargetCapacity,
        onDemandTargetCapacity,
        spotTargetCapacity,
        defaultTargetCapacityType,
        targetCapacityUnitType,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TargetCapacitySpecification');
    helper.add(
      'totalTargetCapacity',
      totalTargetCapacity,
    );
    helper.add(
      'onDemandTargetCapacity',
      onDemandTargetCapacity,
    );
    helper.add(
      'spotTargetCapacity',
      spotTargetCapacity,
    );
    helper.add(
      'defaultTargetCapacityType',
      defaultTargetCapacityType,
    );
    helper.add(
      'targetCapacityUnitType',
      targetCapacityUnitType,
    );
    return helper.toString();
  }
}

class TargetCapacitySpecificationEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<TargetCapacitySpecification> {
  const TargetCapacitySpecificationEc2QuerySerializer()
      : super('TargetCapacitySpecification');

  @override
  Iterable<Type> get types => const [
        TargetCapacitySpecification,
        _$TargetCapacitySpecification,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TargetCapacitySpecification deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TargetCapacitySpecificationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'totalTargetCapacity':
          result.totalTargetCapacity = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'onDemandTargetCapacity':
          result.onDemandTargetCapacity = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'spotTargetCapacity':
          result.spotTargetCapacity = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'defaultTargetCapacityType':
          if (value != null) {
            result.defaultTargetCapacityType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.DefaultTargetCapacityType),
            ) as _i2.DefaultTargetCapacityType);
          }
          break;
        case 'targetCapacityUnitType':
          if (value != null) {
            result.targetCapacityUnitType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.TargetCapacityUnitType),
            ) as _i3.TargetCapacityUnitType);
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
    final payload = (object as TargetCapacitySpecification);
    final result = <Object?>[
      const _i4.XmlElementName(
        'TargetCapacitySpecificationResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i4.XmlElementName('TotalTargetCapacity'))
      ..add(serializers.serialize(
        payload.totalTargetCapacity,
        specifiedType: const FullType(int),
      ));
    result
      ..add(const _i4.XmlElementName('OnDemandTargetCapacity'))
      ..add(serializers.serialize(
        payload.onDemandTargetCapacity,
        specifiedType: const FullType(int),
      ));
    result
      ..add(const _i4.XmlElementName('SpotTargetCapacity'))
      ..add(serializers.serialize(
        payload.spotTargetCapacity,
        specifiedType: const FullType(int),
      ));
    if (payload.defaultTargetCapacityType != null) {
      result
        ..add(const _i4.XmlElementName('DefaultTargetCapacityType'))
        ..add(serializers.serialize(
          payload.defaultTargetCapacityType!,
          specifiedType: const FullType.nullable(_i2.DefaultTargetCapacityType),
        ));
    }
    if (payload.targetCapacityUnitType != null) {
      result
        ..add(const _i4.XmlElementName('TargetCapacityUnitType'))
        ..add(serializers.serialize(
          payload.targetCapacityUnitType!,
          specifiedType: const FullType.nullable(_i3.TargetCapacityUnitType),
        ));
    }
    return result;
  }
}
