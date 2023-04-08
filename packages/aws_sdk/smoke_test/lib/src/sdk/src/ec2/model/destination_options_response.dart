// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.destination_options_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/destination_file_format.dart'
    as _i2;

part 'destination_options_response.g.dart';

/// Describes the destination options for a flow log.
abstract class DestinationOptionsResponse
    with _i1.AWSEquatable<DestinationOptionsResponse>
    implements
        Built<DestinationOptionsResponse, DestinationOptionsResponseBuilder> {
  /// Describes the destination options for a flow log.
  factory DestinationOptionsResponse({
    _i2.DestinationFileFormat? fileFormat,
    bool? hiveCompatiblePartitions,
    bool? perHourPartition,
  }) {
    hiveCompatiblePartitions ??= false;
    perHourPartition ??= false;
    return _$DestinationOptionsResponse._(
      fileFormat: fileFormat,
      hiveCompatiblePartitions: hiveCompatiblePartitions,
      perHourPartition: perHourPartition,
    );
  }

  /// Describes the destination options for a flow log.
  factory DestinationOptionsResponse.build(
          [void Function(DestinationOptionsResponseBuilder) updates]) =
      _$DestinationOptionsResponse;

  const DestinationOptionsResponse._();

  static const List<_i3.SmithySerializer> serializers = [
    DestinationOptionsResponseEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DestinationOptionsResponseBuilder b) {
    b.hiveCompatiblePartitions = false;
    b.perHourPartition = false;
  }

  /// The format for the flow log.
  _i2.DestinationFileFormat? get fileFormat;

  /// Indicates whether to use Hive-compatible prefixes for flow logs stored in Amazon S3.
  bool get hiveCompatiblePartitions;

  /// Indicates whether to partition the flow log per hour.
  bool get perHourPartition;
  @override
  List<Object?> get props => [
        fileFormat,
        hiveCompatiblePartitions,
        perHourPartition,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DestinationOptionsResponse');
    helper.add(
      'fileFormat',
      fileFormat,
    );
    helper.add(
      'hiveCompatiblePartitions',
      hiveCompatiblePartitions,
    );
    helper.add(
      'perHourPartition',
      perHourPartition,
    );
    return helper.toString();
  }
}

class DestinationOptionsResponseEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DestinationOptionsResponse> {
  const DestinationOptionsResponseEc2QuerySerializer()
      : super('DestinationOptionsResponse');

  @override
  Iterable<Type> get types => const [
        DestinationOptionsResponse,
        _$DestinationOptionsResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DestinationOptionsResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DestinationOptionsResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'fileFormat':
          if (value != null) {
            result.fileFormat = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.DestinationFileFormat),
            ) as _i2.DestinationFileFormat);
          }
          break;
        case 'hiveCompatiblePartitions':
          result.hiveCompatiblePartitions = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'perHourPartition':
          result.perHourPartition = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
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
    final payload = (object as DestinationOptionsResponse);
    final result = <Object?>[
      const _i3.XmlElementName(
        'DestinationOptionsResponseResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.fileFormat != null) {
      result
        ..add(const _i3.XmlElementName('FileFormat'))
        ..add(serializers.serialize(
          payload.fileFormat!,
          specifiedType: const FullType.nullable(_i2.DestinationFileFormat),
        ));
    }
    result
      ..add(const _i3.XmlElementName('HiveCompatiblePartitions'))
      ..add(serializers.serialize(
        payload.hiveCompatiblePartitions,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i3.XmlElementName('PerHourPartition'))
      ..add(serializers.serialize(
        payload.perHourPartition,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
