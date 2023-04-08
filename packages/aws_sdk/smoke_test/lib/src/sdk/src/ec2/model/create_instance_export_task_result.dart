// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_instance_export_task_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/export_task.dart' as _i2;

part 'create_instance_export_task_result.g.dart';

abstract class CreateInstanceExportTaskResult
    with
        _i1.AWSEquatable<CreateInstanceExportTaskResult>
    implements
        Built<CreateInstanceExportTaskResult,
            CreateInstanceExportTaskResultBuilder> {
  factory CreateInstanceExportTaskResult({_i2.ExportTask? exportTask}) {
    return _$CreateInstanceExportTaskResult._(exportTask: exportTask);
  }

  factory CreateInstanceExportTaskResult.build(
          [void Function(CreateInstanceExportTaskResultBuilder) updates]) =
      _$CreateInstanceExportTaskResult;

  const CreateInstanceExportTaskResult._();

  /// Constructs a [CreateInstanceExportTaskResult] from a [payload] and [response].
  factory CreateInstanceExportTaskResult.fromResponse(
    CreateInstanceExportTaskResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    CreateInstanceExportTaskResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateInstanceExportTaskResultBuilder b) {}

  /// Information about the export instance task.
  _i2.ExportTask? get exportTask;
  @override
  List<Object?> get props => [exportTask];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateInstanceExportTaskResult');
    helper.add(
      'exportTask',
      exportTask,
    );
    return helper.toString();
  }
}

class CreateInstanceExportTaskResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<CreateInstanceExportTaskResult> {
  const CreateInstanceExportTaskResultEc2QuerySerializer()
      : super('CreateInstanceExportTaskResult');

  @override
  Iterable<Type> get types => const [
        CreateInstanceExportTaskResult,
        _$CreateInstanceExportTaskResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateInstanceExportTaskResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateInstanceExportTaskResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'exportTask':
          if (value != null) {
            result.exportTask.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ExportTask),
            ) as _i2.ExportTask));
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
    final payload = (object as CreateInstanceExportTaskResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'CreateInstanceExportTaskResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.exportTask != null) {
      result
        ..add(const _i3.XmlElementName('ExportTask'))
        ..add(serializers.serialize(
          payload.exportTask!,
          specifiedType: const FullType(_i2.ExportTask),
        ));
    }
    return result;
  }
}
