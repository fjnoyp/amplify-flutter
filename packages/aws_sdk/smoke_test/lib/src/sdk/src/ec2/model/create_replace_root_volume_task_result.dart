// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_replace_root_volume_task_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/replace_root_volume_task.dart'
    as _i2;

part 'create_replace_root_volume_task_result.g.dart';

abstract class CreateReplaceRootVolumeTaskResult
    with
        _i1.AWSEquatable<CreateReplaceRootVolumeTaskResult>
    implements
        Built<CreateReplaceRootVolumeTaskResult,
            CreateReplaceRootVolumeTaskResultBuilder> {
  factory CreateReplaceRootVolumeTaskResult(
      {_i2.ReplaceRootVolumeTask? replaceRootVolumeTask}) {
    return _$CreateReplaceRootVolumeTaskResult._(
        replaceRootVolumeTask: replaceRootVolumeTask);
  }

  factory CreateReplaceRootVolumeTaskResult.build(
          [void Function(CreateReplaceRootVolumeTaskResultBuilder) updates]) =
      _$CreateReplaceRootVolumeTaskResult;

  const CreateReplaceRootVolumeTaskResult._();

  /// Constructs a [CreateReplaceRootVolumeTaskResult] from a [payload] and [response].
  factory CreateReplaceRootVolumeTaskResult.fromResponse(
    CreateReplaceRootVolumeTaskResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    CreateReplaceRootVolumeTaskResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateReplaceRootVolumeTaskResultBuilder b) {}

  /// Information about the root volume replacement task.
  _i2.ReplaceRootVolumeTask? get replaceRootVolumeTask;
  @override
  List<Object?> get props => [replaceRootVolumeTask];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateReplaceRootVolumeTaskResult');
    helper.add(
      'replaceRootVolumeTask',
      replaceRootVolumeTask,
    );
    return helper.toString();
  }
}

class CreateReplaceRootVolumeTaskResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<CreateReplaceRootVolumeTaskResult> {
  const CreateReplaceRootVolumeTaskResultEc2QuerySerializer()
      : super('CreateReplaceRootVolumeTaskResult');

  @override
  Iterable<Type> get types => const [
        CreateReplaceRootVolumeTaskResult,
        _$CreateReplaceRootVolumeTaskResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateReplaceRootVolumeTaskResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateReplaceRootVolumeTaskResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'replaceRootVolumeTask':
          if (value != null) {
            result.replaceRootVolumeTask.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ReplaceRootVolumeTask),
            ) as _i2.ReplaceRootVolumeTask));
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
    final payload = (object as CreateReplaceRootVolumeTaskResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'CreateReplaceRootVolumeTaskResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.replaceRootVolumeTask != null) {
      result
        ..add(const _i3.XmlElementName('ReplaceRootVolumeTask'))
        ..add(serializers.serialize(
          payload.replaceRootVolumeTask!,
          specifiedType: const FullType(_i2.ReplaceRootVolumeTask),
        ));
    }
    return result;
  }
}
