// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.destination_options_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/destination_file_format.dart'
    as _i2;

part 'destination_options_request.g.dart';

/// Describes the destination options for a flow log.
abstract class DestinationOptionsRequest
    with _i1.AWSEquatable<DestinationOptionsRequest>
    implements
        Built<DestinationOptionsRequest, DestinationOptionsRequestBuilder> {
  /// Describes the destination options for a flow log.
  factory DestinationOptionsRequest({
    _i2.DestinationFileFormat? fileFormat,
    bool? hiveCompatiblePartitions,
    bool? perHourPartition,
  }) {
    hiveCompatiblePartitions ??= false;
    perHourPartition ??= false;
    return _$DestinationOptionsRequest._(
      fileFormat: fileFormat,
      hiveCompatiblePartitions: hiveCompatiblePartitions,
      perHourPartition: perHourPartition,
    );
  }

  /// Describes the destination options for a flow log.
  factory DestinationOptionsRequest.build(
          [void Function(DestinationOptionsRequestBuilder) updates]) =
      _$DestinationOptionsRequest;

  const DestinationOptionsRequest._();

  static const List<_i3.SmithySerializer> serializers = [
    DestinationOptionsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DestinationOptionsRequestBuilder b) {
    b.hiveCompatiblePartitions = false;
    b.perHourPartition = false;
  }

  /// The format for the flow log. The default is `plain-text`.
  _i2.DestinationFileFormat? get fileFormat;

  /// Indicates whether to use Hive-compatible prefixes for flow logs stored in Amazon S3. The default is `false`.
  bool get hiveCompatiblePartitions;

  /// Indicates whether to partition the flow log per hour. This reduces the cost and response time for queries. The default is `false`.
  bool get perHourPartition;
  @override
  List<Object?> get props => [
        fileFormat,
        hiveCompatiblePartitions,
        perHourPartition,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DestinationOptionsRequest');
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

class DestinationOptionsRequestEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DestinationOptionsRequest> {
  const DestinationOptionsRequestEc2QuerySerializer()
      : super('DestinationOptionsRequest');

  @override
  Iterable<Type> get types => const [
        DestinationOptionsRequest,
        _$DestinationOptionsRequest,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DestinationOptionsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DestinationOptionsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'FileFormat':
          if (value != null) {
            result.fileFormat = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.DestinationFileFormat),
            ) as _i2.DestinationFileFormat);
          }
          break;
        case 'HiveCompatiblePartitions':
          result.hiveCompatiblePartitions = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'PerHourPartition':
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
    final payload = (object as DestinationOptionsRequest);
    final result = <Object?>[
      const _i3.XmlElementName(
        'DestinationOptionsRequestResponse',
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
