// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.memory_gi_b_per_v_cpu_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'memory_gi_b_per_v_cpu_request.g.dart';

/// The minimum and maximum amount of memory per vCPU, in GiB.
abstract class MemoryGiBPerVCpuRequest
    with _i1.AWSEquatable<MemoryGiBPerVCpuRequest>
    implements Built<MemoryGiBPerVCpuRequest, MemoryGiBPerVCpuRequestBuilder> {
  /// The minimum and maximum amount of memory per vCPU, in GiB.
  factory MemoryGiBPerVCpuRequest({
    double? min,
    double? max,
  }) {
    min ??= 0;
    max ??= 0;
    return _$MemoryGiBPerVCpuRequest._(
      min: min,
      max: max,
    );
  }

  /// The minimum and maximum amount of memory per vCPU, in GiB.
  factory MemoryGiBPerVCpuRequest.build(
          [void Function(MemoryGiBPerVCpuRequestBuilder) updates]) =
      _$MemoryGiBPerVCpuRequest;

  const MemoryGiBPerVCpuRequest._();

  static const List<_i2.SmithySerializer> serializers = [
    MemoryGiBPerVCpuRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MemoryGiBPerVCpuRequestBuilder b) {
    b.min = 0;
    b.max = 0;
  }

  /// The minimum amount of memory per vCPU, in GiB. To specify no minimum limit, omit this parameter.
  double get min;

  /// The maximum amount of memory per vCPU, in GiB. To specify no maximum limit, omit this parameter.
  double get max;
  @override
  List<Object?> get props => [
        min,
        max,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MemoryGiBPerVCpuRequest');
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

class MemoryGiBPerVCpuRequestEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<MemoryGiBPerVCpuRequest> {
  const MemoryGiBPerVCpuRequestEc2QuerySerializer()
      : super('MemoryGiBPerVCpuRequest');

  @override
  Iterable<Type> get types => const [
        MemoryGiBPerVCpuRequest,
        _$MemoryGiBPerVCpuRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  MemoryGiBPerVCpuRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MemoryGiBPerVCpuRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Min':
          result.min = (serializers.deserialize(
            value!,
            specifiedType: const FullType(double),
          ) as double);
          break;
        case 'Max':
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
    final payload = (object as MemoryGiBPerVCpuRequest);
    final result = <Object?>[
      const _i2.XmlElementName(
        'MemoryGiBPerVCpuRequestResponse',
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
