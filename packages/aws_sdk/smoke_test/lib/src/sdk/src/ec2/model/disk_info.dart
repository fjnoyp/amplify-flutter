// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.disk_info; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/disk_type.dart' as _i3;

part 'disk_info.g.dart';

/// Describes a disk.
abstract class DiskInfo
    with _i1.AWSEquatable<DiskInfo>
    implements Built<DiskInfo, DiskInfoBuilder> {
  /// Describes a disk.
  factory DiskInfo({
    _i2.Int64? sizeInGb,
    int? count,
    _i3.DiskType? type,
  }) {
    return _$DiskInfo._(
      sizeInGb: sizeInGb,
      count: count,
      type: type,
    );
  }

  /// Describes a disk.
  factory DiskInfo.build([void Function(DiskInfoBuilder) updates]) = _$DiskInfo;

  const DiskInfo._();

  static const List<_i4.SmithySerializer> serializers = [
    DiskInfoEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DiskInfoBuilder b) {}

  /// The size of the disk in GB.
  _i2.Int64? get sizeInGb;

  /// The number of disks with this configuration.
  int? get count;

  /// The type of disk.
  _i3.DiskType? get type;
  @override
  List<Object?> get props => [
        sizeInGb,
        count,
        type,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DiskInfo');
    helper.add(
      'sizeInGb',
      sizeInGb,
    );
    helper.add(
      'count',
      count,
    );
    helper.add(
      'type',
      type,
    );
    return helper.toString();
  }
}

class DiskInfoEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DiskInfo> {
  const DiskInfoEc2QuerySerializer() : super('DiskInfo');

  @override
  Iterable<Type> get types => const [
        DiskInfo,
        _$DiskInfo,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DiskInfo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DiskInfoBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'sizeInGB':
          if (value != null) {
            result.sizeInGb = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.Int64),
            ) as _i2.Int64);
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
        case 'type':
          if (value != null) {
            result.type = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.DiskType),
            ) as _i3.DiskType);
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
    final payload = (object as DiskInfo);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DiskInfoResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.sizeInGb != null) {
      result
        ..add(const _i4.XmlElementName('SizeInGB'))
        ..add(serializers.serialize(
          payload.sizeInGb!,
          specifiedType: const FullType.nullable(_i2.Int64),
        ));
    }
    if (payload.count != null) {
      result
        ..add(const _i4.XmlElementName('Count'))
        ..add(serializers.serialize(
          payload.count!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (payload.type != null) {
      result
        ..add(const _i4.XmlElementName('Type'))
        ..add(serializers.serialize(
          payload.type!,
          specifiedType: const FullType.nullable(_i3.DiskType),
        ));
    }
    return result;
  }
}
