// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.v_cpu_info; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'v_cpu_info.g.dart';

/// Describes the vCPU configurations for the instance type.
abstract class VCpuInfo
    with _i1.AWSEquatable<VCpuInfo>
    implements Built<VCpuInfo, VCpuInfoBuilder> {
  /// Describes the vCPU configurations for the instance type.
  factory VCpuInfo({
    int? defaultVCpus,
    int? defaultCores,
    int? defaultThreadsPerCore,
    List<int>? validCores,
    List<int>? validThreadsPerCore,
  }) {
    return _$VCpuInfo._(
      defaultVCpus: defaultVCpus,
      defaultCores: defaultCores,
      defaultThreadsPerCore: defaultThreadsPerCore,
      validCores: validCores == null ? null : _i2.BuiltList(validCores),
      validThreadsPerCore: validThreadsPerCore == null
          ? null
          : _i2.BuiltList(validThreadsPerCore),
    );
  }

  /// Describes the vCPU configurations for the instance type.
  factory VCpuInfo.build([void Function(VCpuInfoBuilder) updates]) = _$VCpuInfo;

  const VCpuInfo._();

  static const List<_i3.SmithySerializer> serializers = [
    VCpuInfoEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(VCpuInfoBuilder b) {}

  /// The default number of vCPUs for the instance type.
  int? get defaultVCpus;

  /// The default number of cores for the instance type.
  int? get defaultCores;

  /// The default number of threads per core for the instance type.
  int? get defaultThreadsPerCore;

  /// The valid number of cores that can be configured for the instance type.
  _i2.BuiltList<int>? get validCores;

  /// The valid number of threads per core that can be configured for the instance type.
  _i2.BuiltList<int>? get validThreadsPerCore;
  @override
  List<Object?> get props => [
        defaultVCpus,
        defaultCores,
        defaultThreadsPerCore,
        validCores,
        validThreadsPerCore,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VCpuInfo');
    helper.add(
      'defaultVCpus',
      defaultVCpus,
    );
    helper.add(
      'defaultCores',
      defaultCores,
    );
    helper.add(
      'defaultThreadsPerCore',
      defaultThreadsPerCore,
    );
    helper.add(
      'validCores',
      validCores,
    );
    helper.add(
      'validThreadsPerCore',
      validThreadsPerCore,
    );
    return helper.toString();
  }
}

class VCpuInfoEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<VCpuInfo> {
  const VCpuInfoEc2QuerySerializer() : super('VCpuInfo');

  @override
  Iterable<Type> get types => const [
        VCpuInfo,
        _$VCpuInfo,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VCpuInfo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VCpuInfoBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'defaultVCpus':
          if (value != null) {
            result.defaultVCpus = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'defaultCores':
          if (value != null) {
            result.defaultCores = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'defaultThreadsPerCore':
          if (value != null) {
            result.defaultThreadsPerCore = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'validCores':
          if (value != null) {
            result.validCores.replace((const _i3.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i3.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i2.BuiltList,
                [FullType(int)],
              ),
            ) as _i2.BuiltList<int>));
          }
          break;
        case 'validThreadsPerCore':
          if (value != null) {
            result.validThreadsPerCore
                .replace((const _i3.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i3.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i2.BuiltList,
                [FullType(int)],
              ),
            ) as _i2.BuiltList<int>));
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
    final payload = (object as VCpuInfo);
    final result = <Object?>[
      const _i3.XmlElementName(
        'VCpuInfoResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.defaultVCpus != null) {
      result
        ..add(const _i3.XmlElementName('DefaultVCpus'))
        ..add(serializers.serialize(
          payload.defaultVCpus!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (payload.defaultCores != null) {
      result
        ..add(const _i3.XmlElementName('DefaultCores'))
        ..add(serializers.serialize(
          payload.defaultCores!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (payload.defaultThreadsPerCore != null) {
      result
        ..add(const _i3.XmlElementName('DefaultThreadsPerCore'))
        ..add(serializers.serialize(
          payload.defaultThreadsPerCore!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (payload.validCores != null) {
      result
        ..add(const _i3.XmlElementName('ValidCores'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.validCores!,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(int)],
          ),
        ));
    }
    if (payload.validThreadsPerCore != null) {
      result
        ..add(const _i3.XmlElementName('ValidThreadsPerCore'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.validThreadsPerCore!,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(int)],
          ),
        ));
    }
    return result;
  }
}
