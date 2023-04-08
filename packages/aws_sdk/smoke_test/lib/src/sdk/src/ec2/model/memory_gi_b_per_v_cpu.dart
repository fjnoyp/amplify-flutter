// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.memory_gi_b_per_v_cpu; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'memory_gi_b_per_v_cpu.g.dart';

/// The minimum and maximum amount of memory per vCPU, in GiB.
abstract class MemoryGiBPerVCpu
    with _i1.AWSEquatable<MemoryGiBPerVCpu>
    implements Built<MemoryGiBPerVCpu, MemoryGiBPerVCpuBuilder> {
  /// The minimum and maximum amount of memory per vCPU, in GiB.
  factory MemoryGiBPerVCpu({
    double? min,
    double? max,
  }) {
    min ??= 0;
    max ??= 0;
    return _$MemoryGiBPerVCpu._(
      min: min,
      max: max,
    );
  }

  /// The minimum and maximum amount of memory per vCPU, in GiB.
  factory MemoryGiBPerVCpu.build(
      [void Function(MemoryGiBPerVCpuBuilder) updates]) = _$MemoryGiBPerVCpu;

  const MemoryGiBPerVCpu._();

  static const List<_i2.SmithySerializer> serializers = [
    MemoryGiBPerVCpuEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MemoryGiBPerVCpuBuilder b) {
    b.min = 0;
    b.max = 0;
  }

  /// The minimum amount of memory per vCPU, in GiB. If this parameter is not specified, there is no minimum limit.
  double get min;

  /// The maximum amount of memory per vCPU, in GiB. If this parameter is not specified, there is no maximum limit.
  double get max;
  @override
  List<Object?> get props => [
        min,
        max,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MemoryGiBPerVCpu');
    helper.add(
      'min',
      min,
    );
    helper.add(
      'max',
      max,
    );
    return helper.toString();
  }
}

class MemoryGiBPerVCpuEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<MemoryGiBPerVCpu> {
  const MemoryGiBPerVCpuEc2QuerySerializer() : super('MemoryGiBPerVCpu');

  @override
  Iterable<Type> get types => const [
        MemoryGiBPerVCpu,
        _$MemoryGiBPerVCpu,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  MemoryGiBPerVCpu deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MemoryGiBPerVCpuBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'min':
          result.min = (serializers.deserialize(
            value!,
            specifiedType: const FullType(double),
          ) as double);
          break;
        case 'max':
          result.max = (serializers.deserialize(
            value!,
            specifiedType: const FullType(double),
          ) as double);
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
    final payload = (object as MemoryGiBPerVCpu);
    final result = <Object?>[
      const _i2.XmlElementName(
        'MemoryGiBPerVCpuResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i2.XmlElementName('Min'))
      ..add(serializers.serialize(
        payload.min,
        specifiedType: const FullType(double),
      ));
    result
      ..add(const _i2.XmlElementName('Max'))
      ..add(serializers.serialize(
        payload.max,
        specifiedType: const FullType(double),
      ));
    return result;
  }
}
