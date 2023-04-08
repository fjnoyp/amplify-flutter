// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.launch_template_elastic_inference_accelerator; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'launch_template_elastic_inference_accelerator.g.dart';

/// Describes an elastic inference accelerator.
abstract class LaunchTemplateElasticInferenceAccelerator
    with
        _i1.AWSEquatable<LaunchTemplateElasticInferenceAccelerator>
    implements
        Built<LaunchTemplateElasticInferenceAccelerator,
            LaunchTemplateElasticInferenceAcceleratorBuilder> {
  /// Describes an elastic inference accelerator.
  factory LaunchTemplateElasticInferenceAccelerator({
    required String type,
    int? count,
  }) {
    count ??= 0;
    return _$LaunchTemplateElasticInferenceAccelerator._(
      type: type,
      count: count,
    );
  }

  /// Describes an elastic inference accelerator.
  factory LaunchTemplateElasticInferenceAccelerator.build(
      [void Function(LaunchTemplateElasticInferenceAcceleratorBuilder)
          updates]) = _$LaunchTemplateElasticInferenceAccelerator;

  const LaunchTemplateElasticInferenceAccelerator._();

  static const List<_i2.SmithySerializer> serializers = [
    LaunchTemplateElasticInferenceAcceleratorEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LaunchTemplateElasticInferenceAcceleratorBuilder b) {
    b.count = 0;
  }

  /// The type of elastic inference accelerator. The possible values are eia1.medium, eia1.large, and eia1.xlarge.
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
    final helper = newBuiltValueToStringHelper(
        'LaunchTemplateElasticInferenceAccelerator');
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

class LaunchTemplateElasticInferenceAcceleratorEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<LaunchTemplateElasticInferenceAccelerator> {
  const LaunchTemplateElasticInferenceAcceleratorEc2QuerySerializer()
      : super('LaunchTemplateElasticInferenceAccelerator');

  @override
  Iterable<Type> get types => const [
        LaunchTemplateElasticInferenceAccelerator,
        _$LaunchTemplateElasticInferenceAccelerator,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplateElasticInferenceAccelerator deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchTemplateElasticInferenceAcceleratorBuilder();
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
    final payload = (object as LaunchTemplateElasticInferenceAccelerator);
    final result = <Object?>[
      const _i2.XmlElementName(
        'LaunchTemplateElasticInferenceAcceleratorResponse',
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
