// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.elastic_inference_accelerator; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'elastic_inference_accelerator.g.dart';

/// Describes an elastic inference accelerator.
abstract class ElasticInferenceAccelerator
    with _i1.AWSEquatable<ElasticInferenceAccelerator>
    implements
        Built<ElasticInferenceAccelerator, ElasticInferenceAcceleratorBuilder> {
  /// Describes an elastic inference accelerator.
  factory ElasticInferenceAccelerator({
    required String type,
    int? count,
  }) {
    count ??= 0;
    return _$ElasticInferenceAccelerator._(
      type: type,
      count: count,
    );
  }

  /// Describes an elastic inference accelerator.
  factory ElasticInferenceAccelerator.build(
          [void Function(ElasticInferenceAcceleratorBuilder) updates]) =
      _$ElasticInferenceAccelerator;

  const ElasticInferenceAccelerator._();

  static const List<_i2.SmithySerializer> serializers = [
    ElasticInferenceAcceleratorEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ElasticInferenceAcceleratorBuilder b) {
    b.count = 0;
  }

  /// The type of elastic inference accelerator. The possible values are `eia1.medium`, `eia1.large`, `eia1.xlarge`, `eia2.medium`, `eia2.large`, and `eia2.xlarge`.
  String get type;

  /// The number of elastic inference accelerators to attach to the instance.
  ///
  /// Default: 1
  int get count;
  @override
  List<Object?> get props => [
        type,
        count,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ElasticInferenceAccelerator');
    helper.add(
      'type',
      type,
    );
    helper.add(
      'count',
      count,
    );
    return helper.toString();
  }
}

class ElasticInferenceAcceleratorEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ElasticInferenceAccelerator> {
  const ElasticInferenceAcceleratorEc2QuerySerializer()
      : super('ElasticInferenceAccelerator');

  @override
  Iterable<Type> get types => const [
        ElasticInferenceAccelerator,
        _$ElasticInferenceAccelerator,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ElasticInferenceAccelerator deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ElasticInferenceAcceleratorBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Type':
          result.type = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'Count':
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
    final payload = (object as ElasticInferenceAccelerator);
    final result = <Object?>[
      const _i2.XmlElementName(
        'ElasticInferenceAcceleratorResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i2.XmlElementName('Type'))
      ..add(serializers.serialize(
        payload.type,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i2.XmlElementName('Count'))
      ..add(serializers.serialize(
        payload.count,
        specifiedType: const FullType(int),
      ));
    return result;
  }
}
