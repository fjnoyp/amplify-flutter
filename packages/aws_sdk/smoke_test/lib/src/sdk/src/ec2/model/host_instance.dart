// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.host_instance; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'host_instance.g.dart';

/// Describes an instance running on a Dedicated Host.
abstract class HostInstance
    with _i1.AWSEquatable<HostInstance>
    implements Built<HostInstance, HostInstanceBuilder> {
  /// Describes an instance running on a Dedicated Host.
  factory HostInstance({
    String? instanceId,
    String? instanceType,
    String? ownerId,
  }) {
    return _$HostInstance._(
      instanceId: instanceId,
      instanceType: instanceType,
      ownerId: ownerId,
    );
  }

  /// Describes an instance running on a Dedicated Host.
  factory HostInstance.build([void Function(HostInstanceBuilder) updates]) =
      _$HostInstance;

  const HostInstance._();

  static const List<_i2.SmithySerializer> serializers = [
    HostInstanceEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HostInstanceBuilder b) {}

  /// The ID of instance that is running on the Dedicated Host.
  String? get instanceId;

  /// The instance type (for example, `m3.medium`) of the running instance.
  String? get instanceType;

  /// The ID of the Amazon Web Services account that owns the instance.
  String? get ownerId;
  @override
  List<Object?> get props => [
        instanceId,
        instanceType,
        ownerId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('HostInstance');
    helper.add(
      'instanceId',
      instanceId,
    );
    helper.add(
      'instanceType',
      instanceType,
    );
    helper.add(
      'ownerId',
      ownerId,
    );
    return helper.toString();
  }
}

class HostInstanceEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<HostInstance> {
  const HostInstanceEc2QuerySerializer() : super('HostInstance');

  @override
  Iterable<Type> get types => const [
        HostInstance,
        _$HostInstance,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  HostInstance deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HostInstanceBuilder();
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
        case 'ownerId':
          if (value != null) {
            result.ownerId = (serializers.deserialize(
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
    final payload = (object as HostInstance);
    final result = <Object?>[
      const _i2.XmlElementName(
        'HostInstanceResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.instanceId != null) {
      result
        ..add(const _i2.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          payload.instanceId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.instanceType != null) {
      result
        ..add(const _i2.XmlElementName('InstanceType'))
        ..add(serializers.serialize(
          payload.instanceType!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.ownerId != null) {
      result
        ..add(const _i2.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          payload.ownerId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
