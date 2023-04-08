// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.export_task_s3_location_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'export_task_s3_location_request.g.dart';

/// Describes the destination for an export image task.
abstract class ExportTaskS3LocationRequest
    with _i1.AWSEquatable<ExportTaskS3LocationRequest>
    implements
        Built<ExportTaskS3LocationRequest, ExportTaskS3LocationRequestBuilder> {
  /// Describes the destination for an export image task.
  factory ExportTaskS3LocationRequest({
    required String s3Bucket,
    String? s3Prefix,
  }) {
    return _$ExportTaskS3LocationRequest._(
      s3Bucket: s3Bucket,
      s3Prefix: s3Prefix,
    );
  }

  /// Describes the destination for an export image task.
  factory ExportTaskS3LocationRequest.build(
          [void Function(ExportTaskS3LocationRequestBuilder) updates]) =
      _$ExportTaskS3LocationRequest;

  const ExportTaskS3LocationRequest._();

  static const List<_i2.SmithySerializer> serializers = [
    ExportTaskS3LocationRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ExportTaskS3LocationRequestBuilder b) {}

  /// The destination Amazon S3 bucket.
  String get s3Bucket;

  /// The prefix (logical hierarchy) in the bucket.
  String? get s3Prefix;
  @override
  List<Object?> get props => [
        s3Bucket,
        s3Prefix,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ExportTaskS3LocationRequest');
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

class ExportTaskS3LocationRequestEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ExportTaskS3LocationRequest> {
  const ExportTaskS3LocationRequestEc2QuerySerializer()
      : super('ExportTaskS3LocationRequest');

  @override
  Iterable<Type> get types => const [
        ExportTaskS3LocationRequest,
        _$ExportTaskS3LocationRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ExportTaskS3LocationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportTaskS3LocationRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'S3Bucket':
          result.s3Bucket = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'S3Prefix':
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
    final payload = (object as ExportTaskS3LocationRequest);
    final result = <Object?>[
      const _i2.XmlElementName(
        'ExportTaskS3LocationRequestResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i2.XmlElementName('S3Bucket'))
      ..add(serializers.serialize(
        payload.s3Bucket,
        specifiedType: const FullType(String),
      ));
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
