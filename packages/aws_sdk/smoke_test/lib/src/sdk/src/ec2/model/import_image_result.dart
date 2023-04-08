// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.import_image_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/import_image_license_configuration_response.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/snapshot_detail.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i4;

part 'import_image_result.g.dart';

abstract class ImportImageResult
    with _i1.AWSEquatable<ImportImageResult>
    implements Built<ImportImageResult, ImportImageResultBuilder> {
  factory ImportImageResult({
    String? architecture,
    String? description,
    bool? encrypted,
    String? hypervisor,
    String? imageId,
    String? importTaskId,
    String? kmsKeyId,
    String? licenseType,
    String? platform,
    String? progress,
    List<_i2.SnapshotDetail>? snapshotDetails,
    String? status,
    String? statusMessage,
    List<_i3.ImportImageLicenseConfigurationResponse>? licenseSpecifications,
    List<_i4.Tag>? tags,
    String? usageOperation,
  }) {
    encrypted ??= false;
    return _$ImportImageResult._(
      architecture: architecture,
      description: description,
      encrypted: encrypted,
      hypervisor: hypervisor,
      imageId: imageId,
      importTaskId: importTaskId,
      kmsKeyId: kmsKeyId,
      licenseType: licenseType,
      platform: platform,
      progress: progress,
      snapshotDetails:
          snapshotDetails == null ? null : _i5.BuiltList(snapshotDetails),
      status: status,
      statusMessage: statusMessage,
      licenseSpecifications: licenseSpecifications == null
          ? null
          : _i5.BuiltList(licenseSpecifications),
      tags: tags == null ? null : _i5.BuiltList(tags),
      usageOperation: usageOperation,
    );
  }

  factory ImportImageResult.build(
      [void Function(ImportImageResultBuilder) updates]) = _$ImportImageResult;

  const ImportImageResult._();

  /// Constructs a [ImportImageResult] from a [payload] and [response].
  factory ImportImageResult.fromResponse(
    ImportImageResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i6.SmithySerializer> serializers = [
    ImportImageResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ImportImageResultBuilder b) {
    b.encrypted = false;
  }

  /// The architecture of the virtual machine.
  String? get architecture;

  /// A description of the import task.
  String? get description;

  /// Indicates whether the AMI is encrypted.
  bool get encrypted;

  /// The target hypervisor of the import task.
  String? get hypervisor;

  /// The ID of the Amazon Machine Image (AMI) created by the import task.
  String? get imageId;

  /// The task ID of the import image task.
  String? get importTaskId;

  /// The identifier for the symmetric KMS key that was used to create the encrypted AMI.
  String? get kmsKeyId;

  /// The license type of the virtual machine.
  String? get licenseType;

  /// The operating system of the virtual machine.
  String? get platform;

  /// The progress of the task.
  String? get progress;

  /// Information about the snapshots.
  _i5.BuiltList<_i2.SnapshotDetail>? get snapshotDetails;

  /// A brief status of the task.
  String? get status;

  /// A detailed status message of the import task.
  String? get statusMessage;

  /// The ARNs of the license configurations.
  _i5.BuiltList<_i3.ImportImageLicenseConfigurationResponse>?
      get licenseSpecifications;

  /// Any tags assigned to the import image task.
  _i5.BuiltList<_i4.Tag>? get tags;

  /// The usage operation value.
  String? get usageOperation;
  @override
  List<Object?> get props => [
        architecture,
        description,
        encrypted,
        hypervisor,
        imageId,
        importTaskId,
        kmsKeyId,
        licenseType,
        platform,
        progress,
        snapshotDetails,
        status,
        statusMessage,
        licenseSpecifications,
        tags,
        usageOperation,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ImportImageResult');
    helper.add(
      'architecture',
      architecture,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'encrypted',
      encrypted,
    );
    helper.add(
      'hypervisor',
      hypervisor,
    );
    helper.add(
      'imageId',
      imageId,
    );
    helper.add(
      'importTaskId',
      importTaskId,
    );
    helper.add(
      'kmsKeyId',
      kmsKeyId,
    );
    helper.add(
      'licenseType',
      licenseType,
    );
    helper.add(
      'platform',
      platform,
    );
    helper.add(
      'progress',
      progress,
    );
    helper.add(
      'snapshotDetails',
      snapshotDetails,
    );
    helper.add(
      'status',
      status,
    );
    helper.add(
      'statusMessage',
      statusMessage,
    );
    helper.add(
      'licenseSpecifications',
      licenseSpecifications,
    );
    helper.add(
      'tags',
      tags,
    );
    helper.add(
      'usageOperation',
      usageOperation,
    );
    return helper.toString();
  }
}

class ImportImageResultEc2QuerySerializer
    extends _i6.StructuredSmithySerializer<ImportImageResult> {
  const ImportImageResultEc2QuerySerializer() : super('ImportImageResult');

  @override
  Iterable<Type> get types => const [
        ImportImageResult,
        _$ImportImageResult,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ImportImageResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImportImageResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'architecture':
          if (value != null) {
            result.architecture = (serializers.deserialize(
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
        case 'encrypted':
          result.encrypted = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'hypervisor':
          if (value != null) {
            result.hypervisor = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'imageId':
          if (value != null) {
            result.imageId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'importTaskId':
          if (value != null) {
            result.importTaskId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'kmsKeyId':
          if (value != null) {
            result.kmsKeyId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'licenseType':
          if (value != null) {
            result.licenseType = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'platform':
          if (value != null) {
            result.platform = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'progress':
          if (value != null) {
            result.progress = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'snapshotDetailSet':
          if (value != null) {
            result.snapshotDetails.replace((const _i6.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i6.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(_i2.SnapshotDetail)],
              ),
            ) as _i5.BuiltList<_i2.SnapshotDetail>));
          }
          break;
        case 'status':
          if (value != null) {
            result.status = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'statusMessage':
          if (value != null) {
            result.statusMessage = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'licenseSpecifications':
          if (value != null) {
            result.licenseSpecifications
                .replace((const _i6.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i6.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(_i3.ImportImageLicenseConfigurationResponse)],
              ),
            ) as _i5.BuiltList<_i3.ImportImageLicenseConfigurationResponse>));
          }
          break;
        case 'tagSet':
          if (value != null) {
            result.tags.replace((const _i6.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i6.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(_i4.Tag)],
              ),
            ) as _i5.BuiltList<_i4.Tag>));
          }
          break;
        case 'usageOperation':
          if (value != null) {
            result.usageOperation = (serializers.deserialize(
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
    final payload = (object as ImportImageResult);
    final result = <Object?>[
      const _i6.XmlElementName(
        'ImportImageResultResponse',
        _i6.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.architecture != null) {
      result
        ..add(const _i6.XmlElementName('Architecture'))
        ..add(serializers.serialize(
          payload.architecture!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.description != null) {
      result
        ..add(const _i6.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i6.XmlElementName('Encrypted'))
      ..add(serializers.serialize(
        payload.encrypted,
        specifiedType: const FullType(bool),
      ));
    if (payload.hypervisor != null) {
      result
        ..add(const _i6.XmlElementName('Hypervisor'))
        ..add(serializers.serialize(
          payload.hypervisor!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.imageId != null) {
      result
        ..add(const _i6.XmlElementName('ImageId'))
        ..add(serializers.serialize(
          payload.imageId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.importTaskId != null) {
      result
        ..add(const _i6.XmlElementName('ImportTaskId'))
        ..add(serializers.serialize(
          payload.importTaskId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.kmsKeyId != null) {
      result
        ..add(const _i6.XmlElementName('KmsKeyId'))
        ..add(serializers.serialize(
          payload.kmsKeyId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.licenseType != null) {
      result
        ..add(const _i6.XmlElementName('LicenseType'))
        ..add(serializers.serialize(
          payload.licenseType!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.platform != null) {
      result
        ..add(const _i6.XmlElementName('Platform'))
        ..add(serializers.serialize(
          payload.platform!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.progress != null) {
      result
        ..add(const _i6.XmlElementName('Progress'))
        ..add(serializers.serialize(
          payload.progress!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.snapshotDetails != null) {
      result
        ..add(const _i6.XmlElementName('SnapshotDetailSet'))
        ..add(const _i6.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i6.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.snapshotDetails!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i2.SnapshotDetail)],
          ),
        ));
    }
    if (payload.status != null) {
      result
        ..add(const _i6.XmlElementName('Status'))
        ..add(serializers.serialize(
          payload.status!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.statusMessage != null) {
      result
        ..add(const _i6.XmlElementName('StatusMessage'))
        ..add(serializers.serialize(
          payload.statusMessage!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.licenseSpecifications != null) {
      result
        ..add(const _i6.XmlElementName('LicenseSpecifications'))
        ..add(const _i6.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i6.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.licenseSpecifications!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i3.ImportImageLicenseConfigurationResponse)],
          ),
        ));
    }
    if (payload.tags != null) {
      result
        ..add(const _i6.XmlElementName('TagSet'))
        ..add(const _i6.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i6.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tags!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i4.Tag)],
          ),
        ));
    }
    if (payload.usageOperation != null) {
      result
        ..add(const _i6.XmlElementName('UsageOperation'))
        ..add(serializers.serialize(
          payload.usageOperation!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
