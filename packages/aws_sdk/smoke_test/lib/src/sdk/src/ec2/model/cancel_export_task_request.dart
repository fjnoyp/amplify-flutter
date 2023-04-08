// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.cancel_export_task_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'cancel_export_task_request.g.dart';

abstract class CancelExportTaskRequest
    with
        _i1.HttpInput<CancelExportTaskRequest>,
        _i2.AWSEquatable<CancelExportTaskRequest>
    implements Built<CancelExportTaskRequest, CancelExportTaskRequestBuilder> {
  factory CancelExportTaskRequest({required String exportTaskId}) {
    return _$CancelExportTaskRequest._(exportTaskId: exportTaskId);
  }

  factory CancelExportTaskRequest.build(
          [void Function(CancelExportTaskRequestBuilder) updates]) =
      _$CancelExportTaskRequest;

  const CancelExportTaskRequest._();

  factory CancelExportTaskRequest.fromRequest(
    CancelExportTaskRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    CancelExportTaskRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CancelExportTaskRequestBuilder b) {}

  /// The ID of the export task. This is the ID returned by `CreateInstanceExportTask`.
  String get exportTaskId;
  @override
  CancelExportTaskRequest getPayload() => this;
  @override
  List<Object?> get props => [exportTaskId];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CancelExportTaskRequest');
    helper.add(
      'exportTaskId',
      exportTaskId,
    );
    return helper.toString();
  }
}

class CancelExportTaskRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CancelExportTaskRequest> {
  const CancelExportTaskRequestEc2QuerySerializer()
      : super('CancelExportTaskRequest');

  @override
  Iterable<Type> get types => const [
        CancelExportTaskRequest,
        _$CancelExportTaskRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CancelExportTaskRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CancelExportTaskRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'exportTaskId':
          result.exportTaskId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as CancelExportTaskRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'CancelExportTaskRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('ExportTaskId'))
      ..add(serializers.serialize(
        payload.exportTaskId,
        specifiedType: const FullType(String),
      ));
    return result;
  }
}
