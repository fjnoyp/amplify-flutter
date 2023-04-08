// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.accelerator_total_memory_mib; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'accelerator_total_memory_mib.g.dart';

/// The minimum and maximum amount of total accelerator memory, in MiB.
abstract class AcceleratorTotalMemoryMib
    with _i1.AWSEquatable<AcceleratorTotalMemoryMib>
    implements
        Built<AcceleratorTotalMemoryMib, AcceleratorTotalMemoryMibBuilder> {
  /// The minimum and maximum amount of total accelerator memory, in MiB.
  factory AcceleratorTotalMemoryMib({
    int? min,
    int? max,
  }) {
    min ??= 0;
    max ??= 0;
    return _$AcceleratorTotalMemoryMib._(
      min: min,
      max: max,
    );
  }

  /// The minimum and maximum amount of total accelerator memory, in MiB.
  factory AcceleratorTotalMemoryMib.build(
          [void Function(AcceleratorTotalMemoryMibBuilder) updates]) =
      _$AcceleratorTotalMemoryMib;

  const AcceleratorTotalMemoryMib._();

  static const List<_i2.SmithySerializer> serializers = [
    AcceleratorTotalMemoryMibEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AcceleratorTotalMemoryMibBuilder b) {
    b.min = 0;
    b.max = 0;
  }

  /// The minimum amount of accelerator memory, in MiB. If this parameter is not specified, there is no minimum limit.
  int get min;

  /// The maximum amount of accelerator memory, in MiB. If this parameter is not specified, there is no maximum limit.
  int get max;
  @override
  List<Object?> get props => [
        min,
        max,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AcceleratorTotalMemoryMib');
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

class AcceleratorTotalMemoryMibEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<AcceleratorTotalMemoryMib> {
  const AcceleratorTotalMemoryMibEc2QuerySerializer()
      : super('AcceleratorTotalMemoryMib');

  @override
  Iterable<Type> get types => const [
        AcceleratorTotalMemoryMib,
        _$AcceleratorTotalMemoryMib,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AcceleratorTotalMemoryMib deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AcceleratorTotalMemoryMibBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'min':
          result.min = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'max':
          result.max = (serializers.deserialize(
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
    final payload = (object as AcceleratorTotalMemoryMib);
    final result = <Object?>[
      const _i2.XmlElementName(
        'AcceleratorTotalMemoryMibResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i2.XmlElementName('Min'))
      ..add(serializers.serialize(
        payload.min,
        specifiedType: const FullType(int),
      ));
    result
      ..add(const _i2.XmlElementName('Max'))
      ..add(serializers.serialize(
        payload.max,
        specifiedType: const FullType(int),
      ));
    return result;
  }
}
