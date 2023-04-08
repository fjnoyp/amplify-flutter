// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.launch_template_capacity_reservation_specification_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_preference.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_target.dart'
    as _i3;

part 'launch_template_capacity_reservation_specification_request.g.dart';

/// Describes an instance's Capacity Reservation targeting option. You can specify only one option at a time. Use the `CapacityReservationPreference` parameter to configure the instance to run in On-Demand capacity or to run in any `open` Capacity Reservation that has matching attributes (instance type, platform, Availability Zone). Use the `CapacityReservationTarget` parameter to explicitly target a specific Capacity Reservation or a Capacity Reservation group.
abstract class LaunchTemplateCapacityReservationSpecificationRequest
    with
        _i1.AWSEquatable<LaunchTemplateCapacityReservationSpecificationRequest>
    implements
        Built<LaunchTemplateCapacityReservationSpecificationRequest,
            LaunchTemplateCapacityReservationSpecificationRequestBuilder> {
  /// Describes an instance's Capacity Reservation targeting option. You can specify only one option at a time. Use the `CapacityReservationPreference` parameter to configure the instance to run in On-Demand capacity or to run in any `open` Capacity Reservation that has matching attributes (instance type, platform, Availability Zone). Use the `CapacityReservationTarget` parameter to explicitly target a specific Capacity Reservation or a Capacity Reservation group.
  factory LaunchTemplateCapacityReservationSpecificationRequest({
    _i2.CapacityReservationPreference? capacityReservationPreference,
    _i3.CapacityReservationTarget? capacityReservationTarget,
  }) {
    return _$LaunchTemplateCapacityReservationSpecificationRequest._(
      capacityReservationPreference: capacityReservationPreference,
      capacityReservationTarget: capacityReservationTarget,
    );
  }

  /// Describes an instance's Capacity Reservation targeting option. You can specify only one option at a time. Use the `CapacityReservationPreference` parameter to configure the instance to run in On-Demand capacity or to run in any `open` Capacity Reservation that has matching attributes (instance type, platform, Availability Zone). Use the `CapacityReservationTarget` parameter to explicitly target a specific Capacity Reservation or a Capacity Reservation group.
  factory LaunchTemplateCapacityReservationSpecificationRequest.build(
      [void Function(
              LaunchTemplateCapacityReservationSpecificationRequestBuilder)
          updates]) = _$LaunchTemplateCapacityReservationSpecificationRequest;

  const LaunchTemplateCapacityReservationSpecificationRequest._();

  static const List<_i4.SmithySerializer> serializers = [
    LaunchTemplateCapacityReservationSpecificationRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      LaunchTemplateCapacityReservationSpecificationRequestBuilder b) {}

  /// Indicates the instance's Capacity Reservation preferences. Possible preferences include:
  ///
  /// *   `open` \- The instance can run in any `open` Capacity Reservation that has matching attributes (instance type, platform, Availability Zone).
  ///
  /// *   `none` \- The instance avoids running in a Capacity Reservation even if one is available. The instance runs in On-Demand capacity.
  _i2.CapacityReservationPreference? get capacityReservationPreference;

  /// Information about the target Capacity Reservation or Capacity Reservation group.
  _i3.CapacityReservationTarget? get capacityReservationTarget;
  @override
  List<Object?> get props => [
        capacityReservationPreference,
        capacityReservationTarget,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'LaunchTemplateCapacityReservationSpecificationRequest');
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

class LaunchTemplateCapacityReservationSpecificationRequestEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<
        LaunchTemplateCapacityReservationSpecificationRequest> {
  const LaunchTemplateCapacityReservationSpecificationRequestEc2QuerySerializer()
      : super('LaunchTemplateCapacityReservationSpecificationRequest');

  @override
  Iterable<Type> get types => const [
        LaunchTemplateCapacityReservationSpecificationRequest,
        _$LaunchTemplateCapacityReservationSpecificationRequest,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplateCapacityReservationSpecificationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        LaunchTemplateCapacityReservationSpecificationRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'CapacityReservationPreference':
          if (value != null) {
            result.capacityReservationPreference = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.CapacityReservationPreference),
            ) as _i2.CapacityReservationPreference);
          }
          break;
        case 'CapacityReservationTarget':
          if (value != null) {
            result.capacityReservationTarget.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.CapacityReservationTarget),
            ) as _i3.CapacityReservationTarget));
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
        (object as LaunchTemplateCapacityReservationSpecificationRequest);
    final result = <Object?>[
      const _i4.XmlElementName(
        'LaunchTemplateCapacityReservationSpecificationRequestResponse',
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
          specifiedType: const FullType(_i3.CapacityReservationTarget),
        ));
    }
    return result;
  }
}
