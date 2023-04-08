// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.instance_storage_info; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i7;
import 'package:smoke_test/src/sdk/src/ec2/model/disk_info.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/ephemeral_nvme_support.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_storage_encryption_support.dart'
    as _i5;

part 'instance_storage_info.g.dart';

/// Describes the instance store features that are supported by the instance type.
abstract class InstanceStorageInfo
    with _i1.AWSEquatable<InstanceStorageInfo>
    implements Built<InstanceStorageInfo, InstanceStorageInfoBuilder> {
  /// Describes the instance store features that are supported by the instance type.
  factory InstanceStorageInfo({
    _i2.Int64? totalSizeInGb,
    List<_i3.DiskInfo>? disks,
    _i4.EphemeralNvmeSupport? nvmeSupport,
    _i5.InstanceStorageEncryptionSupport? encryptionSupport,
  }) {
    return _$InstanceStorageInfo._(
      totalSizeInGb: totalSizeInGb,
      disks: disks == null ? null : _i6.BuiltList(disks),
      nvmeSupport: nvmeSupport,
      encryptionSupport: encryptionSupport,
    );
  }

  /// Describes the instance store features that are supported by the instance type.
  factory InstanceStorageInfo.build(
          [void Function(InstanceStorageInfoBuilder) updates]) =
      _$InstanceStorageInfo;

  const InstanceStorageInfo._();

  static const List<_i7.SmithySerializer> serializers = [
    InstanceStorageInfoEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InstanceStorageInfoBuilder b) {}

  /// The total size of the disks, in GB.
  _i2.Int64? get totalSizeInGb;

  /// Describes the disks that are available for the instance type.
  _i6.BuiltList<_i3.DiskInfo>? get disks;

  /// Indicates whether non-volatile memory express (NVMe) is supported.
  _i4.EphemeralNvmeSupport? get nvmeSupport;

  /// Indicates whether data is encrypted at rest.
  _i5.InstanceStorageEncryptionSupport? get encryptionSupport;
  @override
  List<Object?> get props => [
        totalSizeInGb,
        disks,
        nvmeSupport,
        encryptionSupport,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InstanceStorageInfo');
    helper.add(
      'totalSizeInGb',
      totalSizeInGb,
    );
    helper.add(
      'disks',
      disks,
    );
    helper.add(
      'nvmeSupport',
      nvmeSupport,
    );
    helper.add(
      'encryptionSupport',
      encryptionSupport,
    );
    return helper.toString();
  }
}

class InstanceStorageInfoEc2QuerySerializer
    extends _i7.StructuredSmithySerializer<InstanceStorageInfo> {
  const InstanceStorageInfoEc2QuerySerializer() : super('InstanceStorageInfo');

  @override
  Iterable<Type> get types => const [
        InstanceStorageInfo,
        _$InstanceStorageInfo,
      ];
  @override
  Iterable<_i7.ShapeId> get supportedProtocols => const [
        _i7.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceStorageInfo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceStorageInfoBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'totalSizeInGB':
          if (value != null) {
            result.totalSizeInGb = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.Int64),
            ) as _i2.Int64);
          }
          break;
        case 'disks':
          if (value != null) {
            result.disks.replace((const _i7.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i7.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(_i3.DiskInfo)],
              ),
            ) as _i6.BuiltList<_i3.DiskInfo>));
          }
          break;
        case 'nvmeSupport':
          if (value != null) {
            result.nvmeSupport = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.EphemeralNvmeSupport),
            ) as _i4.EphemeralNvmeSupport);
          }
          break;
        case 'encryptionSupport':
          if (value != null) {
            result.encryptionSupport = (serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i5.InstanceStorageEncryptionSupport),
            ) as _i5.InstanceStorageEncryptionSupport);
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
    final payload = (object as InstanceStorageInfo);
    final result = <Object?>[
      const _i7.XmlElementName(
        'InstanceStorageInfoResponse',
        _i7.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.totalSizeInGb != null) {
      result
        ..add(const _i7.XmlElementName('TotalSizeInGB'))
        ..add(serializers.serialize(
          payload.totalSizeInGb!,
          specifiedType: const FullType.nullable(_i2.Int64),
        ));
    }
    if (payload.disks != null) {
      result
        ..add(const _i7.XmlElementName('Disks'))
        ..add(const _i7.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i7.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.disks!,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(_i3.DiskInfo)],
          ),
        ));
    }
    if (payload.nvmeSupport != null) {
      result
        ..add(const _i7.XmlElementName('NvmeSupport'))
        ..add(serializers.serialize(
          payload.nvmeSupport!,
          specifiedType: const FullType.nullable(_i4.EphemeralNvmeSupport),
        ));
    }
    if (payload.encryptionSupport != null) {
      result
        ..add(const _i7.XmlElementName('EncryptionSupport'))
        ..add(serializers.serialize(
          payload.encryptionSupport!,
          specifiedType:
              const FullType.nullable(_i5.InstanceStorageEncryptionSupport),
        ));
    }
    return result;
  }
}
