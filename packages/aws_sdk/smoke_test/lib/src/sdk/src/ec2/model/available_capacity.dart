// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.available_capacity; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_capacity.dart' as _i2;

part 'available_capacity.g.dart';

/// The capacity information for instances that can be launched onto the Dedicated Host.
abstract class AvailableCapacity
    with _i1.AWSEquatable<AvailableCapacity>
    implements Built<AvailableCapacity, AvailableCapacityBuilder> {
  /// The capacity information for instances that can be launched onto the Dedicated Host.
  factory AvailableCapacity({
    List<_i2.InstanceCapacity>? availableInstanceCapacity,
    int? availableVCpus,
  }) {
    availableVCpus ??= 0;
    return _$AvailableCapacity._(
      availableInstanceCapacity: availableInstanceCapacity == null
          ? null
          : _i3.BuiltList(availableInstanceCapacity),
      availableVCpus: availableVCpus,
    );
  }

  /// The capacity information for instances that can be launched onto the Dedicated Host.
  factory AvailableCapacity.build(
      [void Function(AvailableCapacityBuilder) updates]) = _$AvailableCapacity;

  const AvailableCapacity._();

  static const List<_i4.SmithySerializer> serializers = [
    AvailableCapacityEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AvailableCapacityBuilder b) {
    b.availableVCpus = 0;
  }

  /// The number of instances that can be launched onto the Dedicated Host depending on the host's available capacity. For Dedicated Hosts that support multiple instance types, this parameter represents the number of instances for each instance size that is supported on the host.
  _i3.BuiltList<_i2.InstanceCapacity>? get availableInstanceCapacity;

  /// The number of vCPUs available for launching instances onto the Dedicated Host.
  int get availableVCpus;
  @override
  List<Object?> get props => [
        availableInstanceCapacity,
        availableVCpus,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AvailableCapacity');
    helper.add(
      'availableInstanceCapacity',
      availableInstanceCapacity,
    );
    helper.add(
      'availableVCpus',
      availableVCpus,
    );
    return helper.toString();
  }
}

class AvailableCapacityEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<AvailableCapacity> {
  const AvailableCapacityEc2QuerySerializer() : super('AvailableCapacity');

  @override
  Iterable<Type> get types => const [
        AvailableCapacity,
        _$AvailableCapacity,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AvailableCapacity deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AvailableCapacityBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'availableInstanceCapacity':
          if (value != null) {
            result.availableInstanceCapacity
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.InstanceCapacity)],
              ),
            ) as _i3.BuiltList<_i2.InstanceCapacity>));
          }
          break;
        case 'availableVCpus':
          result.availableVCpus = (serializers.deserialize(
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
    final payload = (object as AvailableCapacity);
    final result = <Object?>[
      const _i4.XmlElementName(
        'AvailableCapacityResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.availableInstanceCapacity != null) {
      result
        ..add(const _i4.XmlElementName('AvailableInstanceCapacity'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.availableInstanceCapacity!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.InstanceCapacity)],
          ),
        ));
    }
    result
      ..add(const _i4.XmlElementName('AvailableVCpus'))
      ..add(serializers.serialize(
        payload.availableVCpus,
        specifiedType: const FullType(int),
      ));
    return result;
  }
}
