// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.instance_capacity; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'instance_capacity.g.dart';

/// Information about the number of instances that can be launched onto the Dedicated Host.
abstract class InstanceCapacity
    with _i1.AWSEquatable<InstanceCapacity>
    implements Built<InstanceCapacity, InstanceCapacityBuilder> {
  /// Information about the number of instances that can be launched onto the Dedicated Host.
  factory InstanceCapacity({
    int? availableCapacity,
    String? instanceType,
    int? totalCapacity,
  }) {
    availableCapacity ??= 0;
    totalCapacity ??= 0;
    return _$InstanceCapacity._(
      availableCapacity: availableCapacity,
      instanceType: instanceType,
      totalCapacity: totalCapacity,
    );
  }

  /// Information about the number of instances that can be launched onto the Dedicated Host.
  factory InstanceCapacity.build(
      [void Function(InstanceCapacityBuilder) updates]) = _$InstanceCapacity;

  const InstanceCapacity._();

  static const List<_i2.SmithySerializer> serializers = [
    InstanceCapacityEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InstanceCapacityBuilder b) {
    b.availableCapacity = 0;
    b.totalCapacity = 0;
  }

  /// The number of instances that can be launched onto the Dedicated Host based on the host's available capacity.
  int get availableCapacity;

  /// The instance type supported by the Dedicated Host.
  String? get instanceType;

  /// The total number of instances that can be launched onto the Dedicated Host if there are no instances running on it.
  int get totalCapacity;
  @override
  List<Object?> get props => [
        availableCapacity,
        instanceType,
        totalCapacity,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InstanceCapacity');
    helper.add(
      'availableCapacity',
      availableCapacity,
    );
    helper.add(
      'instanceType',
      instanceType,
    );
    helper.add(
      'totalCapacity',
      totalCapacity,
    );
    return helper.toString();
  }
}

class InstanceCapacityEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<InstanceCapacity> {
  const InstanceCapacityEc2QuerySerializer() : super('InstanceCapacity');

  @override
  Iterable<Type> get types => const [
        InstanceCapacity,
        _$InstanceCapacity,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceCapacity deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceCapacityBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'availableCapacity':
          result.availableCapacity = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'instanceType':
          if (value != null) {
            result.instanceType = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'totalCapacity':
          result.totalCapacity = (serializers.deserialize(
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
    final payload = (object as InstanceCapacity);
    final result = <Object?>[
      const _i2.XmlElementName(
        'InstanceCapacityResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i2.XmlElementName('AvailableCapacity'))
      ..add(serializers.serialize(
        payload.availableCapacity,
        specifiedType: const FullType(int),
      ));
    if (payload.instanceType != null) {
      result
        ..add(const _i2.XmlElementName('InstanceType'))
        ..add(serializers.serialize(
          payload.instanceType!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i2.XmlElementName('TotalCapacity'))
      ..add(serializers.serialize(
        payload.totalCapacity,
        specifiedType: const FullType(int),
      ));
    return result;
  }
}
