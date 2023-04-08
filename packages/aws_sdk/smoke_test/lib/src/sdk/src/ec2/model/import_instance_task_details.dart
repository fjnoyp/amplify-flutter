// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.import_instance_task_details; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/import_instance_volume_detail_item.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/platform_values.dart' as _i2;

part 'import_instance_task_details.g.dart';

/// Describes an import instance task.
abstract class ImportInstanceTaskDetails
    with _i1.AWSEquatable<ImportInstanceTaskDetails>
    implements
        Built<ImportInstanceTaskDetails, ImportInstanceTaskDetailsBuilder> {
  /// Describes an import instance task.
  factory ImportInstanceTaskDetails({
    String? description,
    String? instanceId,
    _i2.PlatformValues? platform,
    List<_i3.ImportInstanceVolumeDetailItem>? volumes,
  }) {
    return _$ImportInstanceTaskDetails._(
      description: description,
      instanceId: instanceId,
      platform: platform,
      volumes: volumes == null ? null : _i4.BuiltList(volumes),
    );
  }

  /// Describes an import instance task.
  factory ImportInstanceTaskDetails.build(
          [void Function(ImportInstanceTaskDetailsBuilder) updates]) =
      _$ImportInstanceTaskDetails;

  const ImportInstanceTaskDetails._();

  static const List<_i5.SmithySerializer> serializers = [
    ImportInstanceTaskDetailsEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ImportInstanceTaskDetailsBuilder b) {}

  /// A description of the task.
  String? get description;

  /// The ID of the instance.
  String? get instanceId;

  /// The instance operating system.
  _i2.PlatformValues? get platform;

  /// The volumes.
  _i4.BuiltList<_i3.ImportInstanceVolumeDetailItem>? get volumes;
  @override
  List<Object?> get props => [
        description,
        instanceId,
        platform,
        volumes,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ImportInstanceTaskDetails');
    helper.add(
      'description',
      description,
    );
    helper.add(
      'instanceId',
      instanceId,
    );
    helper.add(
      'platform',
      platform,
    );
    helper.add(
      'volumes',
      volumes,
    );
    return helper.toString();
  }
}

class ImportInstanceTaskDetailsEc2QuerySerializer
    extends _i5.StructuredSmithySerializer<ImportInstanceTaskDetails> {
  const ImportInstanceTaskDetailsEc2QuerySerializer()
      : super('ImportInstanceTaskDetails');

  @override
  Iterable<Type> get types => const [
        ImportInstanceTaskDetails,
        _$ImportInstanceTaskDetails,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ImportInstanceTaskDetails deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImportInstanceTaskDetailsBuilder();
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
        case 'instanceId':
          if (value != null) {
            result.instanceId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'platform':
          if (value != null) {
            result.platform = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.PlatformValues),
            ) as _i2.PlatformValues);
          }
          break;
        case 'volumes':
          if (value != null) {
            result.volumes.replace((const _i5.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i5.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.ImportInstanceVolumeDetailItem)],
              ),
            ) as _i4.BuiltList<_i3.ImportInstanceVolumeDetailItem>));
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
    final payload = (object as ImportInstanceTaskDetails);
    final result = <Object?>[
      const _i5.XmlElementName(
        'ImportInstanceTaskDetailsResponse',
        _i5.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.description != null) {
      result
        ..add(const _i5.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.instanceId != null) {
      result
        ..add(const _i5.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          payload.instanceId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.platform != null) {
      result
        ..add(const _i5.XmlElementName('Platform'))
        ..add(serializers.serialize(
          payload.platform!,
          specifiedType: const FullType.nullable(_i2.PlatformValues),
        ));
    }
    if (payload.volumes != null) {
      result
        ..add(const _i5.XmlElementName('Volumes'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.volumes!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.ImportInstanceVolumeDetailItem)],
          ),
        ));
    }
    return result;
  }
}
