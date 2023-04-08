// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_instance_export_task_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/export_environment.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/export_to_s3_task_specification.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart' as _i5;

part 'create_instance_export_task_request.g.dart';

abstract class CreateInstanceExportTaskRequest
    with
        _i1.HttpInput<CreateInstanceExportTaskRequest>,
        _i2.AWSEquatable<CreateInstanceExportTaskRequest>
    implements
        Built<CreateInstanceExportTaskRequest,
            CreateInstanceExportTaskRequestBuilder> {
  factory CreateInstanceExportTaskRequest({
    String? description,
    required _i3.ExportToS3TaskSpecification exportToS3Task,
    required String instanceId,
    required _i4.ExportEnvironment targetEnvironment,
    List<_i5.TagSpecification>? tagSpecifications,
  }) {
    return _$CreateInstanceExportTaskRequest._(
      description: description,
      exportToS3Task: exportToS3Task,
      instanceId: instanceId,
      targetEnvironment: targetEnvironment,
      tagSpecifications:
          tagSpecifications == null ? null : _i6.BuiltList(tagSpecifications),
    );
  }

  factory CreateInstanceExportTaskRequest.build(
          [void Function(CreateInstanceExportTaskRequestBuilder) updates]) =
      _$CreateInstanceExportTaskRequest;

  const CreateInstanceExportTaskRequest._();

  factory CreateInstanceExportTaskRequest.fromRequest(
    CreateInstanceExportTaskRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    CreateInstanceExportTaskRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateInstanceExportTaskRequestBuilder b) {}

  /// A description for the conversion task or the resource being exported. The maximum length is 255 characters.
  String? get description;

  /// The format and location for an export instance task.
  _i3.ExportToS3TaskSpecification get exportToS3Task;

  /// The ID of the instance.
  String get instanceId;

  /// The target virtualization environment.
  _i4.ExportEnvironment get targetEnvironment;

  /// The tags to apply to the export instance task during creation.
  _i6.BuiltList<_i5.TagSpecification>? get tagSpecifications;
  @override
  CreateInstanceExportTaskRequest getPayload() => this;
  @override
  List<Object?> get props => [
        description,
        exportToS3Task,
        instanceId,
        targetEnvironment,
        tagSpecifications,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateInstanceExportTaskRequest');
    helper.add(
      'description',
      description,
    );
    helper.add(
      'exportToS3Task',
      exportToS3Task,
    );
    helper.add(
      'instanceId',
      instanceId,
    );
    helper.add(
      'targetEnvironment',
      targetEnvironment,
    );
    helper.add(
      'tagSpecifications',
      tagSpecifications,
    );
    return helper.toString();
  }
}

class CreateInstanceExportTaskRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateInstanceExportTaskRequest> {
  const CreateInstanceExportTaskRequestEc2QuerySerializer()
      : super('CreateInstanceExportTaskRequest');

  @override
  Iterable<Type> get types => const [
        CreateInstanceExportTaskRequest,
        _$CreateInstanceExportTaskRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateInstanceExportTaskRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateInstanceExportTaskRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'description':
          if (value != null) {
            result.description = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'exportToS3':
          result.exportToS3Task.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.ExportToS3TaskSpecification),
          ) as _i3.ExportToS3TaskSpecification));
          break;
        case 'instanceId':
          result.instanceId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'targetEnvironment':
          result.targetEnvironment = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i4.ExportEnvironment),
          ) as _i4.ExportEnvironment);
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
                _i6.BuiltList,
                [FullType(_i5.TagSpecification)],
              ),
            ) as _i6.BuiltList<_i5.TagSpecification>));
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
    final payload = (object as CreateInstanceExportTaskRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'CreateInstanceExportTaskRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.description != null) {
      result
        ..add(const _i1.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('ExportToS3'))
      ..add(serializers.serialize(
        payload.exportToS3Task,
        specifiedType: const FullType(_i3.ExportToS3TaskSpecification),
      ));
    result
      ..add(const _i1.XmlElementName('InstanceId'))
      ..add(serializers.serialize(
        payload.instanceId,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('TargetEnvironment'))
      ..add(serializers.serialize(
        payload.targetEnvironment,
        specifiedType: const FullType.nullable(_i4.ExportEnvironment),
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
            _i6.BuiltList,
            [FullType(_i5.TagSpecification)],
          ),
        ));
    }
    return result;
  }
}
