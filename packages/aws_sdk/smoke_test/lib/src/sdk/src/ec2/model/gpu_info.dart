// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.gpu_info; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/gpu_device_info.dart' as _i2;

part 'gpu_info.g.dart';

/// Describes the GPU accelerators for the instance type.
abstract class GpuInfo
    with _i1.AWSEquatable<GpuInfo>
    implements Built<GpuInfo, GpuInfoBuilder> {
  /// Describes the GPU accelerators for the instance type.
  factory GpuInfo({
    List<_i2.GpuDeviceInfo>? gpus,
    int? totalGpuMemoryInMib,
  }) {
    return _$GpuInfo._(
      gpus: gpus == null ? null : _i3.BuiltList(gpus),
      totalGpuMemoryInMib: totalGpuMemoryInMib,
    );
  }

  /// Describes the GPU accelerators for the instance type.
  factory GpuInfo.build([void Function(GpuInfoBuilder) updates]) = _$GpuInfo;

  const GpuInfo._();

  static const List<_i4.SmithySerializer> serializers = [
    GpuInfoEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GpuInfoBuilder b) {}

  /// Describes the GPU accelerators for the instance type.
  _i3.BuiltList<_i2.GpuDeviceInfo>? get gpus;

  /// The total size of the memory for the GPU accelerators for the instance type, in MiB.
  int? get totalGpuMemoryInMib;
  @override
  List<Object?> get props => [
        gpus,
        totalGpuMemoryInMib,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GpuInfo');
    helper.add(
      'gpus',
      gpus,
    );
    helper.add(
      'totalGpuMemoryInMib',
      totalGpuMemoryInMib,
    );
    return helper.toString();
  }
}

class GpuInfoEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<GpuInfo> {
  const GpuInfoEc2QuerySerializer() : super('GpuInfo');

  @override
  Iterable<Type> get types => const [
        GpuInfo,
        _$GpuInfo,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GpuInfo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GpuInfoBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'gpus':
          if (value != null) {
            result.gpus.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.GpuDeviceInfo)],
              ),
            ) as _i3.BuiltList<_i2.GpuDeviceInfo>));
          }
          break;
        case 'totalGpuMemoryInMiB':
          if (value != null) {
            result.totalGpuMemoryInMib = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
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
    final payload = (object as GpuInfo);
    final result = <Object?>[
      const _i4.XmlElementName(
        'GpuInfoResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.gpus != null) {
      result
        ..add(const _i4.XmlElementName('Gpus'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.gpus!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.GpuDeviceInfo)],
          ),
        ));
    }
    if (payload.totalGpuMemoryInMib != null) {
      result
        ..add(const _i4.XmlElementName('TotalGpuMemoryInMiB'))
        ..add(serializers.serialize(
          payload.totalGpuMemoryInMib!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    return result;
  }
}
