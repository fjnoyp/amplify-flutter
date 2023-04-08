// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.export_image_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/disk_image_format.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/export_task_s3_location_request.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart' as _i5;

part 'export_image_request.g.dart';

abstract class ExportImageRequest
    with _i1.HttpInput<ExportImageRequest>, _i2.AWSEquatable<ExportImageRequest>
    implements Built<ExportImageRequest, ExportImageRequestBuilder> {
  factory ExportImageRequest({
    String? clientToken,
    String? description,
    required _i3.DiskImageFormat diskImageFormat,
    bool? dryRun,
    required String imageId,
    required _i4.ExportTaskS3LocationRequest s3ExportLocation,
    String? roleName,
    List<_i5.TagSpecification>? tagSpecifications,
  }) {
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      clientToken ??= '00000000-0000-4000-8000-000000000000';
    } else {
      clientToken ??= _i2.uuid(secure: true);
    }
    dryRun ??= false;
    return _$ExportImageRequest._(
      clientToken: clientToken,
      description: description,
      diskImageFormat: diskImageFormat,
      dryRun: dryRun,
      imageId: imageId,
      s3ExportLocation: s3ExportLocation,
      roleName: roleName,
      tagSpecifications:
          tagSpecifications == null ? null : _i6.BuiltList(tagSpecifications),
    );
  }

  factory ExportImageRequest.build(
          [void Function(ExportImageRequestBuilder) updates]) =
      _$ExportImageRequest;

  const ExportImageRequest._();

  factory ExportImageRequest.fromRequest(
    ExportImageRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ExportImageRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ExportImageRequestBuilder b) {
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      b.clientToken = '00000000-0000-4000-8000-000000000000';
    } else {
      b.clientToken = _i2.uuid(secure: true);
    }
    b.dryRun = false;
  }

  /// Token to enable idempotency for export image requests.
  String? get clientToken;

  /// A description of the image being exported. The maximum length is 255 characters.
  String? get description;

  /// The disk image format.
  _i3.DiskImageFormat get diskImageFormat;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the image.
  String get imageId;

  /// The Amazon S3 bucket for the destination image. The destination bucket must exist.
  _i4.ExportTaskS3LocationRequest get s3ExportLocation;

  /// The name of the role that grants VM Import/Export permission to export images to your Amazon S3 bucket. If this parameter is not specified, the default role is named 'vmimport'.
  String? get roleName;

  /// The tags to apply to the export image task during creation.
  _i6.BuiltList<_i5.TagSpecification>? get tagSpecifications;
  @override
  ExportImageRequest getPayload() => this;
  @override
  List<Object?> get props => [
        clientToken,
        description,
        diskImageFormat,
        dryRun,
        imageId,
        s3ExportLocation,
        roleName,
        tagSpecifications,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ExportImageRequest');
    helper.add(
      'clientToken',
      clientToken,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'diskImageFormat',
      diskImageFormat,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'imageId',
      imageId,
    );
    helper.add(
      's3ExportLocation',
      s3ExportLocation,
    );
    helper.add(
      'roleName',
      roleName,
    );
    helper.add(
      'tagSpecifications',
      tagSpecifications,
    );
    return helper.toString();
  }
}

class ExportImageRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ExportImageRequest> {
  const ExportImageRequestEc2QuerySerializer() : super('ExportImageRequest');

  @override
  Iterable<Type> get types => const [
        ExportImageRequest,
        _$ExportImageRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ExportImageRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportImageRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ClientToken':
          if (value != null) {
            result.clientToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Description':
          if (value != null) {
            result.description = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'DiskImageFormat':
          result.diskImageFormat = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i3.DiskImageFormat),
          ) as _i3.DiskImageFormat);
          break;
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'ImageId':
          result.imageId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'S3ExportLocation':
          result.s3ExportLocation.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.ExportTaskS3LocationRequest),
          ) as _i4.ExportTaskS3LocationRequest));
          break;
        case 'RoleName':
          if (value != null) {
            result.roleName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'TagSpecification':
          if (value != null) {
            result.tagSpecifications.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(_i5.TagSpecification)],
              ),
            ) as _i6.BuiltList<_i5.TagSpecification>));
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
    final payload = (object as ExportImageRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ExportImageRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.clientToken != null) {
      result
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          payload.clientToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.description != null) {
      result
        ..add(const _i1.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('DiskImageFormat'))
      ..add(serializers.serialize(
        payload.diskImageFormat,
        specifiedType: const FullType.nullable(_i3.DiskImageFormat),
      ));
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i1.XmlElementName('ImageId'))
      ..add(serializers.serialize(
        payload.imageId,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('S3ExportLocation'))
      ..add(serializers.serialize(
        payload.s3ExportLocation,
        specifiedType: const FullType(_i4.ExportTaskS3LocationRequest),
      ));
    if (payload.roleName != null) {
      result
        ..add(const _i1.XmlElementName('RoleName'))
        ..add(serializers.serialize(
          payload.roleName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.tagSpecifications != null) {
      result
        ..add(const _i1.XmlElementName('TagSpecification'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tagSpecifications!,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(_i5.TagSpecification)],
          ),
        ));
    }
    return result;
  }
}
