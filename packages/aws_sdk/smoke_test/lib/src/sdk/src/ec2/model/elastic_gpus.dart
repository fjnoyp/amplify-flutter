// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.elastic_gpus; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/elastic_gpu_health.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/elastic_gpu_state.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i4;

part 'elastic_gpus.g.dart';

/// Describes an Elastic Graphics accelerator.
abstract class ElasticGpus
    with _i1.AWSEquatable<ElasticGpus>
    implements Built<ElasticGpus, ElasticGpusBuilder> {
  /// Describes an Elastic Graphics accelerator.
  factory ElasticGpus({
    String? elasticGpuId,
    String? availabilityZone,
    String? elasticGpuType,
    _i2.ElasticGpuHealth? elasticGpuHealth,
    _i3.ElasticGpuState? elasticGpuState,
    String? instanceId,
    List<_i4.Tag>? tags,
  }) {
    return _$ElasticGpus._(
      elasticGpuId: elasticGpuId,
      availabilityZone: availabilityZone,
      elasticGpuType: elasticGpuType,
      elasticGpuHealth: elasticGpuHealth,
      elasticGpuState: elasticGpuState,
      instanceId: instanceId,
      tags: tags == null ? null : _i5.BuiltList(tags),
    );
  }

  /// Describes an Elastic Graphics accelerator.
  factory ElasticGpus.build([void Function(ElasticGpusBuilder) updates]) =
      _$ElasticGpus;

  const ElasticGpus._();

  static const List<_i6.SmithySerializer> serializers = [
    ElasticGpusEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ElasticGpusBuilder b) {}

  /// The ID of the Elastic Graphics accelerator.
  String? get elasticGpuId;

  /// The Availability Zone in the which the Elastic Graphics accelerator resides.
  String? get availabilityZone;

  /// The type of Elastic Graphics accelerator.
  String? get elasticGpuType;

  /// The status of the Elastic Graphics accelerator.
  _i2.ElasticGpuHealth? get elasticGpuHealth;

  /// The state of the Elastic Graphics accelerator.
  _i3.ElasticGpuState? get elasticGpuState;

  /// The ID of the instance to which the Elastic Graphics accelerator is attached.
  String? get instanceId;

  /// The tags assigned to the Elastic Graphics accelerator.
  _i5.BuiltList<_i4.Tag>? get tags;
  @override
  List<Object?> get props => [
        elasticGpuId,
        availabilityZone,
        elasticGpuType,
        elasticGpuHealth,
        elasticGpuState,
        instanceId,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ElasticGpus');
    helper.add(
      'elasticGpuId',
      elasticGpuId,
    );
    helper.add(
      'availabilityZone',
      availabilityZone,
    );
    helper.add(
      'elasticGpuType',
      elasticGpuType,
    );
    helper.add(
      'elasticGpuHealth',
      elasticGpuHealth,
    );
    helper.add(
      'elasticGpuState',
      elasticGpuState,
    );
    helper.add(
      'instanceId',
      instanceId,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class ElasticGpusEc2QuerySerializer
    extends _i6.StructuredSmithySerializer<ElasticGpus> {
  const ElasticGpusEc2QuerySerializer() : super('ElasticGpus');

  @override
  Iterable<Type> get types => const [
        ElasticGpus,
        _$ElasticGpus,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ElasticGpus deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ElasticGpusBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'elasticGpuId':
          if (value != null) {
            result.elasticGpuId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'availabilityZone':
          if (value != null) {
            result.availabilityZone = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'elasticGpuType':
          if (value != null) {
            result.elasticGpuType = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'elasticGpuHealth':
          if (value != null) {
            result.elasticGpuHealth.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ElasticGpuHealth),
            ) as _i2.ElasticGpuHealth));
          }
          break;
        case 'elasticGpuState':
          if (value != null) {
            result.elasticGpuState = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.ElasticGpuState),
            ) as _i3.ElasticGpuState);
          }
          break;
        case 'instanceId':
          if (value != null) {
            result.instanceId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'tagSet':
          if (value != null) {
            result.tags.replace((const _i6.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i6.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(_i4.Tag)],
              ),
            ) as _i5.BuiltList<_i4.Tag>));
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
    final payload = (object as ElasticGpus);
    final result = <Object?>[
      const _i6.XmlElementName(
        'ElasticGpusResponse',
        _i6.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.elasticGpuId != null) {
      result
        ..add(const _i6.XmlElementName('ElasticGpuId'))
        ..add(serializers.serialize(
          payload.elasticGpuId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.availabilityZone != null) {
      result
        ..add(const _i6.XmlElementName('AvailabilityZone'))
        ..add(serializers.serialize(
          payload.availabilityZone!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.elasticGpuType != null) {
      result
        ..add(const _i6.XmlElementName('ElasticGpuType'))
        ..add(serializers.serialize(
          payload.elasticGpuType!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.elasticGpuHealth != null) {
      result
        ..add(const _i6.XmlElementName('ElasticGpuHealth'))
        ..add(serializers.serialize(
          payload.elasticGpuHealth!,
          specifiedType: const FullType(_i2.ElasticGpuHealth),
        ));
    }
    if (payload.elasticGpuState != null) {
      result
        ..add(const _i6.XmlElementName('ElasticGpuState'))
        ..add(serializers.serialize(
          payload.elasticGpuState!,
          specifiedType: const FullType.nullable(_i3.ElasticGpuState),
        ));
    }
    if (payload.instanceId != null) {
      result
        ..add(const _i6.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          payload.instanceId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.tags != null) {
      result
        ..add(const _i6.XmlElementName('TagSet'))
        ..add(const _i6.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i6.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tags!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i4.Tag)],
          ),
        ));
    }
    return result;
  }
}
