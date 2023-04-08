// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.cancel_import_task_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'cancel_import_task_request.g.dart';

abstract class CancelImportTaskRequest
    with
        _i1.HttpInput<CancelImportTaskRequest>,
        _i2.AWSEquatable<CancelImportTaskRequest>
    implements Built<CancelImportTaskRequest, CancelImportTaskRequestBuilder> {
  factory CancelImportTaskRequest({
    String? cancelReason,
    bool? dryRun,
    String? importTaskId,
  }) {
    dryRun ??= false;
    return _$CancelImportTaskRequest._(
      cancelReason: cancelReason,
      dryRun: dryRun,
      importTaskId: importTaskId,
    );
  }

  factory CancelImportTaskRequest.build(
          [void Function(CancelImportTaskRequestBuilder) updates]) =
      _$CancelImportTaskRequest;

  const CancelImportTaskRequest._();

  factory CancelImportTaskRequest.fromRequest(
    CancelImportTaskRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    CancelImportTaskRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CancelImportTaskRequestBuilder b) {
    b.dryRun = false;
  }

  /// The reason for canceling the task.
  String? get cancelReason;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the import image or import snapshot task to be canceled.
  String? get importTaskId;
  @override
  CancelImportTaskRequest getPayload() => this;
  @override
  List<Object?> get props => [
        cancelReason,
        dryRun,
        importTaskId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CancelImportTaskRequest');
    helper.add(
      'cancelReason',
      cancelReason,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'importTaskId',
      importTaskId,
    );
    return helper.toString();
  }
}

class CancelImportTaskRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CancelImportTaskRequest> {
  const CancelImportTaskRequestEc2QuerySerializer()
      : super('CancelImportTaskRequest');

  @override
  Iterable<Type> get types => const [
        CancelImportTaskRequest,
        _$CancelImportTaskRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CancelImportTaskRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CancelImportTaskRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'CancelReason':
          if (value != null) {
            result.cancelReason = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'ImportTaskId':
          if (value != null) {
            result.importTaskId = (serializers.deserialize(
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
    final payload = (object as CancelImportTaskRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'CancelImportTaskRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.cancelReason != null) {
      result
        ..add(const _i1.XmlElementName('CancelReason'))
        ..add(serializers.serialize(
          payload.cancelReason!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    if (payload.importTaskId != null) {
      result
        ..add(const _i1.XmlElementName('ImportTaskId'))
        ..add(serializers.serialize(
          payload.importTaskId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
