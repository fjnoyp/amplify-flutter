// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.conversion_task; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i7;
import 'package:smoke_test/src/sdk/src/ec2/model/conversion_task_state.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/import_instance_task_details.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/import_volume_task_details.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i5;

part 'conversion_task.g.dart';

/// Describes a conversion task.
abstract class ConversionTask
    with _i1.AWSEquatable<ConversionTask>
    implements Built<ConversionTask, ConversionTaskBuilder> {
  /// Describes a conversion task.
  factory ConversionTask({
    String? conversionTaskId,
    String? expirationTime,
    _i2.ImportInstanceTaskDetails? importInstance,
    _i3.ImportVolumeTaskDetails? importVolume,
    _i4.ConversionTaskState? state,
    String? statusMessage,
    List<_i5.Tag>? tags,
  }) {
    return _$ConversionTask._(
      conversionTaskId: conversionTaskId,
      expirationTime: expirationTime,
      importInstance: importInstance,
      importVolume: importVolume,
      state: state,
      statusMessage: statusMessage,
      tags: tags == null ? null : _i6.BuiltList(tags),
    );
  }

  /// Describes a conversion task.
  factory ConversionTask.build([void Function(ConversionTaskBuilder) updates]) =
      _$ConversionTask;

  const ConversionTask._();

  static const List<_i7.SmithySerializer> serializers = [
    ConversionTaskEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConversionTaskBuilder b) {}

  /// The ID of the conversion task.
  String? get conversionTaskId;

  /// The time when the task expires. If the upload isn't complete before the expiration time, we automatically cancel the task.
  String? get expirationTime;

  /// If the task is for importing an instance, this contains information about the import instance task.
  _i2.ImportInstanceTaskDetails? get importInstance;

  /// If the task is for importing a volume, this contains information about the import volume task.
  _i3.ImportVolumeTaskDetails? get importVolume;

  /// The state of the conversion task.
  _i4.ConversionTaskState? get state;

  /// The status message related to the conversion task.
  String? get statusMessage;

  /// Any tags assigned to the task.
  _i6.BuiltList<_i5.Tag>? get tags;
  @override
  List<Object?> get props => [
        conversionTaskId,
        expirationTime,
        importInstance,
        importVolume,
        state,
        statusMessage,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ConversionTask');
    helper.add(
      'conversionTaskId',
      conversionTaskId,
    );
    helper.add(
      'expirationTime',
      expirationTime,
    );
    helper.add(
      'importInstance',
      importInstance,
    );
    helper.add(
      'importVolume',
      importVolume,
    );
    helper.add(
      'state',
      state,
    );
    helper.add(
      'statusMessage',
      statusMessage,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class ConversionTaskEc2QuerySerializer
    extends _i7.StructuredSmithySerializer<ConversionTask> {
  const ConversionTaskEc2QuerySerializer() : super('ConversionTask');

  @override
  Iterable<Type> get types => const [
        ConversionTask,
        _$ConversionTask,
      ];
  @override
  Iterable<_i7.ShapeId> get supportedProtocols => const [
        _i7.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ConversionTask deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConversionTaskBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'conversionTaskId':
          if (value != null) {
            result.conversionTaskId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'expirationTime':
          if (value != null) {
            result.expirationTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'importInstance':
          if (value != null) {
            result.importInstance.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ImportInstanceTaskDetails),
            ) as _i2.ImportInstanceTaskDetails));
          }
          break;
        case 'importVolume':
          if (value != null) {
            result.importVolume.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.ImportVolumeTaskDetails),
            ) as _i3.ImportVolumeTaskDetails));
          }
          break;
        case 'state':
          if (value != null) {
            result.state = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.ConversionTaskState),
            ) as _i4.ConversionTaskState);
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
                [FullType(_i5.Tag)],
              ),
            ) as _i6.BuiltList<_i5.Tag>));
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
    final payload = (object as ConversionTask);
    final result = <Object?>[
      const _i7.XmlElementName(
        'ConversionTaskResponse',
        _i7.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.conversionTaskId != null) {
      result
        ..add(const _i7.XmlElementName('ConversionTaskId'))
        ..add(serializers.serialize(
          payload.conversionTaskId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.expirationTime != null) {
      result
        ..add(const _i7.XmlElementName('ExpirationTime'))
        ..add(serializers.serialize(
          payload.expirationTime!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.importInstance != null) {
      result
        ..add(const _i7.XmlElementName('ImportInstance'))
        ..add(serializers.serialize(
          payload.importInstance!,
          specifiedType: const FullType(_i2.ImportInstanceTaskDetails),
        ));
    }
    if (payload.importVolume != null) {
      result
        ..add(const _i7.XmlElementName('ImportVolume'))
        ..add(serializers.serialize(
          payload.importVolume!,
          specifiedType: const FullType(_i3.ImportVolumeTaskDetails),
        ));
    }
    if (payload.state != null) {
      result
        ..add(const _i7.XmlElementName('State'))
        ..add(serializers.serialize(
          payload.state!,
          specifiedType: const FullType.nullable(_i4.ConversionTaskState),
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
            [FullType(_i5.Tag)],
          ),
        ));
    }
    return result;
  }
}
