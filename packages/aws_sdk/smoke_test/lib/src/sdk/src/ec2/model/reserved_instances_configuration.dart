// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.reserved_instances_configuration; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/scope.dart' as _i3;

part 'reserved_instances_configuration.g.dart';

/// Describes the configuration settings for the modified Reserved Instances.
abstract class ReservedInstancesConfiguration
    with
        _i1.AWSEquatable<ReservedInstancesConfiguration>
    implements
        Built<ReservedInstancesConfiguration,
            ReservedInstancesConfigurationBuilder> {
  /// Describes the configuration settings for the modified Reserved Instances.
  factory ReservedInstancesConfiguration({
    String? availabilityZone,
    int? instanceCount,
    _i2.InstanceType? instanceType,
    String? platform,
    _i3.Scope? scope,
  }) {
    instanceCount ??= 0;
    return _$ReservedInstancesConfiguration._(
      availabilityZone: availabilityZone,
      instanceCount: instanceCount,
      instanceType: instanceType,
      platform: platform,
      scope: scope,
    );
  }

  /// Describes the configuration settings for the modified Reserved Instances.
  factory ReservedInstancesConfiguration.build(
          [void Function(ReservedInstancesConfigurationBuilder) updates]) =
      _$ReservedInstancesConfiguration;

  const ReservedInstancesConfiguration._();

  static const List<_i4.SmithySerializer> serializers = [
    ReservedInstancesConfigurationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ReservedInstancesConfigurationBuilder b) {
    b.instanceCount = 0;
  }

  /// The Availability Zone for the modified Reserved Instances.
  String? get availabilityZone;

  /// The number of modified Reserved Instances.
  ///
  /// This is a required field for a request.
  int get instanceCount;

  /// The instance type for the modified Reserved Instances.
  _i2.InstanceType? get instanceType;

  /// The network platform of the modified Reserved Instances, which is either EC2-Classic or EC2-VPC.
  String? get platform;

  /// Whether the Reserved Instance is applied to instances in a Region or instances in a specific Availability Zone.
  _i3.Scope? get scope;
  @override
  List<Object?> get props => [
        availabilityZone,
        instanceCount,
        instanceType,
        platform,
        scope,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ReservedInstancesConfiguration');
    helper.add(
      'availabilityZone',
      availabilityZone,
    );
    helper.add(
      'instanceCount',
      instanceCount,
    );
    helper.add(
      'instanceType',
      instanceType,
    );
    helper.add(
      'platform',
      platform,
    );
    helper.add(
      'scope',
      scope,
    );
    return helper.toString();
  }
}

class ReservedInstancesConfigurationEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<ReservedInstancesConfiguration> {
  const ReservedInstancesConfigurationEc2QuerySerializer()
      : super('ReservedInstancesConfiguration');

  @override
  Iterable<Type> get types => const [
        ReservedInstancesConfiguration,
        _$ReservedInstancesConfiguration,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ReservedInstancesConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReservedInstancesConfigurationBuilder();
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
        case 'instanceCount':
          result.instanceCount = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'instanceType':
          if (value != null) {
            result.instanceType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.InstanceType),
            ) as _i2.InstanceType);
          }
          break;
        case 'platform':
          if (value != null) {
            result.platform = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'scope':
          if (value != null) {
            result.scope = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.Scope),
            ) as _i3.Scope);
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
    final payload = (object as ReservedInstancesConfiguration);
    final result = <Object?>[
      const _i4.XmlElementName(
        'ReservedInstancesConfigurationResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.availabilityZone != null) {
      result
        ..add(const _i4.XmlElementName('AvailabilityZone'))
        ..add(serializers.serialize(
          payload.availabilityZone!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i4.XmlElementName('InstanceCount'))
      ..add(serializers.serialize(
        payload.instanceCount,
        specifiedType: const FullType(int),
      ));
    if (payload.instanceType != null) {
      result
        ..add(const _i4.XmlElementName('InstanceType'))
        ..add(serializers.serialize(
          payload.instanceType!,
          specifiedType: const FullType.nullable(_i2.InstanceType),
        ));
    }
    if (payload.platform != null) {
      result
        ..add(const _i4.XmlElementName('Platform'))
        ..add(serializers.serialize(
          payload.platform!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.scope != null) {
      result
        ..add(const _i4.XmlElementName('Scope'))
        ..add(serializers.serialize(
          payload.scope!,
          specifiedType: const FullType.nullable(_i3.Scope),
        ));
    }
    return result;
  }
}
