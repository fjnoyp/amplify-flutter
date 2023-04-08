// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.active_instance; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_health_status.dart'
    as _i2;

part 'active_instance.g.dart';

/// Describes a running instance in a Spot Fleet.
abstract class ActiveInstance
    with _i1.AWSEquatable<ActiveInstance>
    implements Built<ActiveInstance, ActiveInstanceBuilder> {
  /// Describes a running instance in a Spot Fleet.
  factory ActiveInstance({
    String? instanceId,
    String? instanceType,
    String? spotInstanceRequestId,
    _i2.InstanceHealthStatus? instanceHealth,
  }) {
    return _$ActiveInstance._(
      instanceId: instanceId,
      instanceType: instanceType,
      spotInstanceRequestId: spotInstanceRequestId,
      instanceHealth: instanceHealth,
    );
  }

  /// Describes a running instance in a Spot Fleet.
  factory ActiveInstance.build([void Function(ActiveInstanceBuilder) updates]) =
      _$ActiveInstance;

  const ActiveInstance._();

  static const List<_i3.SmithySerializer> serializers = [
    ActiveInstanceEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ActiveInstanceBuilder b) {}

  /// The ID of the instance.
  String? get instanceId;

  /// The instance type.
  String? get instanceType;

  /// The ID of the Spot Instance request.
  String? get spotInstanceRequestId;

  /// The health status of the instance. If the status of either the instance status check or the system status check is `impaired`, the health status of the instance is `unhealthy`. Otherwise, the health status is `healthy`.
  _i2.InstanceHealthStatus? get instanceHealth;
  @override
  List<Object?> get props => [
        instanceId,
        instanceType,
        spotInstanceRequestId,
        instanceHealth,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ActiveInstance');
    helper.add(
      'instanceId',
      instanceId,
    );
    helper.add(
      'instanceType',
      instanceType,
    );
    helper.add(
      'spotInstanceRequestId',
      spotInstanceRequestId,
    );
    helper.add(
      'instanceHealth',
      instanceHealth,
    );
    return helper.toString();
  }
}

class ActiveInstanceEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ActiveInstance> {
  const ActiveInstanceEc2QuerySerializer() : super('ActiveInstance');

  @override
  Iterable<Type> get types => const [
        ActiveInstance,
        _$ActiveInstance,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ActiveInstance deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ActiveInstanceBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'instanceId':
          if (value != null) {
            result.instanceId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'instanceType':
          if (value != null) {
            result.instanceType = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'spotInstanceRequestId':
          if (value != null) {
            result.spotInstanceRequestId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'instanceHealth':
          if (value != null) {
            result.instanceHealth = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.InstanceHealthStatus),
            ) as _i2.InstanceHealthStatus);
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
    final payload = (object as ActiveInstance);
    final result = <Object?>[
      const _i3.XmlElementName(
        'ActiveInstanceResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.instanceId != null) {
      result
        ..add(const _i3.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          payload.instanceId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.instanceType != null) {
      result
        ..add(const _i3.XmlElementName('InstanceType'))
        ..add(serializers.serialize(
          payload.instanceType!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.spotInstanceRequestId != null) {
      result
        ..add(const _i3.XmlElementName('SpotInstanceRequestId'))
        ..add(serializers.serialize(
          payload.spotInstanceRequestId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.instanceHealth != null) {
      result
        ..add(const _i3.XmlElementName('InstanceHealth'))
        ..add(serializers.serialize(
          payload.instanceHealth!,
          specifiedType: const FullType.nullable(_i2.InstanceHealthStatus),
        ));
    }
    return result;
  }
}
