// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.elastic_gpu_health; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/elastic_gpu_status.dart'
    as _i2;

part 'elastic_gpu_health.g.dart';

/// Describes the status of an Elastic Graphics accelerator.
abstract class ElasticGpuHealth
    with _i1.AWSEquatable<ElasticGpuHealth>
    implements Built<ElasticGpuHealth, ElasticGpuHealthBuilder> {
  /// Describes the status of an Elastic Graphics accelerator.
  factory ElasticGpuHealth({_i2.ElasticGpuStatus? status}) {
    return _$ElasticGpuHealth._(status: status);
  }

  /// Describes the status of an Elastic Graphics accelerator.
  factory ElasticGpuHealth.build(
      [void Function(ElasticGpuHealthBuilder) updates]) = _$ElasticGpuHealth;

  const ElasticGpuHealth._();

  static const List<_i3.SmithySerializer> serializers = [
    ElasticGpuHealthEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ElasticGpuHealthBuilder b) {}

  /// The health status.
  _i2.ElasticGpuStatus? get status;
  @override
  List<Object?> get props => [status];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ElasticGpuHealth');
    helper.add(
      'status',
      status,
    );
    return helper.toString();
  }
}

class ElasticGpuHealthEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ElasticGpuHealth> {
  const ElasticGpuHealthEc2QuerySerializer() : super('ElasticGpuHealth');

  @override
  Iterable<Type> get types => const [
        ElasticGpuHealth,
        _$ElasticGpuHealth,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ElasticGpuHealth deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ElasticGpuHealthBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'status':
          if (value != null) {
            result.status = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ElasticGpuStatus),
            ) as _i2.ElasticGpuStatus);
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
    final payload = (object as ElasticGpuHealth);
    final result = <Object?>[
      const _i3.XmlElementName(
        'ElasticGpuHealthResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.status != null) {
      result
        ..add(const _i3.XmlElementName('Status'))
        ..add(serializers.serialize(
          payload.status!,
          specifiedType: const FullType.nullable(_i2.ElasticGpuStatus),
        ));
    }
    return result;
  }
}
