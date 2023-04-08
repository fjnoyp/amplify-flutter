// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_fpga_image_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/storage_location.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart' as _i4;

part 'create_fpga_image_request.g.dart';

abstract class CreateFpgaImageRequest
    with
        _i1.HttpInput<CreateFpgaImageRequest>,
        _i2.AWSEquatable<CreateFpgaImageRequest>
    implements Built<CreateFpgaImageRequest, CreateFpgaImageRequestBuilder> {
  factory CreateFpgaImageRequest({
    bool? dryRun,
    required _i3.StorageLocation inputStorageLocation,
    _i3.StorageLocation? logsStorageLocation,
    String? description,
    String? name,
    String? clientToken,
    List<_i4.TagSpecification>? tagSpecifications,
  }) {
    dryRun ??= false;
    return _$CreateFpgaImageRequest._(
      dryRun: dryRun,
      inputStorageLocation: inputStorageLocation,
      logsStorageLocation: logsStorageLocation,
      description: description,
      name: name,
      clientToken: clientToken,
      tagSpecifications:
          tagSpecifications == null ? null : _i5.BuiltList(tagSpecifications),
    );
  }

  factory CreateFpgaImageRequest.build(
          [void Function(CreateFpgaImageRequestBuilder) updates]) =
      _$CreateFpgaImageRequest;

  const CreateFpgaImageRequest._();

  factory CreateFpgaImageRequest.fromRequest(
    CreateFpgaImageRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    CreateFpgaImageRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateFpgaImageRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The location of the encrypted design checkpoint in Amazon S3. The input must be a tarball.
  _i3.StorageLocation get inputStorageLocation;

  /// The location in Amazon S3 for the output logs.
  _i3.StorageLocation? get logsStorageLocation;

  /// A description for the AFI.
  String? get description;

  /// A name for the AFI.
  String? get name;

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [Ensuring Idempotency](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html).
  String? get clientToken;

  /// The tags to apply to the FPGA image during creation.
  _i5.BuiltList<_i4.TagSpecification>? get tagSpecifications;
  @override
  CreateFpgaImageRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        inputStorageLocation,
        logsStorageLocation,
        description,
        name,
        clientToken,
        tagSpecifications,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateFpgaImageRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'inputStorageLocation',
      inputStorageLocation,
    );
    helper.add(
      'logsStorageLocation',
      logsStorageLocation,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'name',
      name,
    );
    helper.add(
      'clientToken',
      clientToken,
    );
    helper.add(
      'tagSpecifications',
      tagSpecifications,
    );
    return helper.toString();
  }
}

class CreateFpgaImageRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateFpgaImageRequest> {
  const CreateFpgaImageRequestEc2QuerySerializer()
      : super('CreateFpgaImageRequest');

  @override
  Iterable<Type> get types => const [
        CreateFpgaImageRequest,
        _$CreateFpgaImageRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateFpgaImageRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateFpgaImageRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'InputStorageLocation':
          result.inputStorageLocation.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.StorageLocation),
          ) as _i3.StorageLocation));
          break;
        case 'LogsStorageLocation':
          if (value != null) {
            result.logsStorageLocation.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.StorageLocation),
            ) as _i3.StorageLocation));
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
        case 'Name':
          if (value != null) {
            result.name = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ClientToken':
          if (value != null) {
            result.clientToken = (serializers.deserialize(
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
                _i5.BuiltList,
                [FullType(_i4.TagSpecification)],
              ),
            ) as _i5.BuiltList<_i4.TagSpecification>));
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
    final payload = (object as CreateFpgaImageRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'CreateFpgaImageRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i1.XmlElementName('InputStorageLocation'))
      ..add(serializers.serialize(
        payload.inputStorageLocation,
        specifiedType: const FullType(_i3.StorageLocation),
      ));
    if (payload.logsStorageLocation != null) {
      result
        ..add(const _i1.XmlElementName('LogsStorageLocation'))
        ..add(serializers.serialize(
          payload.logsStorageLocation!,
          specifiedType: const FullType(_i3.StorageLocation),
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
    if (payload.name != null) {
      result
        ..add(const _i1.XmlElementName('Name'))
        ..add(serializers.serialize(
          payload.name!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.clientToken != null) {
      result
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          payload.clientToken!,
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
            _i5.BuiltList,
            [FullType(_i4.TagSpecification)],
          ),
        ));
    }
    return result;
  }
}
