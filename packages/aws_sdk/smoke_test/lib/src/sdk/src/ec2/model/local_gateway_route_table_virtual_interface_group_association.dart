// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.local_gateway_route_table_virtual_interface_group_association; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i2;

part 'local_gateway_route_table_virtual_interface_group_association.g.dart';

/// Describes an association between a local gateway route table and a virtual interface group.
abstract class LocalGatewayRouteTableVirtualInterfaceGroupAssociation
    with
        _i1.AWSEquatable<LocalGatewayRouteTableVirtualInterfaceGroupAssociation>
    implements
        Built<LocalGatewayRouteTableVirtualInterfaceGroupAssociation,
            LocalGatewayRouteTableVirtualInterfaceGroupAssociationBuilder> {
  /// Describes an association between a local gateway route table and a virtual interface group.
  factory LocalGatewayRouteTableVirtualInterfaceGroupAssociation({
    String? localGatewayRouteTableVirtualInterfaceGroupAssociationId,
    String? localGatewayVirtualInterfaceGroupId,
    String? localGatewayId,
    String? localGatewayRouteTableId,
    String? localGatewayRouteTableArn,
    String? ownerId,
    String? state,
    List<_i2.Tag>? tags,
  }) {
    return _$LocalGatewayRouteTableVirtualInterfaceGroupAssociation._(
      localGatewayRouteTableVirtualInterfaceGroupAssociationId:
          localGatewayRouteTableVirtualInterfaceGroupAssociationId,
      localGatewayVirtualInterfaceGroupId: localGatewayVirtualInterfaceGroupId,
      localGatewayId: localGatewayId,
      localGatewayRouteTableId: localGatewayRouteTableId,
      localGatewayRouteTableArn: localGatewayRouteTableArn,
      ownerId: ownerId,
      state: state,
      tags: tags == null ? null : _i3.BuiltList(tags),
    );
  }

  /// Describes an association between a local gateway route table and a virtual interface group.
  factory LocalGatewayRouteTableVirtualInterfaceGroupAssociation.build(
      [void Function(
              LocalGatewayRouteTableVirtualInterfaceGroupAssociationBuilder)
          updates]) = _$LocalGatewayRouteTableVirtualInterfaceGroupAssociation;

  const LocalGatewayRouteTableVirtualInterfaceGroupAssociation._();

  static const List<_i4.SmithySerializer> serializers = [
    LocalGatewayRouteTableVirtualInterfaceGroupAssociationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      LocalGatewayRouteTableVirtualInterfaceGroupAssociationBuilder b) {}

  /// The ID of the association.
  String? get localGatewayRouteTableVirtualInterfaceGroupAssociationId;

  /// The ID of the virtual interface group.
  String? get localGatewayVirtualInterfaceGroupId;

  /// The ID of the local gateway.
  String? get localGatewayId;

  /// The ID of the local gateway route table.
  String? get localGatewayRouteTableId;

  /// The Amazon Resource Name (ARN) of the local gateway route table for the virtual interface group.
  String? get localGatewayRouteTableArn;

  /// The ID of the Amazon Web Services account that owns the local gateway virtual interface group association.
  String? get ownerId;

  /// The state of the association.
  String? get state;

  /// The tags assigned to the association.
  _i3.BuiltList<_i2.Tag>? get tags;
  @override
  List<Object?> get props => [
        localGatewayRouteTableVirtualInterfaceGroupAssociationId,
        localGatewayVirtualInterfaceGroupId,
        localGatewayId,
        localGatewayRouteTableId,
        localGatewayRouteTableArn,
        ownerId,
        state,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'LocalGatewayRouteTableVirtualInterfaceGroupAssociation');
    helper.add(
      'localGatewayRouteTableVirtualInterfaceGroupAssociationId',
      localGatewayRouteTableVirtualInterfaceGroupAssociationId,
    );
    helper.add(
      'localGatewayVirtualInterfaceGroupId',
      localGatewayVirtualInterfaceGroupId,
    );
    helper.add(
      'localGatewayId',
      localGatewayId,
    );
    helper.add(
      'localGatewayRouteTableId',
      localGatewayRouteTableId,
    );
    helper.add(
      'localGatewayRouteTableArn',
      localGatewayRouteTableArn,
    );
    helper.add(
      'ownerId',
      ownerId,
    );
    helper.add(
      'state',
      state,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class LocalGatewayRouteTableVirtualInterfaceGroupAssociationEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<
        LocalGatewayRouteTableVirtualInterfaceGroupAssociation> {
  const LocalGatewayRouteTableVirtualInterfaceGroupAssociationEc2QuerySerializer()
      : super('LocalGatewayRouteTableVirtualInterfaceGroupAssociation');

  @override
  Iterable<Type> get types => const [
        LocalGatewayRouteTableVirtualInterfaceGroupAssociation,
        _$LocalGatewayRouteTableVirtualInterfaceGroupAssociation,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LocalGatewayRouteTableVirtualInterfaceGroupAssociation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        LocalGatewayRouteTableVirtualInterfaceGroupAssociationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'localGatewayRouteTableVirtualInterfaceGroupAssociationId':
          if (value != null) {
            result.localGatewayRouteTableVirtualInterfaceGroupAssociationId =
                (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'localGatewayVirtualInterfaceGroupId':
          if (value != null) {
            result.localGatewayVirtualInterfaceGroupId =
                (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
        case 'localGatewayRouteTableId':
          if (value != null) {
            result.localGatewayRouteTableId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'localGatewayRouteTableArn':
          if (value != null) {
            result.localGatewayRouteTableArn = (serializers.deserialize(
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
        case 'state':
          if (value != null) {
            result.state = (serializers.deserialize(
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
    final payload =
        (object as LocalGatewayRouteTableVirtualInterfaceGroupAssociation);
    final result = <Object?>[
      const _i4.XmlElementName(
        'LocalGatewayRouteTableVirtualInterfaceGroupAssociationResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.localGatewayRouteTableVirtualInterfaceGroupAssociationId !=
        null) {
      result
        ..add(const _i4.XmlElementName(
            'LocalGatewayRouteTableVirtualInterfaceGroupAssociationId'))
        ..add(serializers.serialize(
          payload.localGatewayRouteTableVirtualInterfaceGroupAssociationId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.localGatewayVirtualInterfaceGroupId != null) {
      result
        ..add(const _i4.XmlElementName('LocalGatewayVirtualInterfaceGroupId'))
        ..add(serializers.serialize(
          payload.localGatewayVirtualInterfaceGroupId!,
          specifiedType: const FullType(String),
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
    if (payload.localGatewayRouteTableId != null) {
      result
        ..add(const _i4.XmlElementName('LocalGatewayRouteTableId'))
        ..add(serializers.serialize(
          payload.localGatewayRouteTableId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.localGatewayRouteTableArn != null) {
      result
        ..add(const _i4.XmlElementName('LocalGatewayRouteTableArn'))
        ..add(serializers.serialize(
          payload.localGatewayRouteTableArn!,
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
    if (payload.state != null) {
      result
        ..add(const _i4.XmlElementName('State'))
        ..add(serializers.serialize(
          payload.state!,
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
