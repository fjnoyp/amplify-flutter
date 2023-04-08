// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.launch_template_capacity_reservation_specification_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_preference.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_target_response.dart'
    as _i3;

part 'launch_template_capacity_reservation_specification_response.g.dart';

/// Information about the Capacity Reservation targeting option.
abstract class LaunchTemplateCapacityReservationSpecificationResponse
    with
        _i1.AWSEquatable<LaunchTemplateCapacityReservationSpecificationResponse>
    implements
        Built<LaunchTemplateCapacityReservationSpecificationResponse,
            LaunchTemplateCapacityReservationSpecificationResponseBuilder> {
  /// Information about the Capacity Reservation targeting option.
  factory LaunchTemplateCapacityReservationSpecificationResponse({
    _i2.CapacityReservationPreference? capacityReservationPreference,
    _i3.CapacityReservationTargetResponse? capacityReservationTarget,
  }) {
    return _$LaunchTemplateCapacityReservationSpecificationResponse._(
      capacityReservationPreference: capacityReservationPreference,
      capacityReservationTarget: capacityReservationTarget,
    );
  }

  /// Information about the Capacity Reservation targeting option.
  factory LaunchTemplateCapacityReservationSpecificationResponse.build(
      [void Function(
              LaunchTemplateCapacityReservationSpecificationResponseBuilder)
          updates]) = _$LaunchTemplateCapacityReservationSpecificationResponse;

  const LaunchTemplateCapacityReservationSpecificationResponse._();

  static const List<_i4.SmithySerializer> serializers = [
    LaunchTemplateCapacityReservationSpecificationResponseEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      LaunchTemplateCapacityReservationSpecificationResponseBuilder b) {}

  /// Indicates the instance's Capacity Reservation preferences. Possible preferences include:
  ///
  /// *   `open` \- The instance can run in any `open` Capacity Reservation that has matching attributes (instance type, platform, Availability Zone).
  ///
  /// *   `none` \- The instance avoids running in a Capacity Reservation even if one is available. The instance runs in On-Demand capacity.
  _i2.CapacityReservationPreference? get capacityReservationPreference;

  /// Information about the target Capacity Reservation or Capacity Reservation group.
  _i3.CapacityReservationTargetResponse? get capacityReservationTarget;
  @override
  List<Object?> get props => [
        capacityReservationPreference,
        capacityReservationTarget,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'LaunchTemplateCapacityReservationSpecificationResponse');
    helper.add(
      'capacityReservationPreference',
      capacityReservationPreference,
    );
    helper.add(
      'capacityReservationTarget',
      capacityReservationTarget,
    );
    return helper.toString();
  }
}

class LaunchTemplateCapacityReservationSpecificationResponseEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<
        LaunchTemplateCapacityReservationSpecificationResponse> {
  const LaunchTemplateCapacityReservationSpecificationResponseEc2QuerySerializer()
      : super('LaunchTemplateCapacityReservationSpecificationResponse');

  @override
  Iterable<Type> get types => const [
        LaunchTemplateCapacityReservationSpecificationResponse,
        _$LaunchTemplateCapacityReservationSpecificationResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplateCapacityReservationSpecificationResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        LaunchTemplateCapacityReservationSpecificationResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'capacityReservationPreference':
          if (value != null) {
            result.capacityReservationPreference = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.CapacityReservationPreference),
            ) as _i2.CapacityReservationPreference);
          }
          break;
        case 'capacityReservationTarget':
          if (value != null) {
            result.capacityReservationTarget.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i3.CapacityReservationTargetResponse),
            ) as _i3.CapacityReservationTargetResponse));
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
        (object as LaunchTemplateCapacityReservationSpecificationResponse);
    final result = <Object?>[
      const _i4.XmlElementName(
        'LaunchTemplateCapacityReservationSpecificationResponseResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.capacityReservationPreference != null) {
      result
        ..add(const _i4.XmlElementName('CapacityReservationPreference'))
        ..add(serializers.serialize(
          payload.capacityReservationPreference!,
          specifiedType:
              const FullType.nullable(_i2.CapacityReservationPreference),
        ));
    }
    if (payload.capacityReservationTarget != null) {
      result
        ..add(const _i4.XmlElementName('CapacityReservationTarget'))
        ..add(serializers.serialize(
          payload.capacityReservationTarget!,
          specifiedType: const FullType(_i3.CapacityReservationTargetResponse),
        ));
    }
    return result;
  }
}
