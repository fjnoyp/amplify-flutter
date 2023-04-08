// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.import_image_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i8;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/boot_mode_values.dart' as _i7;
import 'package:smoke_test/src/sdk/src/ec2/model/client_data.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/image_disk_container.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/import_image_license_configuration_request.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart' as _i6;

part 'import_image_request.g.dart';

abstract class ImportImageRequest
    with _i1.HttpInput<ImportImageRequest>, _i2.AWSEquatable<ImportImageRequest>
    implements Built<ImportImageRequest, ImportImageRequestBuilder> {
  factory ImportImageRequest({
    String? architecture,
    _i3.ClientData? clientData,
    String? clientToken,
    String? description,
    List<_i4.ImageDiskContainer>? diskContainers,
    bool? dryRun,
    bool? encrypted,
    String? hypervisor,
    String? kmsKeyId,
    String? licenseType,
    String? platform,
    String? roleName,
    List<_i5.ImportImageLicenseConfigurationRequest>? licenseSpecifications,
    List<_i6.TagSpecification>? tagSpecifications,
    String? usageOperation,
    _i7.BootModeValues? bootMode,
  }) {
    dryRun ??= false;
    encrypted ??= false;
    return _$ImportImageRequest._(
      architecture: architecture,
      clientData: clientData,
      clientToken: clientToken,
      description: description,
      diskContainers:
          diskContainers == null ? null : _i8.BuiltList(diskContainers),
      dryRun: dryRun,
      encrypted: encrypted,
      hypervisor: hypervisor,
      kmsKeyId: kmsKeyId,
      licenseType: licenseType,
      platform: platform,
      roleName: roleName,
      licenseSpecifications: licenseSpecifications == null
          ? null
          : _i8.BuiltList(licenseSpecifications),
      tagSpecifications:
          tagSpecifications == null ? null : _i8.BuiltList(tagSpecifications),
      usageOperation: usageOperation,
      bootMode: bootMode,
    );
  }

  factory ImportImageRequest.build(
          [void Function(ImportImageRequestBuilder) updates]) =
      _$ImportImageRequest;

  const ImportImageRequest._();

  factory ImportImageRequest.fromRequest(
    ImportImageRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ImportImageRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ImportImageRequestBuilder b) {
    b.dryRun = false;
    b.encrypted = false;
  }

  /// The architecture of the virtual machine.
  ///
  /// Valid values: `i386` | `x86_64`
  String? get architecture;

  /// The client-specific data.
  _i3.ClientData? get clientData;

  /// The token to enable idempotency for VM import requests.
  String? get clientToken;

  /// A description string for the import image task.
  String? get description;

  /// Information about the disk containers.
  _i8.BuiltList<_i4.ImageDiskContainer>? get diskContainers;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// Specifies whether the destination AMI of the imported image should be encrypted. The default KMS key for EBS is used unless you specify a non-default KMS key using `KmsKeyId`. For more information, see [Amazon EBS Encryption](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html) in the _Amazon Elastic Compute Cloud User Guide_.
  bool get encrypted;

  /// The target hypervisor platform.
  ///
  /// Valid values: `xen`
  String? get hypervisor;

  /// An identifier for the symmetric KMS key to use when creating the encrypted AMI. This parameter is only required if you want to use a non-default KMS key; if this parameter is not specified, the default KMS key for EBS is used. If a `KmsKeyId` is specified, the `Encrypted` flag must also be set.
  ///
  /// The KMS key identifier may be provided in any of the following formats:
  ///
  /// *   Key ID
  ///
  /// *   Key alias. The alias ARN contains the `arn:aws:kms` namespace, followed by the Region of the key, the Amazon Web Services account ID of the key owner, the `alias` namespace, and then the key alias. For example, arn:aws:kms:_us-east-1_:_012345678910_:alias/_ExampleAlias_.
  ///
  /// *   ARN using key ID. The ID ARN contains the `arn:aws:kms` namespace, followed by the Region of the key, the Amazon Web Services account ID of the key owner, the `key` namespace, and then the key ID. For example, arn:aws:kms:_us-east-1_:_012345678910_:key/_abcd1234-a123-456a-a12b-a123b4cd56ef_.
  ///
  /// *   ARN using key alias. The alias ARN contains the `arn:aws:kms` namespace, followed by the Region of the key, the Amazon Web Services account ID of the key owner, the `alias` namespace, and then the key alias. For example, arn:aws:kms:_us-east-1_:_012345678910_:alias/_ExampleAlias_.
  ///
  ///
  /// Amazon Web Services parses `KmsKeyId` asynchronously, meaning that the action you call may appear to complete even though you provided an invalid identifier. This action will eventually report failure.
  ///
  /// The specified KMS key must exist in the Region that the AMI is being copied to.
  ///
  /// Amazon EBS does not support asymmetric KMS keys.
  String? get kmsKeyId;

  /// The license type to be used for the Amazon Machine Image (AMI) after importing.
  ///
  /// Specify `AWS` to replace the source-system license with an Amazon Web Services license or `BYOL` to retain the source-system license. Leaving this parameter undefined is the same as choosing `AWS` when importing a Windows Server operating system, and the same as choosing `BYOL` when importing a Windows client operating system (such as Windows 10) or a Linux operating system.
  ///
  /// To use `BYOL`, you must have existing licenses with rights to use these licenses in a third party cloud, such as Amazon Web Services. For more information, see [Prerequisites](https://docs.aws.amazon.com/vm-import/latest/userguide/vmimport-image-import.html#prerequisites-image) in the VM Import/Export User Guide.
  String? get licenseType;

  /// The operating system of the virtual machine.
  ///
  /// Valid values: `Windows` | `Linux`
  String? get platform;

  /// The name of the role to use when not using the default role, 'vmimport'.
  String? get roleName;

  /// The ARNs of the license configurations.
  _i8.BuiltList<_i5.ImportImageLicenseConfigurationRequest>?
      get licenseSpecifications;

  /// The tags to apply to the import image task during creation.
  _i8.BuiltList<_i6.TagSpecification>? get tagSpecifications;

  /// The usage operation value. For more information, see [Licensing options](https://docs.aws.amazon.com/vm-import/latest/userguide/vmie_prereqs.html#prerequisites) in the _VM Import/Export User Guide_.
  String? get usageOperation;

  /// The boot mode of the virtual machine.
  _i7.BootModeValues? get bootMode;
  @override
  ImportImageRequest getPayload() => this;
  @override
  List<Object?> get props => [
        architecture,
        clientData,
        clientToken,
        description,
        diskContainers,
        dryRun,
        encrypted,
        hypervisor,
        kmsKeyId,
        licenseType,
        platform,
        roleName,
        licenseSpecifications,
        tagSpecifications,
        usageOperation,
        bootMode,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ImportImageRequest');
    helper.add(
      'architecture',
      architecture,
    );
    helper.add(
      'clientData',
      clientData,
    );
    helper.add(
      'clientToken',
      clientToken,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'diskContainers',
      diskContainers,
    );
    helper.add(
      'dryRun',
      dryRun,
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
      'roleName',
      roleName,
    );
    helper.add(
      'licenseSpecifications',
      licenseSpecifications,
    );
    helper.add(
      'tagSpecifications',
      tagSpecifications,
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

class ImportImageRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ImportImageRequest> {
  const ImportImageRequestEc2QuerySerializer() : super('ImportImageRequest');

  @override
  Iterable<Type> get types => const [
        ImportImageRequest,
        _$ImportImageRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ImportImageRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImportImageRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Architecture':
          if (value != null) {
            result.architecture = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ClientData':
          if (value != null) {
            result.clientData.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.ClientData),
            ) as _i3.ClientData));
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
        case 'Description':
          if (value != null) {
            result.description = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'DiskContainer':
          if (value != null) {
            result.diskContainers.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i8.BuiltList,
                [FullType(_i4.ImageDiskContainer)],
              ),
            ) as _i8.BuiltList<_i4.ImageDiskContainer>));
          }
          break;
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'Encrypted':
          result.encrypted = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'Hypervisor':
          if (value != null) {
            result.hypervisor = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'KmsKeyId':
          if (value != null) {
            result.kmsKeyId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'LicenseType':
          if (value != null) {
            result.licenseType = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Platform':
          if (value != null) {
            result.platform = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'RoleName':
          if (value != null) {
            result.roleName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'LicenseSpecifications':
          if (value != null) {
            result.licenseSpecifications
                .replace((const _i1.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i8.BuiltList,
                [FullType(_i5.ImportImageLicenseConfigurationRequest)],
              ),
            ) as _i8.BuiltList<_i5.ImportImageLicenseConfigurationRequest>));
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
                _i8.BuiltList,
                [FullType(_i6.TagSpecification)],
              ),
            ) as _i8.BuiltList<_i6.TagSpecification>));
          }
          break;
        case 'UsageOperation':
          if (value != null) {
            result.usageOperation = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'BootMode':
          if (value != null) {
            result.bootMode = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i7.BootModeValues),
            ) as _i7.BootModeValues);
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
    final payload = (object as ImportImageRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ImportImageRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.architecture != null) {
      result
        ..add(const _i1.XmlElementName('Architecture'))
        ..add(serializers.serialize(
          payload.architecture!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.clientData != null) {
      result
        ..add(const _i1.XmlElementName('ClientData'))
        ..add(serializers.serialize(
          payload.clientData!,
          specifiedType: const FullType(_i3.ClientData),
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
    if (payload.description != null) {
      result
        ..add(const _i1.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.diskContainers != null) {
      result
        ..add(const _i1.XmlElementName('DiskContainer'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.diskContainers!,
          specifiedType: const FullType.nullable(
            _i8.BuiltList,
            [FullType(_i4.ImageDiskContainer)],
          ),
        ));
    }
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i1.XmlElementName('Encrypted'))
      ..add(serializers.serialize(
        payload.encrypted,
        specifiedType: const FullType(bool),
      ));
    if (payload.hypervisor != null) {
      result
        ..add(const _i1.XmlElementName('Hypervisor'))
        ..add(serializers.serialize(
          payload.hypervisor!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.kmsKeyId != null) {
      result
        ..add(const _i1.XmlElementName('KmsKeyId'))
        ..add(serializers.serialize(
          payload.kmsKeyId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.licenseType != null) {
      result
        ..add(const _i1.XmlElementName('LicenseType'))
        ..add(serializers.serialize(
          payload.licenseType!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.platform != null) {
      result
        ..add(const _i1.XmlElementName('Platform'))
        ..add(serializers.serialize(
          payload.platform!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.roleName != null) {
      result
        ..add(const _i1.XmlElementName('RoleName'))
        ..add(serializers.serialize(
          payload.roleName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.licenseSpecifications != null) {
      result
        ..add(const _i1.XmlElementName('LicenseSpecifications'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.licenseSpecifications!,
          specifiedType: const FullType.nullable(
            _i8.BuiltList,
            [FullType(_i5.ImportImageLicenseConfigurationRequest)],
          ),
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
            _i8.BuiltList,
            [FullType(_i6.TagSpecification)],
          ),
        ));
    }
    if (payload.usageOperation != null) {
      result
        ..add(const _i1.XmlElementName('UsageOperation'))
        ..add(serializers.serialize(
          payload.usageOperation!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.bootMode != null) {
      result
        ..add(const _i1.XmlElementName('BootMode'))
        ..add(serializers.serialize(
          payload.bootMode!,
          specifiedType: const FullType.nullable(_i7.BootModeValues),
        ));
    }
    return result;
  }
}
