// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.image_disk_container; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/user_bucket.dart' as _i2;

part 'image_disk_container.g.dart';

/// Describes the disk container object for an import image task.
abstract class ImageDiskContainer
    with _i1.AWSEquatable<ImageDiskContainer>
    implements Built<ImageDiskContainer, ImageDiskContainerBuilder> {
  /// Describes the disk container object for an import image task.
  factory ImageDiskContainer({
    String? description,
    String? deviceName,
    String? format,
    String? snapshotId,
    String? url,
    _i2.UserBucket? userBucket,
  }) {
    return _$ImageDiskContainer._(
      description: description,
      deviceName: deviceName,
      format: format,
      snapshotId: snapshotId,
      url: url,
      userBucket: userBucket,
    );
  }

  /// Describes the disk container object for an import image task.
  factory ImageDiskContainer.build(
          [void Function(ImageDiskContainerBuilder) updates]) =
      _$ImageDiskContainer;

  const ImageDiskContainer._();

  static const List<_i3.SmithySerializer> serializers = [
    ImageDiskContainerEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ImageDiskContainerBuilder b) {}

  /// The description of the disk image.
  String? get description;

  /// The block device mapping for the disk.
  String? get deviceName;

  /// The format of the disk image being imported.
  ///
  /// Valid values: `OVA` | `VHD` | `VHDX` | `VMDK` | `RAW`
  String? get format;

  /// The ID of the EBS snapshot to be used for importing the snapshot.
  String? get snapshotId;

  /// The URL to the Amazon S3-based disk image being imported. The URL can either be a https URL (https://..) or an Amazon S3 URL (s3://..)
  String? get url;

  /// The S3 bucket for the disk image.
  _i2.UserBucket? get userBucket;
  @override
  List<Object?> get props => [
        description,
        deviceName,
        format,
        snapshotId,
        url,
        userBucket,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ImageDiskContainer');
    helper.add(
      'description',
      description,
    );
    helper.add(
      'deviceName',
      deviceName,
    );
    helper.add(
      'format',
      format,
    );
    helper.add(
      'snapshotId',
      snapshotId,
    );
    helper.add(
      'url',
      url,
    );
    helper.add(
      'userBucket',
      userBucket,
    );
    return helper.toString();
  }
}

class ImageDiskContainerEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ImageDiskContainer> {
  const ImageDiskContainerEc2QuerySerializer() : super('ImageDiskContainer');

  @override
  Iterable<Type> get types => const [
        ImageDiskContainer,
        _$ImageDiskContainer,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ImageDiskContainer deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImageDiskContainerBuilder();
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
        case 'DeviceName':
          if (value != null) {
            result.deviceName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Format':
          if (value != null) {
            result.format = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'SnapshotId':
          if (value != null) {
            result.snapshotId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Url':
          if (value != null) {
            result.url = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'UserBucket':
          if (value != null) {
            result.userBucket.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.UserBucket),
            ) as _i2.UserBucket));
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
    final payload = (object as ImageDiskContainer);
    final result = <Object?>[
      const _i3.XmlElementName(
        'ImageDiskContainerResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.description != null) {
      result
        ..add(const _i3.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.deviceName != null) {
      result
        ..add(const _i3.XmlElementName('DeviceName'))
        ..add(serializers.serialize(
          payload.deviceName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.format != null) {
      result
        ..add(const _i3.XmlElementName('Format'))
        ..add(serializers.serialize(
          payload.format!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.snapshotId != null) {
      result
        ..add(const _i3.XmlElementName('SnapshotId'))
        ..add(serializers.serialize(
          payload.snapshotId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.url != null) {
      result
        ..add(const _i3.XmlElementName('Url'))
        ..add(serializers.serialize(
          payload.url!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.userBucket != null) {
      result
        ..add(const _i3.XmlElementName('UserBucket'))
        ..add(serializers.serialize(
          payload.userBucket!,
          specifiedType: const FullType(_i2.UserBucket),
        ));
    }
    return result;
  }
}
