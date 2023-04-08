// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.accelerator_count_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'accelerator_count_request.g.dart';

/// The minimum and maximum number of accelerators (GPUs, FPGAs, or Amazon Web Services Inferentia chips) on an instance. To exclude accelerator-enabled instance types, set `Max` to `0`.
abstract class AcceleratorCountRequest
    with _i1.AWSEquatable<AcceleratorCountRequest>
    implements Built<AcceleratorCountRequest, AcceleratorCountRequestBuilder> {
  /// The minimum and maximum number of accelerators (GPUs, FPGAs, or Amazon Web Services Inferentia chips) on an instance. To exclude accelerator-enabled instance types, set `Max` to `0`.
  factory AcceleratorCountRequest({
    int? min,
    int? max,
  }) {
    min ??= 0;
    max ??= 0;
    return _$AcceleratorCountRequest._(
      min: min,
      max: max,
    );
  }

  /// The minimum and maximum number of accelerators (GPUs, FPGAs, or Amazon Web Services Inferentia chips) on an instance. To exclude accelerator-enabled instance types, set `Max` to `0`.
  factory AcceleratorCountRequest.build(
          [void Function(AcceleratorCountRequestBuilder) updates]) =
      _$AcceleratorCountRequest;

  const AcceleratorCountRequest._();

  static const List<_i2.SmithySerializer> serializers = [
    AcceleratorCountRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AcceleratorCountRequestBuilder b) {
    b.min = 0;
    b.max = 0;
  }

  /// The minimum number of accelerators. To specify no minimum limit, omit this parameter.
  int get min;

  /// The maximum number of accelerators. To specify no maximum limit, omit this parameter. To exclude accelerator-enabled instance types, set `Max` to `0`.
  int get max;
  @override
  List<Object?> get props => [
        min,
        max,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AcceleratorCountRequest');
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

class AcceleratorCountRequestEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<AcceleratorCountRequest> {
  const AcceleratorCountRequestEc2QuerySerializer()
      : super('AcceleratorCountRequest');

  @override
  Iterable<Type> get types => const [
        AcceleratorCountRequest,
        _$AcceleratorCountRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AcceleratorCountRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AcceleratorCountRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Min':
          result.min = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'Max':
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
    final payload = (object as AcceleratorCountRequest);
    final result = <Object?>[
      const _i2.XmlElementName(
        'AcceleratorCountRequestResponse',
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
