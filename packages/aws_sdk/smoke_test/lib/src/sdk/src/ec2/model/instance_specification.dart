// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.instance_specification; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'instance_specification.g.dart';

/// The instance details to specify which volumes should be snapshotted.
abstract class InstanceSpecification
    with _i1.AWSEquatable<InstanceSpecification>
    implements Built<InstanceSpecification, InstanceSpecificationBuilder> {
  /// The instance details to specify which volumes should be snapshotted.
  factory InstanceSpecification({
    String? instanceId,
    bool? excludeBootVolume,
    List<String>? excludeDataVolumeIds,
  }) {
    excludeBootVolume ??= false;
    return _$InstanceSpecification._(
      instanceId: instanceId,
      excludeBootVolume: excludeBootVolume,
      excludeDataVolumeIds: excludeDataVolumeIds == null
          ? null
          : _i2.BuiltList(excludeDataVolumeIds),
    );
  }

  /// The instance details to specify which volumes should be snapshotted.
  factory InstanceSpecification.build(
          [void Function(InstanceSpecificationBuilder) updates]) =
      _$InstanceSpecification;

  const InstanceSpecification._();

  static const List<_i3.SmithySerializer> serializers = [
    InstanceSpecificationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InstanceSpecificationBuilder b) {
    b.excludeBootVolume = false;
  }

  /// The instance to specify which volumes should be snapshotted.
  String? get instanceId;

  /// Excludes the root volume from being snapshotted.
  bool get excludeBootVolume;

  /// The IDs of the data (non-root) volumes to exclude from the multi-volume snapshot set. If you specify the ID of the root volume, the request fails. To exclude the root volume, use **ExcludeBootVolume**.
  ///
  /// You can specify up to 40 volume IDs per request.
  _i2.BuiltList<String>? get excludeDataVolumeIds;
  @override
  List<Object?> get props => [
        instanceId,
        excludeBootVolume,
        excludeDataVolumeIds,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InstanceSpecification');
    helper.add(
      'instanceId',
      instanceId,
    );
    helper.add(
      'excludeBootVolume',
      excludeBootVolume,
    );
    helper.add(
      'excludeDataVolumeIds',
      excludeDataVolumeIds,
    );
    return helper.toString();
  }
}

class InstanceSpecificationEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<InstanceSpecification> {
  const InstanceSpecificationEc2QuerySerializer()
      : super('InstanceSpecification');

  @override
  Iterable<Type> get types => const [
        InstanceSpecification,
        _$InstanceSpecification,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceSpecification deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceSpecificationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'InstanceId':
          if (value != null) {
            result.instanceId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ExcludeBootVolume':
          result.excludeBootVolume = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'ExcludeDataVolumeId':
          if (value != null) {
            result.excludeDataVolumeIds
                .replace((const _i3.XmlBuiltListSerializer(
              memberName: 'VolumeId',
              indexer: _i3.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i2.BuiltList,
                [FullType(String)],
              ),
            ) as _i2.BuiltList<String>));
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
    final payload = (object as InstanceSpecification);
    final result = <Object?>[
      const _i3.XmlElementName(
        'InstanceSpecificationResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.instanceId != null) {
      result
        ..add(const _i3.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          payload.instanceId!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i3.XmlElementName('ExcludeBootVolume'))
      ..add(serializers.serialize(
        payload.excludeBootVolume,
        specifiedType: const FullType(bool),
      ));
    if (payload.excludeDataVolumeIds != null) {
      result
        ..add(const _i3.XmlElementName('ExcludeDataVolumeId'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'VolumeId',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.excludeDataVolumeIds!,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result;
  }
}
