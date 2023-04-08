// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.local_gateway_virtual_interface_group; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i2;

part 'local_gateway_virtual_interface_group.g.dart';

/// Describes a local gateway virtual interface group.
abstract class LocalGatewayVirtualInterfaceGroup
    with
        _i1.AWSEquatable<LocalGatewayVirtualInterfaceGroup>
    implements
        Built<LocalGatewayVirtualInterfaceGroup,
            LocalGatewayVirtualInterfaceGroupBuilder> {
  /// Describes a local gateway virtual interface group.
  factory LocalGatewayVirtualInterfaceGroup({
    String? localGatewayVirtualInterfaceGroupId,
    List<String>? localGatewayVirtualInterfaceIds,
    String? localGatewayId,
    String? ownerId,
    List<_i2.Tag>? tags,
  }) {
    return _$LocalGatewayVirtualInterfaceGroup._(
      localGatewayVirtualInterfaceGroupId: localGatewayVirtualInterfaceGroupId,
      localGatewayVirtualInterfaceIds: localGatewayVirtualInterfaceIds == null
          ? null
          : _i3.BuiltList(localGatewayVirtualInterfaceIds),
      localGatewayId: localGatewayId,
      ownerId: ownerId,
      tags: tags == null ? null : _i3.BuiltList(tags),
    );
  }

  /// Describes a local gateway virtual interface group.
  factory LocalGatewayVirtualInterfaceGroup.build(
          [void Function(LocalGatewayVirtualInterfaceGroupBuilder) updates]) =
      _$LocalGatewayVirtualInterfaceGroup;

  const LocalGatewayVirtualInterfaceGroup._();

  static const List<_i4.SmithySerializer> serializers = [
    LocalGatewayVirtualInterfaceGroupEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LocalGatewayVirtualInterfaceGroupBuilder b) {}

  /// The ID of the virtual interface group.
  String? get localGatewayVirtualInterfaceGroupId;

  /// The IDs of the virtual interfaces.
  _i3.BuiltList<String>? get localGatewayVirtualInterfaceIds;

  /// The ID of the local gateway.
  String? get localGatewayId;

  /// The ID of the Amazon Web Services account that owns the local gateway virtual interface group.
  String? get ownerId;

  /// The tags assigned to the virtual interface group.
  _i3.BuiltList<_i2.Tag>? get tags;
  @override
  List<Object?> get props => [
        localGatewayVirtualInterfaceGroupId,
        localGatewayVirtualInterfaceIds,
        localGatewayId,
        ownerId,
        tags,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('LocalGatewayVirtualInterfaceGroup');
    helper.add(
      'localGatewayVirtualInterfaceGroupId',
      localGatewayVirtualInterfaceGroupId,
    );
    helper.add(
      'localGatewayVirtualInterfaceIds',
      localGatewayVirtualInterfaceIds,
    );
    helper.add(
      'localGatewayId',
      localGatewayId,
    );
    helper.add(
      'ownerId',
      ownerId,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class LocalGatewayVirtualInterfaceGroupEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<LocalGatewayVirtualInterfaceGroup> {
  const LocalGatewayVirtualInterfaceGroupEc2QuerySerializer()
      : super('LocalGatewayVirtualInterfaceGroup');

  @override
  Iterable<Type> get types => const [
        LocalGatewayVirtualInterfaceGroup,
        _$LocalGatewayVirtualInterfaceGroup,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LocalGatewayVirtualInterfaceGroup deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LocalGatewayVirtualInterfaceGroupBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'localGatewayVirtualInterfaceGroupId':
          if (value != null) {
            result.localGatewayVirtualInterfaceGroupId =
                (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'localGatewayVirtualInterfaceIdSet':
          if (value != null) {
            result.localGatewayVirtualInterfaceIds
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(String)],
              ),
            ) as _i3.BuiltList<String>));
          }
          break;
        case 'localGatewayId':
          if (value != null) {
            result.localGatewayId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ownerId':
          if (value != null) {
            result.ownerId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'tagSet':
          if (value != null) {
            result.tags.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.Tag)],
              ),
            ) as _i3.BuiltList<_i2.Tag>));
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
    final payload = (object as LocalGatewayVirtualInterfaceGroup);
    final result = <Object?>[
      const _i4.XmlElementName(
        'LocalGatewayVirtualInterfaceGroupResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.localGatewayVirtualInterfaceGroupId != null) {
      result
        ..add(const _i4.XmlElementName('LocalGatewayVirtualInterfaceGroupId'))
        ..add(serializers.serialize(
          payload.localGatewayVirtualInterfaceGroupId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.localGatewayVirtualInterfaceIds != null) {
      result
        ..add(const _i4.XmlElementName('LocalGatewayVirtualInterfaceIdSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.localGatewayVirtualInterfaceIds!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.localGatewayId != null) {
      result
        ..add(const _i4.XmlElementName('LocalGatewayId'))
        ..add(serializers.serialize(
          payload.localGatewayId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.ownerId != null) {
      result
        ..add(const _i4.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          payload.ownerId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.tags != null) {
      result
        ..add(const _i4.XmlElementName('TagSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tags!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.Tag)],
          ),
        ));
    }
    return result;
  }
}
