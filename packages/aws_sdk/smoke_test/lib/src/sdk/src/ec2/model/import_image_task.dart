// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.import_image_task; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i7;
import 'package:smoke_test/src/sdk/src/ec2/model/boot_mode_values.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/import_image_license_configuration_response.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/snapshot_detail.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i3;

part 'import_image_task.g.dart';

/// Describes an import image task.
abstract class ImportImageTask
    with _i1.AWSEquatable<ImportImageTask>
    implements Built<ImportImageTask, ImportImageTaskBuilder> {
  /// Describes an import image task.
  factory ImportImageTask({
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
    List<_i3.Tag>? tags,
    List<_i4.ImportImageLicenseConfigurationResponse>? licenseSpecifications,
    String? usageOperation,
    _i5.BootModeValues? bootMode,
  }) {
    encrypted ??= false;
    return _$ImportImageTask._(
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
          snapshotDetails == null ? null : _i6.BuiltList(snapshotDetails),
      status: status,
      statusMessage: statusMessage,
      tags: tags == null ? null : _i6.BuiltList(tags),
      licenseSpecifications: licenseSpecifications == null
          ? null
          : _i6.BuiltList(licenseSpecifications),
      usageOperation: usageOperation,
      bootMode: bootMode,
    );
  }

  /// Describes an import image task.
  factory ImportImageTask.build(
      [void Function(ImportImageTaskBuilder) updates]) = _$ImportImageTask;

  const ImportImageTask._();

  static const List<_i7.SmithySerializer> serializers = [
    ImportImageTaskEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ImportImageTaskBuilder b) {
    b.encrypted = false;
  }

  /// The architecture of the virtual machine.
  ///
  /// Valid values: `i386` | `x86_64` | `arm64`
  String? get architecture;

  /// A description of the import task.
  String? get description;

  /// Indicates whether the image is encrypted.
  bool get encrypted;

  /// The target hypervisor for the import task.
  ///
  /// Valid values: `xen`
  String? get hypervisor;

  /// The ID of the Amazon Machine Image (AMI) of the imported virtual machine.
  String? get imageId;

  /// The ID of the import image task.
  String? get importTaskId;

  /// The identifier for the KMS key that was used to create the encrypted image.
  String? get kmsKeyId;

  /// The license type of the virtual machine.
  String? get licenseType;

  /// The description string for the import image task.
  String? get platform;

  /// The percentage of progress of the import image task.
  String? get progress;

  /// Information about the snapshots.
  _i6.BuiltList<_i2.SnapshotDetail>? get snapshotDetails;

  /// A brief status for the import image task.
  String? get status;

  /// A descriptive status message for the import image task.
  String? get statusMessage;

  /// The tags for the import image task.
  _i6.BuiltList<_i3.Tag>? get tags;

  /// The ARNs of the license configurations that are associated with the import image task.
  _i6.BuiltList<_i4.ImportImageLicenseConfigurationResponse>?
      get licenseSpecifications;

  /// The usage operation value.
  String? get usageOperation;

  /// The boot mode of the virtual machine.
  _i5.BootModeValues? get bootMode;
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
        tags,
        licenseSpecifications,
        usageOperation,
        bootMode,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ImportImageTask');
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
      'tags',
      tags,
    );
    helper.add(
      'licenseSpecifications',
      licenseSpecifications,
    );
    helper.add(
      'usageOperation',
      usageOperation,
    );
    helper.add(
      'bootMode',
      bootMode,
    );
    return helper.toString();
  }
}

