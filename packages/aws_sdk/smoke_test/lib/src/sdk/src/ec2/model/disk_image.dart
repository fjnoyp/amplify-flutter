// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.disk_image; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/disk_image_detail.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/volume_detail.dart' as _i3;

part 'disk_image.g.dart';

/// Describes a disk image.
abstract class DiskImage
    with _i1.AWSEquatable<DiskImage>
    implements Built<DiskImage, DiskImageBuilder> {
  /// Describes a disk image.
  factory DiskImage({
    String? description,
    _i2.DiskImageDetail? image,
    _i3.VolumeDetail? volume,
  }) {
    return _$DiskImage._(
      description: description,
      image: image,
      volume: volume,
    );
  }

  /// Describes a disk image.
  factory DiskImage.build([void Function(DiskImageBuilder) updates]) =
      _$DiskImage;

  const DiskImage._();

  static const List<_i4.SmithySerializer> serializers = [
    DiskImageEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DiskImageBuilder b) {}

  /// A description of the disk image.
  String? get description;

  /// Information about the disk image.
  _i2.DiskImageDetail? get image;

  /// Information about the volume.
  _i3.VolumeDetail? get volume;
  @override
  List<Object?> get props => [
        description,
        image,
        volume,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DiskImage');
    helper.add(
      'description',
      description,
    );
    helper.add(
      'image',
      image,
    );
    helper.add(
      'volume',
      volume,
    );
    return helper.toString();
  }
}

class DiskImageEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DiskImage> {
  const DiskImageEc2QuerySerializer() : super('DiskImage');

  @override
  Iterable<Type> get types => const [
        DiskImage,
        _$DiskImage,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DiskImage deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DiskImageBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Description':
          if (value != null) {
            result.description = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Image':
          if (value != null) {
            result.image.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.DiskImageDetail),
            ) as _i2.DiskImageDetail));
          }
          break;
        case 'Volume':
          if (value != null) {
            result.volume.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.VolumeDetail),
            ) as _i3.VolumeDetail));
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
    final payload = (object as DiskImage);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DiskImageResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.description != null) {
      result
        ..add(const _i4.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.image != null) {
      result
        ..add(const _i4.XmlElementName('Image'))
        ..add(serializers.serialize(
          payload.image!,
          specifiedType: const FullType(_i2.DiskImageDetail),
        ));
    }
    if (payload.volume != null) {
      result
        ..add(const _i4.XmlElementName('Volume'))
        ..add(serializers.serialize(
          payload.volume!,
          specifiedType: const FullType(_i3.VolumeDetail),
        ));
    }
    return result;
  }
}
