// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.image_recycle_bin_info; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'image_recycle_bin_info.g.dart';

/// Information about an AMI that is currently in the Recycle Bin.
abstract class ImageRecycleBinInfo
    with _i1.AWSEquatable<ImageRecycleBinInfo>
    implements Built<ImageRecycleBinInfo, ImageRecycleBinInfoBuilder> {
  /// Information about an AMI that is currently in the Recycle Bin.
  factory ImageRecycleBinInfo({
    String? imageId,
    String? name,
    String? description,
    DateTime? recycleBinEnterTime,
    DateTime? recycleBinExitTime,
  }) {
    return _$ImageRecycleBinInfo._(
      imageId: imageId,
      name: name,
      description: description,
      recycleBinEnterTime: recycleBinEnterTime,
      recycleBinExitTime: recycleBinExitTime,
    );
  }

  /// Information about an AMI that is currently in the Recycle Bin.
  factory ImageRecycleBinInfo.build(
          [void Function(ImageRecycleBinInfoBuilder) updates]) =
      _$ImageRecycleBinInfo;

  const ImageRecycleBinInfo._();

  static const List<_i2.SmithySerializer> serializers = [
    ImageRecycleBinInfoEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ImageRecycleBinInfoBuilder b) {}

  /// The ID of the AMI.
  String? get imageId;

  /// The name of the AMI.
  String? get name;

  /// The description of the AMI.
  String? get description;

  /// The date and time when the AMI entered the Recycle Bin.
  DateTime? get recycleBinEnterTime;

  /// The date and time when the AMI is to be permanently deleted from the Recycle Bin.
  DateTime? get recycleBinExitTime;
  @override
  List<Object?> get props => [
        imageId,
        name,
        description,
        recycleBinEnterTime,
        recycleBinExitTime,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ImageRecycleBinInfo');
    helper.add(
      'imageId',
      imageId,
    );
    helper.add(
      'name',
      name,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'recycleBinEnterTime',
      recycleBinEnterTime,
    );
    helper.add(
      'recycleBinExitTime',
      recycleBinExitTime,
    );
    return helper.toString();
  }
}

class ImageRecycleBinInfoEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ImageRecycleBinInfo> {
  const ImageRecycleBinInfoEc2QuerySerializer() : super('ImageRecycleBinInfo');

  @override
  Iterable<Type> get types => const [
        ImageRecycleBinInfo,
        _$ImageRecycleBinInfo,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ImageRecycleBinInfo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImageRecycleBinInfoBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'imageId':
          if (value != null) {
            result.imageId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'name':
          if (value != null) {
            result.name = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'description':
          if (value != null) {
            result.description = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'recycleBinEnterTime':
          if (value != null) {
            result.recycleBinEnterTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'recycleBinExitTime':
          if (value != null) {
            result.recycleBinExitTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
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
    final payload = (object as ImageRecycleBinInfo);
    final result = <Object?>[
      const _i2.XmlElementName(
        'ImageRecycleBinInfoResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.imageId != null) {
      result
        ..add(const _i2.XmlElementName('ImageId'))
        ..add(serializers.serialize(
          payload.imageId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.name != null) {
      result
        ..add(const _i2.XmlElementName('Name'))
        ..add(serializers.serialize(
          payload.name!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.description != null) {
      result
        ..add(const _i2.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.recycleBinEnterTime != null) {
      result
        ..add(const _i2.XmlElementName('RecycleBinEnterTime'))
        ..add(serializers.serialize(
          payload.recycleBinEnterTime!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.recycleBinExitTime != null) {
      result
        ..add(const _i2.XmlElementName('RecycleBinExitTime'))
        ..add(serializers.serialize(
          payload.recycleBinExitTime!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    return result;
  }
}