class ImportImageTaskEc2QuerySerializer
    extends _i7.StructuredSmithySerializer<ImportImageTask> {
  const ImportImageTaskEc2QuerySerializer() : super('ImportImageTask');

  @override
  Iterable<Type> get types => const [
        ImportImageTask,
        _$ImportImageTask,
      ];
  @override
  Iterable<_i7.ShapeId> get supportedProtocols => const [
        _i7.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ImportImageTask deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImportImageTaskBuilder();
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
            result.snapshotDetails.replace((const _i7.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i7.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(_i2.SnapshotDetail)],
              ),
            ) as _i6.BuiltList<_i2.SnapshotDetail>));
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
        case 'tagSet':
          if (value != null) {
            result.tags.replace((const _i7.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i7.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(_i3.Tag)],
              ),
            ) as _i6.BuiltList<_i3.Tag>));
          }
          break;
        case 'licenseSpecifications':
          if (value != null) {
            result.licenseSpecifications
                .replace((const _i7.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i7.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(_i4.ImportImageLicenseConfigurationResponse)],
              ),
            ) as _i6.BuiltList<_i4.ImportImageLicenseConfigurationResponse>));
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
        case 'bootMode':
          if (value != null) {
            result.bootMode = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.BootModeValues),
            ) as _i5.BootModeValues);
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
    final payload = (object as ImportImageTask);
    final result = <Object?>[
      const _i7.XmlElementName(
        'ImportImageTaskResponse',
        _i7.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.architecture != null) {
      result
        ..add(const _i7.XmlElementName('Architecture'))
        ..add(serializers.serialize(
          payload.architecture!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.description != null) {
      result
        ..add(const _i7.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i7.XmlElementName('Encrypted'))
      ..add(serializers.serialize(
        payload.encrypted,
        specifiedType: const FullType(bool),
      ));
    if (payload.hypervisor != null) {
      result
        ..add(const _i7.XmlElementName('Hypervisor'))
        ..add(serializers.serialize(
          payload.hypervisor!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.imageId != null) {
      result
        ..add(const _i7.XmlElementName('ImageId'))
        ..add(serializers.serialize(
          payload.imageId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.importTaskId != null) {
      result
        ..add(const _i7.XmlElementName('ImportTaskId'))
        ..add(serializers.serialize(
          payload.importTaskId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.kmsKeyId != null) {
      result
        ..add(const _i7.XmlElementName('KmsKeyId'))
        ..add(serializers.serialize(
          payload.kmsKeyId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.licenseType != null) {
      result
        ..add(const _i7.XmlElementName('LicenseType'))
        ..add(serializers.serialize(
          payload.licenseType!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.platform != null) {
      result
        ..add(const _i7.XmlElementName('Platform'))
        ..add(serializers.serialize(
          payload.platform!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.progress != null) {
      result
        ..add(const _i7.XmlElementName('Progress'))
        ..add(serializers.serialize(
          payload.progress!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.snapshotDetails != null) {
      result
        ..add(const _i7.XmlElementName('SnapshotDetailSet'))
        ..add(const _i7.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i7.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.snapshotDetails!,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(_i2.SnapshotDetail)],
          ),
        ));
    }
    if (payload.status != null) {
      result
        ..add(const _i7.XmlElementName('Status'))
        ..add(serializers.serialize(
          payload.status!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.statusMessage != null) {
      result
        ..add(const _i7.XmlElementName('StatusMessage'))
        ..add(serializers.serialize(
          payload.statusMessage!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.tags != null) {
      result
        ..add(const _i7.XmlElementName('TagSet'))
        ..add(const _i7.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i7.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tags!,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(_i3.Tag)],
          ),
        ));
    }
    if (payload.licenseSpecifications != null) {
      result
        ..add(const _i7.XmlElementName('LicenseSpecifications'))
        ..add(const _i7.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i7.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.licenseSpecifications!,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(_i4.ImportImageLicenseConfigurationResponse)],
          ),
        ));
    }
    if (payload.usageOperation != null) {
      result
        ..add(const _i7.XmlElementName('UsageOperation'))
        ..add(serializers.serialize(
          payload.usageOperation!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.bootMode != null) {
      result
        ..add(const _i7.XmlElementName('BootMode'))
        ..add(serializers.serialize(
          payload.bootMode!,
          specifiedType: const FullType.nullable(_i5.BootModeValues),
        ));
    }
    return result;
  }
}
