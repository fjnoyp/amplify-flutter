// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.elastic_inference_accelerator_association; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'elastic_inference_accelerator_association.g.dart';

/// Describes the association between an instance and an elastic inference accelerator.
abstract class ElasticInferenceAcceleratorAssociation
    with
        _i1.AWSEquatable<ElasticInferenceAcceleratorAssociation>
    implements
        Built<ElasticInferenceAcceleratorAssociation,
            ElasticInferenceAcceleratorAssociationBuilder> {
  /// Describes the association between an instance and an elastic inference accelerator.
  factory ElasticInferenceAcceleratorAssociation({
    String? elasticInferenceAcceleratorArn,
    String? elasticInferenceAcceleratorAssociationId,
    String? elasticInferenceAcceleratorAssociationState,
    DateTime? elasticInferenceAcceleratorAssociationTime,
  }) {
    return _$ElasticInferenceAcceleratorAssociation._(
      elasticInferenceAcceleratorArn: elasticInferenceAcceleratorArn,
      elasticInferenceAcceleratorAssociationId:
          elasticInferenceAcceleratorAssociationId,
      elasticInferenceAcceleratorAssociationState:
          elasticInferenceAcceleratorAssociationState,
      elasticInferenceAcceleratorAssociationTime:
          elasticInferenceAcceleratorAssociationTime,
    );
  }

  /// Describes the association between an instance and an elastic inference accelerator.
  factory ElasticInferenceAcceleratorAssociation.build(
      [void Function(ElasticInferenceAcceleratorAssociationBuilder)
          updates]) = _$ElasticInferenceAcceleratorAssociation;

  const ElasticInferenceAcceleratorAssociation._();

  static const List<_i2.SmithySerializer> serializers = [
    ElasticInferenceAcceleratorAssociationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ElasticInferenceAcceleratorAssociationBuilder b) {}

  /// The Amazon Resource Name (ARN) of the elastic inference accelerator.
  String? get elasticInferenceAcceleratorArn;

  /// The ID of the association.
  String? get elasticInferenceAcceleratorAssociationId;

  /// The state of the elastic inference accelerator.
  String? get elasticInferenceAcceleratorAssociationState;

  /// The time at which the elastic inference accelerator is associated with an instance.
  DateTime? get elasticInferenceAcceleratorAssociationTime;
  @override
  List<Object?> get props => [
        elasticInferenceAcceleratorArn,
        elasticInferenceAcceleratorAssociationId,
        elasticInferenceAcceleratorAssociationState,
        elasticInferenceAcceleratorAssociationTime,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ElasticInferenceAcceleratorAssociation');
    helper.add(
      'elasticInferenceAcceleratorArn',
      elasticInferenceAcceleratorArn,
    );
    helper.add(
      'elasticInferenceAcceleratorAssociationId',
      elasticInferenceAcceleratorAssociationId,
    );
    helper.add(
      'elasticInferenceAcceleratorAssociationState',
      elasticInferenceAcceleratorAssociationState,
    );
    helper.add(
      'elasticInferenceAcceleratorAssociationTime',
      elasticInferenceAcceleratorAssociationTime,
    );
    return helper.toString();
  }
}

class ElasticInferenceAcceleratorAssociationEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<ElasticInferenceAcceleratorAssociation> {
  const ElasticInferenceAcceleratorAssociationEc2QuerySerializer()
      : super('ElasticInferenceAcceleratorAssociation');

  @override
  Iterable<Type> get types => const [
        ElasticInferenceAcceleratorAssociation,
        _$ElasticInferenceAcceleratorAssociation,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ElasticInferenceAcceleratorAssociation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ElasticInferenceAcceleratorAssociationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'elasticInferenceAcceleratorArn':
          if (value != null) {
            result.elasticInferenceAcceleratorArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'elasticInferenceAcceleratorAssociationId':
          if (value != null) {
            result.elasticInferenceAcceleratorAssociationId =
                (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'elasticInferenceAcceleratorAssociationState':
          if (value != null) {
            result.elasticInferenceAcceleratorAssociationState =
                (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'elasticInferenceAcceleratorAssociationTime':
          if (value != null) {
            result.elasticInferenceAcceleratorAssociationTime =
                (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
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
    final payload = (object as ElasticInferenceAcceleratorAssociation);
    final result = <Object?>[
      const _i2.XmlElementName(
        'ElasticInferenceAcceleratorAssociationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.elasticInferenceAcceleratorArn != null) {
      result
        ..add(const _i2.XmlElementName('ElasticInferenceAcceleratorArn'))
        ..add(serializers.serialize(
          payload.elasticInferenceAcceleratorArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.elasticInferenceAcceleratorAssociationId != null) {
      result
        ..add(const _i2.XmlElementName(
            'ElasticInferenceAcceleratorAssociationId'))
        ..add(serializers.serialize(
          payload.elasticInferenceAcceleratorAssociationId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.elasticInferenceAcceleratorAssociationState != null) {
      result
        ..add(const _i2.XmlElementName(
            'ElasticInferenceAcceleratorAssociationState'))
        ..add(serializers.serialize(
          payload.elasticInferenceAcceleratorAssociationState!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.elasticInferenceAcceleratorAssociationTime != null) {
      result
        ..add(const _i2.XmlElementName(
            'ElasticInferenceAcceleratorAssociationTime'))
        ..add(serializers.serialize(
          payload.elasticInferenceAcceleratorAssociationTime!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    return result;
  }
}
