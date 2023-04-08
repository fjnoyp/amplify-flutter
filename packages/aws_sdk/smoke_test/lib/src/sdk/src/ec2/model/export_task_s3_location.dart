// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.export_task_s3_location; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'export_task_s3_location.g.dart';

/// Describes the destination for an export image task.
abstract class ExportTaskS3Location
    with _i1.AWSEquatable<ExportTaskS3Location>
    implements Built<ExportTaskS3Location, ExportTaskS3LocationBuilder> {
  /// Describes the destination for an export image task.
  factory ExportTaskS3Location({
    String? s3Bucket,
    String? s3Prefix,
  }) {
    return _$ExportTaskS3Location._(
      s3Bucket: s3Bucket,
      s3Prefix: s3Prefix,
    );
  }

  /// Describes the destination for an export image task.
  factory ExportTaskS3Location.build(
          [void Function(ExportTaskS3LocationBuilder) updates]) =
      _$ExportTaskS3Location;

  const ExportTaskS3Location._();

  static const List<_i2.SmithySerializer> serializers = [
    ExportTaskS3LocationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ExportTaskS3LocationBuilder b) {}

  /// The destination Amazon S3 bucket.
  String? get s3Bucket;

  /// The prefix (logical hierarchy) in the bucket.
  String? get s3Prefix;
  @override
  List<Object?> get props => [
        s3Bucket,
        s3Prefix,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ExportTaskS3Location');
    helper.add(
      's3Bucket',
      s3Bucket,
    );
    helper.add(
      's3Prefix',
      s3Prefix,
    );
    return helper.toString();
  }
}

class ExportTaskS3LocationEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ExportTaskS3Location> {
  const ExportTaskS3LocationEc2QuerySerializer()
      : super('ExportTaskS3Location');

  @override
  Iterable<Type> get types => const [
        ExportTaskS3Location,
        _$ExportTaskS3Location,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ExportTaskS3Location deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportTaskS3LocationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 's3Bucket':
          if (value != null) {
            result.s3Bucket = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 's3Prefix':
          if (value != null) {
            result.s3Prefix = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as ExportTaskS3Location);
    final result = <Object?>[
      const _i2.XmlElementName(
        'ExportTaskS3LocationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.s3Bucket != null) {
      result
        ..add(const _i2.XmlElementName('S3Bucket'))
        ..add(serializers.serialize(
          payload.s3Bucket!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.s3Prefix != null) {
      result
        ..add(const _i2.XmlElementName('S3Prefix'))
        ..add(serializers.serialize(
          payload.s3Prefix!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
