// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.launch_template_elastic_inference_accelerator_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'launch_template_elastic_inference_accelerator_response.g.dart';

/// Describes an elastic inference accelerator.
abstract class LaunchTemplateElasticInferenceAcceleratorResponse
    with
        _i1.AWSEquatable<LaunchTemplateElasticInferenceAcceleratorResponse>
    implements
        Built<LaunchTemplateElasticInferenceAcceleratorResponse,
            LaunchTemplateElasticInferenceAcceleratorResponseBuilder> {
  /// Describes an elastic inference accelerator.
  factory LaunchTemplateElasticInferenceAcceleratorResponse({
    String? type,
    int? count,
  }) {
    count ??= 0;
    return _$LaunchTemplateElasticInferenceAcceleratorResponse._(
      type: type,
      count: count,
    );
  }

  /// Describes an elastic inference accelerator.
  factory LaunchTemplateElasticInferenceAcceleratorResponse.build(
      [void Function(LaunchTemplateElasticInferenceAcceleratorResponseBuilder)
          updates]) = _$LaunchTemplateElasticInferenceAcceleratorResponse;

  const LaunchTemplateElasticInferenceAcceleratorResponse._();

  static const List<_i2.SmithySerializer> serializers = [
    LaunchTemplateElasticInferenceAcceleratorResponseEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      LaunchTemplateElasticInferenceAcceleratorResponseBuilder b) {
    b.count = 0;
  }

  /// The type of elastic inference accelerator. The possible values are eia1.medium, eia1.large, and eia1.xlarge.
  String? get type;

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
        'LaunchTemplateElasticInferenceAcceleratorResponse');
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

class LaunchTemplateElasticInferenceAcceleratorResponseEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<
        LaunchTemplateElasticInferenceAcceleratorResponse> {
  const LaunchTemplateElasticInferenceAcceleratorResponseEc2QuerySerializer()
      : super('LaunchTemplateElasticInferenceAcceleratorResponse');

  @override
  Iterable<Type> get types => const [
        LaunchTemplateElasticInferenceAcceleratorResponse,
        _$LaunchTemplateElasticInferenceAcceleratorResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplateElasticInferenceAcceleratorResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchTemplateElasticInferenceAcceleratorResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'type':
          if (value != null) {
            result.type = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload =
        (object as LaunchTemplateElasticInferenceAcceleratorResponse);
    final result = <Object?>[
      const _i2.XmlElementName(
        'LaunchTemplateElasticInferenceAcceleratorResponseResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.type != null) {
      result
        ..add(const _i2.XmlElementName('Type'))
        ..add(serializers.serialize(
          payload.type!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i2.XmlElementName('Count'))
      ..add(serializers.serialize(
        payload.count,
        specifiedType: const FullType(int),
      ));
    return result;
  }
}
