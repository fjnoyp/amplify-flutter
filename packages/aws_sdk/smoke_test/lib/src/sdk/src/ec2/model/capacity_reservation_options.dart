// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.capacity_reservation_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_capacity_reservation_usage_strategy.dart'
    as _i2;

part 'capacity_reservation_options.g.dart';

/// Describes the strategy for using unused Capacity Reservations for fulfilling On-Demand capacity.
///
/// This strategy can only be used if the EC2 Fleet is of type `instant`.
///
/// For more information about Capacity Reservations, see [On-Demand Capacity Reservations](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-capacity-reservations.html) in the _Amazon EC2 User Guide_. For examples of using Capacity Reservations in an EC2 Fleet, see [EC2 Fleet example configurations](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet-examples.html) in the _Amazon EC2 User Guide_.
abstract class CapacityReservationOptions
    with _i1.AWSEquatable<CapacityReservationOptions>
    implements
        Built<CapacityReservationOptions, CapacityReservationOptionsBuilder> {
  /// Describes the strategy for using unused Capacity Reservations for fulfilling On-Demand capacity.
  ///
  /// This strategy can only be used if the EC2 Fleet is of type `instant`.
  ///
  /// For more information about Capacity Reservations, see [On-Demand Capacity Reservations](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-capacity-reservations.html) in the _Amazon EC2 User Guide_. For examples of using Capacity Reservations in an EC2 Fleet, see [EC2 Fleet example configurations](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet-examples.html) in the _Amazon EC2 User Guide_.
  factory CapacityReservationOptions(
      {_i2.FleetCapacityReservationUsageStrategy? usageStrategy}) {
    return _$CapacityReservationOptions._(usageStrategy: usageStrategy);
  }

  /// Describes the strategy for using unused Capacity Reservations for fulfilling On-Demand capacity.
  ///
  /// This strategy can only be used if the EC2 Fleet is of type `instant`.
  ///
  /// For more information about Capacity Reservations, see [On-Demand Capacity Reservations](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-capacity-reservations.html) in the _Amazon EC2 User Guide_. For examples of using Capacity Reservations in an EC2 Fleet, see [EC2 Fleet example configurations](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet-examples.html) in the _Amazon EC2 User Guide_.
  factory CapacityReservationOptions.build(
          [void Function(CapacityReservationOptionsBuilder) updates]) =
      _$CapacityReservationOptions;

  const CapacityReservationOptions._();

  static const List<_i3.SmithySerializer> serializers = [
    CapacityReservationOptionsEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CapacityReservationOptionsBuilder b) {}

  /// Indicates whether to use unused Capacity Reservations for fulfilling On-Demand capacity.
  ///
  /// If you specify `use-capacity-reservations-first`, the fleet uses unused Capacity Reservations to fulfill On-Demand capacity up to the target On-Demand capacity. If multiple instance pools have unused Capacity Reservations, the On-Demand allocation strategy (`lowest-price` or `prioritized`) is applied. If the number of unused Capacity Reservations is less than the On-Demand target capacity, the remaining On-Demand target capacity is launched according to the On-Demand allocation strategy (`lowest-price` or `prioritized`).
  ///
  /// If you do not specify a value, the fleet fulfils the On-Demand capacity according to the chosen On-Demand allocation strategy.
  _i2.FleetCapacityReservationUsageStrategy? get usageStrategy;
  @override
  List<Object?> get props => [usageStrategy];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CapacityReservationOptions');
    helper.add(
      'usageStrategy',
      usageStrategy,
    );
    return helper.toString();
  }
}

class CapacityReservationOptionsEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<CapacityReservationOptions> {
  const CapacityReservationOptionsEc2QuerySerializer()
      : super('CapacityReservationOptions');

  @override
  Iterable<Type> get types => const [
        CapacityReservationOptions,
        _$CapacityReservationOptions,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CapacityReservationOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CapacityReservationOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'usageStrategy':
          if (value != null) {
            result.usageStrategy = (serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i2.FleetCapacityReservationUsageStrategy),
            ) as _i2.FleetCapacityReservationUsageStrategy);
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
    final payload = (object as CapacityReservationOptions);
    final result = <Object?>[
      const _i3.XmlElementName(
        'CapacityReservationOptionsResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.usageStrategy != null) {
      result
        ..add(const _i3.XmlElementName('UsageStrategy'))
        ..add(serializers.serialize(
          payload.usageStrategy!,
          specifiedType: const FullType.nullable(
              _i2.FleetCapacityReservationUsageStrategy),
        ));
    }
    return result;
  }
}
