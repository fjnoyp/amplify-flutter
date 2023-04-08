// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.launch_template_placement; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tenancy.dart' as _i2;

part 'launch_template_placement.g.dart';

/// Describes the placement of an instance.
abstract class LaunchTemplatePlacement
    with _i1.AWSEquatable<LaunchTemplatePlacement>
    implements Built<LaunchTemplatePlacement, LaunchTemplatePlacementBuilder> {
  /// Describes the placement of an instance.
  factory LaunchTemplatePlacement({
    String? availabilityZone,
    String? affinity,
    String? groupName,
    String? hostId,
    _i2.Tenancy? tenancy,
    String? spreadDomain,
    String? hostResourceGroupArn,
    int? partitionNumber,
  }) {
    partitionNumber ??= 0;
    return _$LaunchTemplatePlacement._(
      availabilityZone: availabilityZone,
      affinity: affinity,
      groupName: groupName,
      hostId: hostId,
      tenancy: tenancy,
      spreadDomain: spreadDomain,
      hostResourceGroupArn: hostResourceGroupArn,
      partitionNumber: partitionNumber,
    );
  }

  /// Describes the placement of an instance.
  factory LaunchTemplatePlacement.build(
          [void Function(LaunchTemplatePlacementBuilder) updates]) =
      _$LaunchTemplatePlacement;

  const LaunchTemplatePlacement._();

  static const List<_i3.SmithySerializer> serializers = [
    LaunchTemplatePlacementEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LaunchTemplatePlacementBuilder b) {
    b.partitionNumber = 0;
  }

  /// The Availability Zone of the instance.
  String? get availabilityZone;

  /// The affinity setting for the instance on the Dedicated Host.
  String? get affinity;

  /// The name of the placement group for the instance.
  String? get groupName;

  /// The ID of the Dedicated Host for the instance.
  String? get hostId;

  /// The tenancy of the instance (if the instance is running in a VPC). An instance with a tenancy of `dedicated` runs on single-tenant hardware.
  _i2.Tenancy? get tenancy;

  /// Reserved for future use.
  String? get spreadDomain;

  /// The ARN of the host resource group in which to launch the instances.
  String? get hostResourceGroupArn;

  /// The number of the partition the instance should launch in. Valid only if the placement group strategy is set to `partition`.
  int get partitionNumber;
  @override
  List<Object?> get props => [
        availabilityZone,
        affinity,
        groupName,
        hostId,
        tenancy,
        spreadDomain,
        hostResourceGroupArn,
        partitionNumber,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('LaunchTemplatePlacement');
    helper.add(
      'availabilityZone',
      availabilityZone,
    );
    helper.add(
      'affinity',
      affinity,
    );
    helper.add(
      'groupName',
      groupName,
    );
    helper.add(
      'hostId',
      hostId,
    );
    helper.add(
      'tenancy',
      tenancy,
    );
    helper.add(
      'spreadDomain',
      spreadDomain,
    );
    helper.add(
      'hostResourceGroupArn',
      hostResourceGroupArn,
    );
    helper.add(
      'partitionNumber',
      partitionNumber,
    );
    return helper.toString();
  }
}

class LaunchTemplatePlacementEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<LaunchTemplatePlacement> {
  const LaunchTemplatePlacementEc2QuerySerializer()
      : super('LaunchTemplatePlacement');

  @override
  Iterable<Type> get types => const [
        LaunchTemplatePlacement,
        _$LaunchTemplatePlacement,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplatePlacement deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchTemplatePlacementBuilder();
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
        case 'affinity':
          if (value != null) {
            result.affinity = (serializers.deserialize(
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
        case 'hostId':
          if (value != null) {
            result.hostId = (serializers.deserialize(
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
        case 'spreadDomain':
          if (value != null) {
            result.spreadDomain = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'hostResourceGroupArn':
          if (value != null) {
            result.hostResourceGroupArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'partitionNumber':
          result.partitionNumber = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
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
    final payload = (object as LaunchTemplatePlacement);
    final result = <Object?>[
      const _i3.XmlElementName(
        'LaunchTemplatePlacementResponse',
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
    if (payload.affinity != null) {
      result
        ..add(const _i3.XmlElementName('Affinity'))
        ..add(serializers.serialize(
          payload.affinity!,
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
    if (payload.hostId != null) {
      result
        ..add(const _i3.XmlElementName('HostId'))
        ..add(serializers.serialize(
          payload.hostId!,
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
    if (payload.spreadDomain != null) {
      result
        ..add(const _i3.XmlElementName('SpreadDomain'))
        ..add(serializers.serialize(
          payload.spreadDomain!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.hostResourceGroupArn != null) {
      result
        ..add(const _i3.XmlElementName('HostResourceGroupArn'))
        ..add(serializers.serialize(
          payload.hostResourceGroupArn!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i3.XmlElementName('PartitionNumber'))
      ..add(serializers.serialize(
        payload.partitionNumber,
        specifiedType: const FullType(int),
      ));
    return result;
  }
}
