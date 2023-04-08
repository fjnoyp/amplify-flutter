// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.disk_image_description; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i3;
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/disk_image_format.dart' as _i2;

part 'disk_image_description.g.dart';

/// Describes a disk image.
abstract class DiskImageDescription
    with _i1.AWSEquatable<DiskImageDescription>
    implements Built<DiskImageDescription, DiskImageDescriptionBuilder> {
  /// Describes a disk image.
  factory DiskImageDescription({
    String? checksum,
    _i2.DiskImageFormat? format,
    String? importManifestUrl,
    _i3.Int64? size,
  }) {
    size ??= _i3.Int64.ZERO;
    return _$DiskImageDescription._(
      checksum: checksum,
      format: format,
      importManifestUrl: importManifestUrl,
      size: size,
    );
  }

  /// Describes a disk image.
  factory DiskImageDescription.build(
          [void Function(DiskImageDescriptionBuilder) updates]) =
      _$DiskImageDescription;

  const DiskImageDescription._();

  static const List<_i4.SmithySerializer> serializers = [
    DiskImageDescriptionEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DiskImageDescriptionBuilder b) {
    b.size = _i3.Int64.ZERO;
  }

  /// The checksum computed for the disk image.
  String? get checksum;

  /// The disk image format.
  _i2.DiskImageFormat? get format;

  /// A presigned URL for the import manifest stored in Amazon S3. For information about creating a presigned URL for an Amazon S3 object, read the "Query String Request Authentication Alternative" section of the [Authenticating REST Requests](https://docs.aws.amazon.com/AmazonS3/latest/dev/RESTAuthentication.html) topic in the _Amazon Simple Storage Service Developer Guide_.
  ///
  /// For information about the import manifest referenced by this API action, see [VM Import Manifest](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/manifest.html).
  String? get importManifestUrl;

  /// The size of the disk image, in GiB.
  _i3.Int64 get size;
  @override
  List<Object?> get props => [
        checksum,
        format,
        importManifestUrl,
        size,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DiskImageDescription');
    helper.add(
      'checksum',
      checksum,
    );
    helper.add(
      'format',
      format,
    );
    helper.add(
      'importManifestUrl',
      importManifestUrl,
    );
    helper.add(
      'size',
      size,
    );
    return helper.toString();
  }
}

class DiskImageDescriptionEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DiskImageDescription> {
  const DiskImageDescriptionEc2QuerySerializer()
      : super('DiskImageDescription');

  @override
  Iterable<Type> get types => const [
        DiskImageDescription,
        _$DiskImageDescription,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DiskImageDescription deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DiskImageDescriptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'checksum':
          if (value != null) {
            result.checksum = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'format':
          if (value != null) {
            result.format = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.DiskImageFormat),
            ) as _i2.DiskImageFormat);
          }
          break;
        case 'importManifestUrl':
          if (value != null) {
            result.importManifestUrl = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'size':
          result.size = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i3.Int64),
          ) as _i3.Int64);
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
    final payload = (object as DiskImageDescription);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DiskImageDescriptionResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.checksum != null) {
      result
        ..add(const _i4.XmlElementName('Checksum'))
        ..add(serializers.serialize(
          payload.checksum!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.format != null) {
      result
        ..add(const _i4.XmlElementName('Format'))
        ..add(serializers.serialize(
          payload.format!,
          specifiedType: const FullType.nullable(_i2.DiskImageFormat),
        ));
    }
    if (payload.importManifestUrl != null) {
      result
        ..add(const _i4.XmlElementName('ImportManifestUrl'))
        ..add(serializers.serialize(
          payload.importManifestUrl!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i4.XmlElementName('Size'))
      ..add(serializers.serialize(
        payload.size,
        specifiedType: const FullType(_i3.Int64),
      ));
    return result;
  }
}
