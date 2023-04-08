// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_image_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/block_device_mapping.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart' as _i4;

part 'create_image_request.g.dart';

abstract class CreateImageRequest
    with _i1.HttpInput<CreateImageRequest>, _i2.AWSEquatable<CreateImageRequest>
    implements Built<CreateImageRequest, CreateImageRequestBuilder> {
  factory CreateImageRequest({
    List<_i3.BlockDeviceMapping>? blockDeviceMappings,
    String? description,
    bool? dryRun,
    required String instanceId,
    required String name,
    bool? noReboot,
    List<_i4.TagSpecification>? tagSpecifications,
  }) {
    dryRun ??= false;
    noReboot ??= false;
    return _$CreateImageRequest._(
      blockDeviceMappings: blockDeviceMappings == null
          ? null
          : _i5.BuiltList(blockDeviceMappings),
      description: description,
      dryRun: dryRun,
      instanceId: instanceId,
      name: name,
      noReboot: noReboot,
      tagSpecifications:
          tagSpecifications == null ? null : _i5.BuiltList(tagSpecifications),
    );
  }

  factory CreateImageRequest.build(
          [void Function(CreateImageRequestBuilder) updates]) =
      _$CreateImageRequest;

  const CreateImageRequest._();

  factory CreateImageRequest.fromRequest(
    CreateImageRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    CreateImageRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateImageRequestBuilder b) {
    b.dryRun = false;
    b.noReboot = false;
  }

  /// The block device mappings. This parameter cannot be used to modify the encryption status of existing volumes or snapshots. To create an AMI with encrypted snapshots, use the CopyImage action.
  _i5.BuiltList<_i3.BlockDeviceMapping>? get blockDeviceMappings;

  /// A description for the new image.
  String? get description;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the instance.
  String get instanceId;

  /// A name for the new image.
  ///
  /// Constraints: 3-128 alphanumeric characters, parentheses (()), square brackets (\[\]), spaces ( ), periods (.), slashes (/), dashes (-), single quotes ('), at-signs (@), or underscores(_)
  String get name;

  /// By default, when Amazon EC2 creates the new AMI, it reboots the instance so that it can take snapshots of the attached volumes while data is at rest, in order to ensure a consistent state. You can set the `NoReboot` parameter to `true` in the API request, or use the `--no-reboot` option in the CLI to prevent Amazon EC2 from shutting down and rebooting the instance.
  ///
  /// If you choose to bypass the shutdown and reboot process by setting the `NoReboot` parameter to `true` in the API request, or by using the `--no-reboot` option in the CLI, we can't guarantee the file system integrity of the created image.
  ///
  /// Default: `false` (follow standard reboot process)
  bool get noReboot;

  /// The tags to apply to the AMI and snapshots on creation. You can tag the AMI, the snapshots, or both.
  ///
  /// *   To tag the AMI, the value for `ResourceType` must be `image`.
  ///
  /// *   To tag the snapshots that are created of the root volume and of other Amazon EBS volumes that are attached to the instance, the value for `ResourceType` must be `snapshot`. The same tag is applied to all of the snapshots that are created.
  ///
  ///
  /// If you specify other values for `ResourceType`, the request fails.
  ///
  /// To tag an AMI or snapshot after it has been created, see [CreateTags](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateTags.html).
  _i5.BuiltList<_i4.TagSpecification>? get tagSpecifications;
  @override
  CreateImageRequest getPayload() => this;
  @override
  List<Object?> get props => [
        blockDeviceMappings,
        description,
        dryRun,
        instanceId,
        name,
        noReboot,
        tagSpecifications,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateImageRequest');
    helper.add(
      'blockDeviceMappings',
      blockDeviceMappings,
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
      'instanceId',
      instanceId,
    );
    helper.add(
      'name',
      name,
    );
    helper.add(
      'noReboot',
      noReboot,
    );
    helper.add(
      'tagSpecifications',
      tagSpecifications,
    );
    return helper.toString();
  }
}

class CreateImageRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateImageRequest> {
  const CreateImageRequestEc2QuerySerializer() : super('CreateImageRequest');

  @override
  Iterable<Type> get types => const [
        CreateImageRequest,
        _$CreateImageRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateImageRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateImageRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'blockDeviceMapping':
          if (value != null) {
            result.blockDeviceMappings
                .replace((const _i1.XmlBuiltListSerializer(
              memberName: 'BlockDeviceMapping',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(_i3.BlockDeviceMapping)],
              ),
            ) as _i5.BuiltList<_i3.BlockDeviceMapping>));
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
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'instanceId':
          result.instanceId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'name':
          result.name = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'noReboot':
          result.noReboot = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
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
    final payload = (object as CreateImageRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'CreateImageRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.blockDeviceMappings != null) {
      result
        ..add(const _i1.XmlElementName('BlockDeviceMapping'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'BlockDeviceMapping',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.blockDeviceMappings!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i3.BlockDeviceMapping)],
          ),
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
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i1.XmlElementName('InstanceId'))
      ..add(serializers.serialize(
        payload.instanceId,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('Name'))
      ..add(serializers.serialize(
        payload.name,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('NoReboot'))
      ..add(serializers.serialize(
        payload.noReboot,
        specifiedType: const FullType(bool),
      ));
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
