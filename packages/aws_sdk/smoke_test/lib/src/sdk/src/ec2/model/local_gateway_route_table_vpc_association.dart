// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.local_gateway_route_table_vpc_association; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i2;

part 'local_gateway_route_table_vpc_association.g.dart';

/// Describes an association between a local gateway route table and a VPC.
abstract class LocalGatewayRouteTableVpcAssociation
    with
        _i1.AWSEquatable<LocalGatewayRouteTableVpcAssociation>
    implements
        Built<LocalGatewayRouteTableVpcAssociation,
            LocalGatewayRouteTableVpcAssociationBuilder> {
  /// Describes an association between a local gateway route table and a VPC.
  factory LocalGatewayRouteTableVpcAssociation({
    String? localGatewayRouteTableVpcAssociationId,
    String? localGatewayRouteTableId,
    String? localGatewayRouteTableArn,
    String? localGatewayId,
    String? vpcId,
    String? ownerId,
    String? state,
    List<_i2.Tag>? tags,
  }) {
    return _$LocalGatewayRouteTableVpcAssociation._(
      localGatewayRouteTableVpcAssociationId:
          localGatewayRouteTableVpcAssociationId,
      localGatewayRouteTableId: localGatewayRouteTableId,
      localGatewayRouteTableArn: localGatewayRouteTableArn,
      localGatewayId: localGatewayId,
      vpcId: vpcId,
      ownerId: ownerId,
      state: state,
      tags: tags == null ? null : _i3.BuiltList(tags),
    );
  }

  /// Describes an association between a local gateway route table and a VPC.
  factory LocalGatewayRouteTableVpcAssociation.build(
      [void Function(LocalGatewayRouteTableVpcAssociationBuilder)
          updates]) = _$LocalGatewayRouteTableVpcAssociation;

  const LocalGatewayRouteTableVpcAssociation._();

  static const List<_i4.SmithySerializer> serializers = [
    LocalGatewayRouteTableVpcAssociationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LocalGatewayRouteTableVpcAssociationBuilder b) {}

  /// The ID of the association.
  String? get localGatewayRouteTableVpcAssociationId;

  /// The ID of the local gateway route table.
  String? get localGatewayRouteTableId;

  /// The Amazon Resource Name (ARN) of the local gateway route table for the association.
  String? get localGatewayRouteTableArn;

  /// The ID of the local gateway.
  String? get localGatewayId;

  /// The ID of the VPC.
  String? get vpcId;

  /// The ID of the Amazon Web Services account that owns the local gateway route table for the association.
  String? get ownerId;

  /// The state of the association.
  String? get state;

  /// The tags assigned to the association.
  _i3.BuiltList<_i2.Tag>? get tags;
  @override
  List<Object?> get props => [
        localGatewayRouteTableVpcAssociationId,
        localGatewayRouteTableId,
        localGatewayRouteTableArn,
        localGatewayId,
        vpcId,
        ownerId,
        state,
        tags,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('LocalGatewayRouteTableVpcAssociation');
    helper.add(
      'localGatewayRouteTableVpcAssociationId',
      localGatewayRouteTableVpcAssociationId,
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
      'localGatewayId',
      localGatewayId,
    );
    helper.add(
      'vpcId',
      vpcId,
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

class LocalGatewayRouteTableVpcAssociationEc2QuerySerializer extends _i4
    .StructuredSmithySerializer<LocalGatewayRouteTableVpcAssociation> {
  const LocalGatewayRouteTableVpcAssociationEc2QuerySerializer()
      : super('LocalGatewayRouteTableVpcAssociation');

  @override
  Iterable<Type> get types => const [
        LocalGatewayRouteTableVpcAssociation,
        _$LocalGatewayRouteTableVpcAssociation,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LocalGatewayRouteTableVpcAssociation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LocalGatewayRouteTableVpcAssociationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'localGatewayRouteTableVpcAssociationId':
          if (value != null) {
            result.localGatewayRouteTableVpcAssociationId =
                (serializers.deserialize(
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
        case 'localGatewayId':
          if (value != null) {
            result.localGatewayId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'vpcId':
          if (value != null) {
            result.vpcId = (serializers.deserialize(
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
    final payload = (object as LocalGatewayRouteTableVpcAssociation);
    final result = <Object?>[
      const _i4.XmlElementName(
        'LocalGatewayRouteTableVpcAssociationResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.localGatewayRouteTableVpcAssociationId != null) {
      result
        ..add(
            const _i4.XmlElementName('LocalGatewayRouteTableVpcAssociationId'))
        ..add(serializers.serialize(
          payload.localGatewayRouteTableVpcAssociationId!,
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
    if (payload.localGatewayId != null) {
      result
        ..add(const _i4.XmlElementName('LocalGatewayId'))
        ..add(serializers.serialize(
          payload.localGatewayId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.vpcId != null) {
      result
        ..add(const _i4.XmlElementName('VpcId'))
        ..add(serializers.serialize(
          payload.vpcId!,
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
