// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.spot_placement; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tenancy.dart' as _i2;

part 'spot_placement.g.dart';

/// Describes Spot Instance placement.
abstract class SpotPlacement
    with _i1.AWSEquatable<SpotPlacement>
    implements Built<SpotPlacement, SpotPlacementBuilder> {
  /// Describes Spot Instance placement.
  factory SpotPlacement({
    String? availabilityZone,
    String? groupName,
    _i2.Tenancy? tenancy,
  }) {
    return _$SpotPlacement._(
      availabilityZone: availabilityZone,
      groupName: groupName,
      tenancy: tenancy,
    );
  }

  /// Describes Spot Instance placement.
  factory SpotPlacement.build([void Function(SpotPlacementBuilder) updates]) =
      _$SpotPlacement;

  const SpotPlacement._();

  static const List<_i3.SmithySerializer> serializers = [
    SpotPlacementEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SpotPlacementBuilder b) {}

  /// The Availability Zone.
  ///
  /// \[Spot Fleet only\] To specify multiple Availability Zones, separate them using commas; for example, "us-west-2a, us-west-2b".
  String? get availabilityZone;

  /// The name of the placement group.
  String? get groupName;

  /// The tenancy of the instance (if the instance is running in a VPC). An instance with a tenancy of `dedicated` runs on single-tenant hardware. The `host` tenancy is not supported for Spot Instances.
  _i2.Tenancy? get tenancy;
  @override
  List<Object?> get props => [
        availabilityZone,
        groupName,
        tenancy,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SpotPlacement');
    helper.add(
      'availabilityZone',
      availabilityZone,
    );
    helper.add(
      'groupName',
      groupName,
    );
    helper.add(
      'tenancy',
      tenancy,
    );
    return helper.toString();
  }
}

class SpotPlacementEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<SpotPlacement> {
  const SpotPlacementEc2QuerySerializer() : super('SpotPlacement');

  @override
  Iterable<Type> get types => const [
        SpotPlacement,
        _$SpotPlacement,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SpotPlacement deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SpotPlacementBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'availabilityZone':
          if (value != null) {
            result.availabilityZone = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'groupName':
          if (value != null) {
            result.groupName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'tenancy':
          if (value != null) {
            result.tenancy = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.Tenancy),
            ) as _i2.Tenancy);
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
    final payload = (object as SpotPlacement);
    final result = <Object?>[
      const _i3.XmlElementName(
        'SpotPlacementResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.availabilityZone != null) {
      result
        ..add(const _i3.XmlElementName('AvailabilityZone'))
        ..add(serializers.serialize(
          payload.availabilityZone!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.groupName != null) {
      result
        ..add(const _i3.XmlElementName('GroupName'))
        ..add(serializers.serialize(
          payload.groupName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.tenancy != null) {
      result
        ..add(const _i3.XmlElementName('Tenancy'))
        ..add(serializers.serialize(
          payload.tenancy!,
          specifiedType: const FullType.nullable(_i2.Tenancy),
        ));
    }
    return result;
  }
}
