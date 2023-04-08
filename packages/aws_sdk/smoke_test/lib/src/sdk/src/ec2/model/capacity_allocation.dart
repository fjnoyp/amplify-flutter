// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.capacity_allocation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/allocation_type.dart' as _i2;

part 'capacity_allocation.g.dart';

/// Information about instance capacity usage for a Capacity Reservation.
abstract class CapacityAllocation
    with _i1.AWSEquatable<CapacityAllocation>
    implements Built<CapacityAllocation, CapacityAllocationBuilder> {
  /// Information about instance capacity usage for a Capacity Reservation.
  factory CapacityAllocation({
    _i2.AllocationType? allocationType,
    int? count,
  }) {
    count ??= 0;
    return _$CapacityAllocation._(
      allocationType: allocationType,
      count: count,
    );
  }

  /// Information about instance capacity usage for a Capacity Reservation.
  factory CapacityAllocation.build(
          [void Function(CapacityAllocationBuilder) updates]) =
      _$CapacityAllocation;

  const CapacityAllocation._();

  static const List<_i3.SmithySerializer> serializers = [
    CapacityAllocationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CapacityAllocationBuilder b) {
    b.count = 0;
  }

  /// The usage type. `used` indicates that the instance capacity is in use by instances that are running in the Capacity Reservation.
  _i2.AllocationType? get allocationType;

  /// The amount of instance capacity associated with the usage. For example a value of `4` indicates that instance capacity for 4 instances is currently in use.
  int get count;
  @override
  List<Object?> get props => [
        allocationType,
        count,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CapacityAllocation');
    helper.add(
      'allocationType',
      allocationType,
    );
    helper.add(
      'count',
      count,
    );
    return helper.toString();
  }
}

class CapacityAllocationEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<CapacityAllocation> {
  const CapacityAllocationEc2QuerySerializer() : super('CapacityAllocation');

  @override
  Iterable<Type> get types => const [
        CapacityAllocation,
        _$CapacityAllocation,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CapacityAllocation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CapacityAllocationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'allocationType':
          if (value != null) {
            result.allocationType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.AllocationType),
            ) as _i2.AllocationType);
          }
          break;
        case 'count':
          result.count = (serializers.deserialize(
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
    final payload = (object as CapacityAllocation);
    final result = <Object?>[
      const _i3.XmlElementName(
        'CapacityAllocationResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.allocationType != null) {
      result
        ..add(const _i3.XmlElementName('AllocationType'))
        ..add(serializers.serialize(
          payload.allocationType!,
          specifiedType: const FullType.nullable(_i2.AllocationType),
        ));
    }
    result
      ..add(const _i3.XmlElementName('Count'))
      ..add(serializers.serialize(
        payload.count,
        specifiedType: const FullType(int),
      ));
    return result;
  }
}
