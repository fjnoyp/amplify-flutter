// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.fpga_info; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/fpga_device_info.dart' as _i2;

part 'fpga_info.g.dart';

/// Describes the FPGAs for the instance type.
abstract class FpgaInfo
    with _i1.AWSEquatable<FpgaInfo>
    implements Built<FpgaInfo, FpgaInfoBuilder> {
  /// Describes the FPGAs for the instance type.
  factory FpgaInfo({
    List<_i2.FpgaDeviceInfo>? fpgas,
    int? totalFpgaMemoryInMib,
  }) {
    return _$FpgaInfo._(
      fpgas: fpgas == null ? null : _i3.BuiltList(fpgas),
      totalFpgaMemoryInMib: totalFpgaMemoryInMib,
    );
  }

  /// Describes the FPGAs for the instance type.
  factory FpgaInfo.build([void Function(FpgaInfoBuilder) updates]) = _$FpgaInfo;

  const FpgaInfo._();

  static const List<_i4.SmithySerializer> serializers = [
    FpgaInfoEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(FpgaInfoBuilder b) {}

  /// Describes the FPGAs for the instance type.
  _i3.BuiltList<_i2.FpgaDeviceInfo>? get fpgas;

  /// The total memory of all FPGA accelerators for the instance type.
  int? get totalFpgaMemoryInMib;
  @override
  List<Object?> get props => [
        fpgas,
        totalFpgaMemoryInMib,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('FpgaInfo');
    helper.add(
      'fpgas',
      fpgas,
    );
    helper.add(
      'totalFpgaMemoryInMib',
      totalFpgaMemoryInMib,
    );
    return helper.toString();
  }
}

class FpgaInfoEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<FpgaInfo> {
  const FpgaInfoEc2QuerySerializer() : super('FpgaInfo');

  @override
  Iterable<Type> get types => const [
        FpgaInfo,
        _$FpgaInfo,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  FpgaInfo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FpgaInfoBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'fpgas':
          if (value != null) {
            result.fpgas.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.FpgaDeviceInfo)],
              ),
            ) as _i3.BuiltList<_i2.FpgaDeviceInfo>));
          }
          break;
        case 'totalFpgaMemoryInMiB':
          if (value != null) {
            result.totalFpgaMemoryInMib = (serializers.deserialize(
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
    final payload = (object as FpgaInfo);
    final result = <Object?>[
      const _i4.XmlElementName(
        'FpgaInfoResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.fpgas != null) {
      result
        ..add(const _i4.XmlElementName('Fpgas'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.fpgas!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.FpgaDeviceInfo)],
          ),
        ));
    }
    if (payload.totalFpgaMemoryInMib != null) {
      result
        ..add(const _i4.XmlElementName('TotalFpgaMemoryInMiB'))
        ..add(serializers.serialize(
          payload.totalFpgaMemoryInMib!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    return result;
  }
}
