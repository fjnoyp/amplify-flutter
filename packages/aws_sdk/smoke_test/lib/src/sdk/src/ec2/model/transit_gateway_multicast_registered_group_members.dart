// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.transit_gateway_multicast_registered_group_members; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'transit_gateway_multicast_registered_group_members.g.dart';

/// Describes the registered transit gateway multicast group members.
abstract class TransitGatewayMulticastRegisteredGroupMembers
    with
        _i1.AWSEquatable<TransitGatewayMulticastRegisteredGroupMembers>
    implements
        Built<TransitGatewayMulticastRegisteredGroupMembers,
            TransitGatewayMulticastRegisteredGroupMembersBuilder> {
  /// Describes the registered transit gateway multicast group members.
  factory TransitGatewayMulticastRegisteredGroupMembers({
    String? transitGatewayMulticastDomainId,
    List<String>? registeredNetworkInterfaceIds,
    String? groupIpAddress,
  }) {
    return _$TransitGatewayMulticastRegisteredGroupMembers._(
      transitGatewayMulticastDomainId: transitGatewayMulticastDomainId,
      registeredNetworkInterfaceIds: registeredNetworkInterfaceIds == null
          ? null
          : _i2.BuiltList(registeredNetworkInterfaceIds),
      groupIpAddress: groupIpAddress,
    );
  }

  /// Describes the registered transit gateway multicast group members.
  factory TransitGatewayMulticastRegisteredGroupMembers.build(
      [void Function(TransitGatewayMulticastRegisteredGroupMembersBuilder)
          updates]) = _$TransitGatewayMulticastRegisteredGroupMembers;

  const TransitGatewayMulticastRegisteredGroupMembers._();

  static const List<_i3.SmithySerializer> serializers = [
    TransitGatewayMulticastRegisteredGroupMembersEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TransitGatewayMulticastRegisteredGroupMembersBuilder b) {}

  /// The ID of the transit gateway multicast domain.
  String? get transitGatewayMulticastDomainId;

  /// The ID of the registered network interfaces.
  _i2.BuiltList<String>? get registeredNetworkInterfaceIds;

  /// The IP address assigned to the transit gateway multicast group.
  String? get groupIpAddress;
  @override
  List<Object?> get props => [
        transitGatewayMulticastDomainId,
        registeredNetworkInterfaceIds,
        groupIpAddress,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'TransitGatewayMulticastRegisteredGroupMembers');
    helper.add(
      'transitGatewayMulticastDomainId',
      transitGatewayMulticastDomainId,
    );
    helper.add(
      'registeredNetworkInterfaceIds',
      registeredNetworkInterfaceIds,
    );
    helper.add(
      'groupIpAddress',
      groupIpAddress,
    );
    return helper.toString();
  }
}

class TransitGatewayMulticastRegisteredGroupMembersEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<
        TransitGatewayMulticastRegisteredGroupMembers> {
  const TransitGatewayMulticastRegisteredGroupMembersEc2QuerySerializer()
      : super('TransitGatewayMulticastRegisteredGroupMembers');

  @override
  Iterable<Type> get types => const [
        TransitGatewayMulticastRegisteredGroupMembers,
        _$TransitGatewayMulticastRegisteredGroupMembers,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayMulticastRegisteredGroupMembers deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayMulticastRegisteredGroupMembersBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'transitGatewayMulticastDomainId':
          if (value != null) {
            result.transitGatewayMulticastDomainId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'registeredNetworkInterfaceIds':
          if (value != null) {
            result.registeredNetworkInterfaceIds
                .replace((const _i3.XmlBuiltListSerializer(
              memberName: 'item',
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
        case 'groupIpAddress':
          if (value != null) {
            result.groupIpAddress = (serializers.deserialize(
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
    final payload = (object as TransitGatewayMulticastRegisteredGroupMembers);
    final result = <Object?>[
      const _i3.XmlElementName(
        'TransitGatewayMulticastRegisteredGroupMembersResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.transitGatewayMulticastDomainId != null) {
      result
        ..add(const _i3.XmlElementName('TransitGatewayMulticastDomainId'))
        ..add(serializers.serialize(
          payload.transitGatewayMulticastDomainId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.registeredNetworkInterfaceIds != null) {
      result
        ..add(const _i3.XmlElementName('RegisteredNetworkInterfaceIds'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.registeredNetworkInterfaceIds!,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.groupIpAddress != null) {
      result
        ..add(const _i3.XmlElementName('GroupIpAddress'))
        ..add(serializers.serialize(
          payload.groupIpAddress!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
