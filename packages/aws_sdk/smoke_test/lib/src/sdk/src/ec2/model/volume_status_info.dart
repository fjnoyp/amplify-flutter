// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.volume_status_info; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/volume_status_details.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/volume_status_info_status.dart'
    as _i3;

part 'volume_status_info.g.dart';

/// Describes the status of a volume.
abstract class VolumeStatusInfo
    with _i1.AWSEquatable<VolumeStatusInfo>
    implements Built<VolumeStatusInfo, VolumeStatusInfoBuilder> {
  /// Describes the status of a volume.
  factory VolumeStatusInfo({
    List<_i2.VolumeStatusDetails>? details,
    _i3.VolumeStatusInfoStatus? status,
  }) {
    return _$VolumeStatusInfo._(
      details: details == null ? null : _i4.BuiltList(details),
      status: status,
    );
  }

  /// Describes the status of a volume.
  factory VolumeStatusInfo.build(
      [void Function(VolumeStatusInfoBuilder) updates]) = _$VolumeStatusInfo;

  const VolumeStatusInfo._();

  static const List<_i5.SmithySerializer> serializers = [
    VolumeStatusInfoEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(VolumeStatusInfoBuilder b) {}

  /// The details of the volume status.
  _i4.BuiltList<_i2.VolumeStatusDetails>? get details;

  /// The status of the volume.
  _i3.VolumeStatusInfoStatus? get status;
  @override
  List<Object?> get props => [
        details,
        status,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VolumeStatusInfo');
    helper.add(
      'details',
      details,
    );
    helper.add(
      'status',
      status,
    );
    return helper.toString();
  }
}

class VolumeStatusInfoEc2QuerySerializer
    extends _i5.StructuredSmithySerializer<VolumeStatusInfo> {
  const VolumeStatusInfoEc2QuerySerializer() : super('VolumeStatusInfo');

  @override
  Iterable<Type> get types => const [
        VolumeStatusInfo,
        _$VolumeStatusInfo,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VolumeStatusInfo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VolumeStatusInfoBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'details':
          if (value != null) {
            result.details.replace((const _i5.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i5.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i2.VolumeStatusDetails)],
              ),
            ) as _i4.BuiltList<_i2.VolumeStatusDetails>));
          }
          break;
        case 'status':
          if (value != null) {
            result.status = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.VolumeStatusInfoStatus),
            ) as _i3.VolumeStatusInfoStatus);
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
    final payload = (object as VolumeStatusInfo);
    final result = <Object?>[
      const _i5.XmlElementName(
        'VolumeStatusInfoResponse',
        _i5.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.details != null) {
      result
        ..add(const _i5.XmlElementName('Details'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.details!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i2.VolumeStatusDetails)],
          ),
        ));
    }
    if (payload.status != null) {
      result
        ..add(const _i5.XmlElementName('Status'))
        ..add(serializers.serialize(
          payload.status!,
          specifiedType: const FullType.nullable(_i3.VolumeStatusInfoStatus),
        ));
    }
    return result;
  }
}
