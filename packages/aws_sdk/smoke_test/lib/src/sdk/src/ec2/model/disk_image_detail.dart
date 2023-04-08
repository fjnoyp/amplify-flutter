// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.disk_image_detail; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/disk_image_format.dart' as _i3;

part 'disk_image_detail.g.dart';

/// Describes a disk image.
abstract class DiskImageDetail
    with _i1.AWSEquatable<DiskImageDetail>
    implements Built<DiskImageDetail, DiskImageDetailBuilder> {
  /// Describes a disk image.
  factory DiskImageDetail({
    _i2.Int64? bytes,
    required _i3.DiskImageFormat format,
    required String importManifestUrl,
  }) {
    bytes ??= _i2.Int64.ZERO;
    return _$DiskImageDetail._(
      bytes: bytes,
      format: format,
      importManifestUrl: importManifestUrl,
    );
  }

  /// Describes a disk image.
  factory DiskImageDetail.build(
      [void Function(DiskImageDetailBuilder) updates]) = _$DiskImageDetail;

  const DiskImageDetail._();

  static const List<_i4.SmithySerializer> serializers = [
    DiskImageDetailEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DiskImageDetailBuilder b) {
    b.bytes = _i2.Int64.ZERO;
  }

  /// The size of the disk image, in GiB.
  _i2.Int64 get bytes;

  /// The disk image format.
  _i3.DiskImageFormat get format;

  /// A presigned URL for the import manifest stored in Amazon S3 and presented here as an Amazon S3 presigned URL. For information about creating a presigned URL for an Amazon S3 object, read the "Query String Request Authentication Alternative" section of the [Authenticating REST Requests](https://docs.aws.amazon.com/AmazonS3/latest/dev/RESTAuthentication.html) topic in the _Amazon Simple Storage Service Developer Guide_.
  ///
  /// For information about the import manifest referenced by this API action, see [VM Import Manifest](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/manifest.html).
  String get importManifestUrl;
  @override
  List<Object?> get props => [
        bytes,
        format,
        importManifestUrl,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DiskImageDetail');
    helper.add(
      'bytes',
      bytes,
    );
    helper.add(
      'format',
      format,
    );
    helper.add(
      'importManifestUrl',
      importManifestUrl,
    );
    return helper.toString();
  }
}

class DiskImageDetailEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DiskImageDetail> {
  const DiskImageDetailEc2QuerySerializer() : super('DiskImageDetail');

  @override
  Iterable<Type> get types => const [
        DiskImageDetail,
        _$DiskImageDetail,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DiskImageDetail deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DiskImageDetailBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'bytes':
          result.bytes = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
          break;
        case 'format':
          result.format = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i3.DiskImageFormat),
          ) as _i3.DiskImageFormat);
          break;
        case 'importManifestUrl':
          result.importManifestUrl = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as DiskImageDetail);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DiskImageDetailResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i4.XmlElementName('Bytes'))
      ..add(serializers.serialize(
        payload.bytes,
        specifiedType: const FullType(_i2.Int64),
      ));
    result
      ..add(const _i4.XmlElementName('Format'))
      ..add(serializers.serialize(
        payload.format,
        specifiedType: const FullType.nullable(_i3.DiskImageFormat),
      ));
    result
      ..add(const _i4.XmlElementName('ImportManifestUrl'))
      ..add(serializers.serialize(
        payload.importManifestUrl,
        specifiedType: const FullType(String),
      ));
    return result;
  }
}
