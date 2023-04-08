// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.gpu_device_info; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/gpu_device_memory_info.dart'
    as _i2;

part 'gpu_device_info.g.dart';

/// Describes the GPU accelerators for the instance type.
abstract class GpuDeviceInfo
    with _i1.AWSEquatable<GpuDeviceInfo>
    implements Built<GpuDeviceInfo, GpuDeviceInfoBuilder> {
  /// Describes the GPU accelerators for the instance type.
  factory GpuDeviceInfo({
    String? name,
    String? manufacturer,
    int? count,
    _i2.GpuDeviceMemoryInfo? memoryInfo,
  }) {
    return _$GpuDeviceInfo._(
      name: name,
      manufacturer: manufacturer,
      count: count,
      memoryInfo: memoryInfo,
    );
  }

  /// Describes the GPU accelerators for the instance type.
  factory GpuDeviceInfo.build([void Function(GpuDeviceInfoBuilder) updates]) =
      _$GpuDeviceInfo;

  const GpuDeviceInfo._();

  static const List<_i3.SmithySerializer> serializers = [
    GpuDeviceInfoEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GpuDeviceInfoBuilder b) {}

  /// The name of the GPU accelerator.
  String? get name;

  /// The manufacturer of the GPU accelerator.
  String? get manufacturer;

  /// The number of GPUs for the instance type.
  int? get count;

  /// Describes the memory available to the GPU accelerator.
  _i2.GpuDeviceMemoryInfo? get memoryInfo;
  @override
  List<Object?> get props => [
        name,
        manufacturer,
        count,
        memoryInfo,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GpuDeviceInfo');
    helper.add(
      'name',
      name,
    );
    helper.add(
      'manufacturer',
      manufacturer,
    );
    helper.add(
      'count',
      count,
    );
    helper.add(
      'memoryInfo',
      memoryInfo,
    );
    return helper.toString();
  }
}

class GpuDeviceInfoEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<GpuDeviceInfo> {
  const GpuDeviceInfoEc2QuerySerializer() : super('GpuDeviceInfo');

  @override
  Iterable<Type> get types => const [
        GpuDeviceInfo,
        _$GpuDeviceInfo,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GpuDeviceInfo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GpuDeviceInfoBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'name':
          if (value != null) {
            result.name = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'manufacturer':
          if (value != null) {
            result.manufacturer = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'count':
          if (value != null) {
            result.count = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'memoryInfo':
          if (value != null) {
            result.memoryInfo.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.GpuDeviceMemoryInfo),
            ) as _i2.GpuDeviceMemoryInfo));
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
    final payload = (object as GpuDeviceInfo);
    final result = <Object?>[
      const _i3.XmlElementName(
        'GpuDeviceInfoResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.name != null) {
      result
        ..add(const _i3.XmlElementName('Name'))
        ..add(serializers.serialize(
          payload.name!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.manufacturer != null) {
      result
        ..add(const _i3.XmlElementName('Manufacturer'))
        ..add(serializers.serialize(
          payload.manufacturer!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.count != null) {
      result
        ..add(const _i3.XmlElementName('Count'))
        ..add(serializers.serialize(
          payload.count!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (payload.memoryInfo != null) {
      result
        ..add(const _i3.XmlElementName('MemoryInfo'))
        ..add(serializers.serialize(
          payload.memoryInfo!,
          specifiedType: const FullType(_i2.GpuDeviceMemoryInfo),
        ));
    }
    return result;
  }
}
