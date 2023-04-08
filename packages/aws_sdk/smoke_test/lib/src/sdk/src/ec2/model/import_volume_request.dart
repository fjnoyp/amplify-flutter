// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.import_volume_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/disk_image_detail.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/volume_detail.dart' as _i4;

part 'import_volume_request.g.dart';

abstract class ImportVolumeRequest
    with
        _i1.HttpInput<ImportVolumeRequest>,
        _i2.AWSEquatable<ImportVolumeRequest>
    implements Built<ImportVolumeRequest, ImportVolumeRequestBuilder> {
  factory ImportVolumeRequest({
    required String availabilityZone,
    String? description,
    bool? dryRun,
    required _i3.DiskImageDetail image,
    required _i4.VolumeDetail volume,
  }) {
    dryRun ??= false;
    return _$ImportVolumeRequest._(
      availabilityZone: availabilityZone,
      description: description,
      dryRun: dryRun,
      image: image,
      volume: volume,
    );
  }

  factory ImportVolumeRequest.build(
          [void Function(ImportVolumeRequestBuilder) updates]) =
      _$ImportVolumeRequest;

  const ImportVolumeRequest._();

  factory ImportVolumeRequest.fromRequest(
    ImportVolumeRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ImportVolumeRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ImportVolumeRequestBuilder b) {
    b.dryRun = false;
  }

  /// The Availability Zone for the resulting EBS volume.
  String get availabilityZone;

  /// A description of the volume.
  String? get description;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The disk image.
  _i3.DiskImageDetail get image;

  /// The volume size.
  _i4.VolumeDetail get volume;
  @override
  ImportVolumeRequest getPayload() => this;
  @override
  List<Object?> get props => [
        availabilityZone,
        description,
        dryRun,
        image,
        volume,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ImportVolumeRequest');
    helper.add(
      'availabilityZone',
      availabilityZone,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'dryRun',
      dryRun,
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

class ImportVolumeRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ImportVolumeRequest> {
  const ImportVolumeRequestEc2QuerySerializer() : super('ImportVolumeRequest');

  @override
  Iterable<Type> get types => const [
        ImportVolumeRequest,
        _$ImportVolumeRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ImportVolumeRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImportVolumeRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'availabilityZone':
          result.availabilityZone = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'description':
          if (value != null) {
            result.description = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'image':
          result.image.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.DiskImageDetail),
          ) as _i3.DiskImageDetail));
          break;
        case 'volume':
          result.volume.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.VolumeDetail),
          ) as _i4.VolumeDetail));
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
    final payload = (object as ImportVolumeRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ImportVolumeRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('AvailabilityZone'))
      ..add(serializers.serialize(
        payload.availabilityZone,
        specifiedType: const FullType(String),
      ));
    if (payload.description != null) {
      result
        ..add(const _i1.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i1.XmlElementName('Image'))
      ..add(serializers.serialize(
        payload.image,
        specifiedType: const FullType(_i3.DiskImageDetail),
      ));
    result
      ..add(const _i1.XmlElementName('Volume'))
      ..add(serializers.serialize(
        payload.volume,
        specifiedType: const FullType(_i4.VolumeDetail),
      ));
    return result;
  }
}
