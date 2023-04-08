// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.import_volume_task_details; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/disk_image_description.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/disk_image_volume_description.dart'
    as _i4;

part 'import_volume_task_details.g.dart';

/// Describes an import volume task.
abstract class ImportVolumeTaskDetails
    with _i1.AWSEquatable<ImportVolumeTaskDetails>
    implements Built<ImportVolumeTaskDetails, ImportVolumeTaskDetailsBuilder> {
  /// Describes an import volume task.
  factory ImportVolumeTaskDetails({
    String? availabilityZone,
    _i2.Int64? bytesConverted,
    String? description,
    _i3.DiskImageDescription? image,
    _i4.DiskImageVolumeDescription? volume,
  }) {
    bytesConverted ??= _i2.Int64.ZERO;
    return _$ImportVolumeTaskDetails._(
      availabilityZone: availabilityZone,
      bytesConverted: bytesConverted,
      description: description,
      image: image,
      volume: volume,
    );
  }

  /// Describes an import volume task.
  factory ImportVolumeTaskDetails.build(
          [void Function(ImportVolumeTaskDetailsBuilder) updates]) =
      _$ImportVolumeTaskDetails;

  const ImportVolumeTaskDetails._();

  static const List<_i5.SmithySerializer> serializers = [
    ImportVolumeTaskDetailsEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ImportVolumeTaskDetailsBuilder b) {
    b.bytesConverted = _i2.Int64.ZERO;
  }

  /// The Availability Zone where the resulting volume will reside.
  String? get availabilityZone;

  /// The number of bytes converted so far.
  _i2.Int64 get bytesConverted;

  /// The description you provided when starting the import volume task.
  String? get description;

  /// The image.
  _i3.DiskImageDescription? get image;

  /// The volume.
  _i4.DiskImageVolumeDescription? get volume;
  @override
  List<Object?> get props => [
        availabilityZone,
        bytesConverted,
        description,
        image,
        volume,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ImportVolumeTaskDetails');
    helper.add(
      'availabilityZone',
      availabilityZone,
    );
    helper.add(
      'bytesConverted',
      bytesConverted,
    );
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

class ImportVolumeTaskDetailsEc2QuerySerializer
    extends _i5.StructuredSmithySerializer<ImportVolumeTaskDetails> {
  const ImportVolumeTaskDetailsEc2QuerySerializer()
      : super('ImportVolumeTaskDetails');

  @override
  Iterable<Type> get types => const [
        ImportVolumeTaskDetails,
        _$ImportVolumeTaskDetails,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ImportVolumeTaskDetails deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImportVolumeTaskDetailsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'availabilityZone':
          if (value != null) {
            result.availabilityZone = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'bytesConverted':
          result.bytesConverted = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
          break;
        case 'description':
          if (value != null) {
            result.description = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'image':
          if (value != null) {
            result.image.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.DiskImageDescription),
            ) as _i3.DiskImageDescription));
          }
          break;
        case 'volume':
          if (value != null) {
            result.volume.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.DiskImageVolumeDescription),
            ) as _i4.DiskImageVolumeDescription));
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
    final payload = (object as ImportVolumeTaskDetails);
    final result = <Object?>[
      const _i5.XmlElementName(
        'ImportVolumeTaskDetailsResponse',
        _i5.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.availabilityZone != null) {
      result
        ..add(const _i5.XmlElementName('AvailabilityZone'))
        ..add(serializers.serialize(
          payload.availabilityZone!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i5.XmlElementName('BytesConverted'))
      ..add(serializers.serialize(
        payload.bytesConverted,
        specifiedType: const FullType(_i2.Int64),
      ));
    if (payload.description != null) {
      result
        ..add(const _i5.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.image != null) {
      result
        ..add(const _i5.XmlElementName('Image'))
        ..add(serializers.serialize(
          payload.image!,
          specifiedType: const FullType(_i3.DiskImageDescription),
        ));
    }
    if (payload.volume != null) {
      result
        ..add(const _i5.XmlElementName('Volume'))
        ..add(serializers.serialize(
          payload.volume!,
          specifiedType: const FullType(_i4.DiskImageVolumeDescription),
        ));
    }
    return result;
  }
}
