// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.scheduled_instances_placement; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'scheduled_instances_placement.g.dart';

/// Describes the placement for a Scheduled Instance.
abstract class ScheduledInstancesPlacement
    with _i1.AWSEquatable<ScheduledInstancesPlacement>
    implements
        Built<ScheduledInstancesPlacement, ScheduledInstancesPlacementBuilder> {
  /// Describes the placement for a Scheduled Instance.
  factory ScheduledInstancesPlacement({
    String? availabilityZone,
    String? groupName,
  }) {
    return _$ScheduledInstancesPlacement._(
      availabilityZone: availabilityZone,
      groupName: groupName,
    );
  }

  /// Describes the placement for a Scheduled Instance.
  factory ScheduledInstancesPlacement.build(
          [void Function(ScheduledInstancesPlacementBuilder) updates]) =
      _$ScheduledInstancesPlacement;

  const ScheduledInstancesPlacement._();

  static const List<_i2.SmithySerializer> serializers = [
    ScheduledInstancesPlacementEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ScheduledInstancesPlacementBuilder b) {}

  /// The Availability Zone.
  String? get availabilityZone;

  /// The name of the placement group.
  String? get groupName;
  @override
  List<Object?> get props => [
        availabilityZone,
        groupName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ScheduledInstancesPlacement');
    helper.add(
      'availabilityZone',
      availabilityZone,
    );
    helper.add(
      'groupName',
      groupName,
    );
    return helper.toString();
  }
}

class ScheduledInstancesPlacementEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ScheduledInstancesPlacement> {
  const ScheduledInstancesPlacementEc2QuerySerializer()
      : super('ScheduledInstancesPlacement');

  @override
  Iterable<Type> get types => const [
        ScheduledInstancesPlacement,
        _$ScheduledInstancesPlacement,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ScheduledInstancesPlacement deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ScheduledInstancesPlacementBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'AvailabilityZone':
          if (value != null) {
            result.availabilityZone = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'GroupName':
          if (value != null) {
            result.groupName = (serializers.deserialize(
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
    final payload = (object as ScheduledInstancesPlacement);
    final result = <Object?>[
      const _i2.XmlElementName(
        'ScheduledInstancesPlacementResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.availabilityZone != null) {
      result
        ..add(const _i2.XmlElementName('AvailabilityZone'))
        ..add(serializers.serialize(
          payload.availabilityZone!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.groupName != null) {
      result
        ..add(const _i2.XmlElementName('GroupName'))
        ..add(serializers.serialize(
          payload.groupName!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
