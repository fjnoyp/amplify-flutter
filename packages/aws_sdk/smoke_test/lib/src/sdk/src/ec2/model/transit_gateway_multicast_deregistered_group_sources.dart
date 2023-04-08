// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.transit_gateway_multicast_deregistered_group_sources; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'transit_gateway_multicast_deregistered_group_sources.g.dart';

/// Describes the deregistered transit gateway multicast group sources.
abstract class TransitGatewayMulticastDeregisteredGroupSources
    with
        _i1.AWSEquatable<TransitGatewayMulticastDeregisteredGroupSources>
    implements
        Built<TransitGatewayMulticastDeregisteredGroupSources,
            TransitGatewayMulticastDeregisteredGroupSourcesBuilder> {
  /// Describes the deregistered transit gateway multicast group sources.
  factory TransitGatewayMulticastDeregisteredGroupSources({
    String? transitGatewayMulticastDomainId,
    List<String>? deregisteredNetworkInterfaceIds,
    String? groupIpAddress,
  }) {
    return _$TransitGatewayMulticastDeregisteredGroupSources._(
      transitGatewayMulticastDomainId: transitGatewayMulticastDomainId,
      deregisteredNetworkInterfaceIds: deregisteredNetworkInterfaceIds == null
          ? null
          : _i2.BuiltList(deregisteredNetworkInterfaceIds),
      groupIpAddress: groupIpAddress,
    );
  }

  /// Describes the deregistered transit gateway multicast group sources.
  factory TransitGatewayMulticastDeregisteredGroupSources.build(
      [void Function(TransitGatewayMulticastDeregisteredGroupSourcesBuilder)
          updates]) = _$TransitGatewayMulticastDeregisteredGroupSources;

  const TransitGatewayMulticastDeregisteredGroupSources._();

  static const List<_i3.SmithySerializer> serializers = [
    TransitGatewayMulticastDeregisteredGroupSourcesEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TransitGatewayMulticastDeregisteredGroupSourcesBuilder b) {}

  /// The ID of the transit gateway multicast domain.
  String? get transitGatewayMulticastDomainId;

  /// The network interface IDs of the non-registered members.
  _i2.BuiltList<String>? get deregisteredNetworkInterfaceIds;

  /// The IP address assigned to the transit gateway multicast group.
  String? get groupIpAddress;
  @override
  List<Object?> get props => [
        transitGatewayMulticastDomainId,
        deregisteredNetworkInterfaceIds,
        groupIpAddress,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'TransitGatewayMulticastDeregisteredGroupSources');
    helper.add(
      'transitGatewayMulticastDomainId',
      transitGatewayMulticastDomainId,
    );
    helper.add(
      'deregisteredNetworkInterfaceIds',
      deregisteredNetworkInterfaceIds,
    );
    helper.add(
      'groupIpAddress',
      groupIpAddress,
    );
    return helper.toString();
  }
}

class TransitGatewayMulticastDeregisteredGroupSourcesEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<
        TransitGatewayMulticastDeregisteredGroupSources> {
  const TransitGatewayMulticastDeregisteredGroupSourcesEc2QuerySerializer()
      : super('TransitGatewayMulticastDeregisteredGroupSources');

  @override
  Iterable<Type> get types => const [
        TransitGatewayMulticastDeregisteredGroupSources,
        _$TransitGatewayMulticastDeregisteredGroupSources,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayMulticastDeregisteredGroupSources deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayMulticastDeregisteredGroupSourcesBuilder();
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
        case 'deregisteredNetworkInterfaceIds':
          if (value != null) {
            result.deregisteredNetworkInterfaceIds
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
    final payload = (object as TransitGatewayMulticastDeregisteredGroupSources);
    final result = <Object?>[
      const _i3.XmlElementName(
        'TransitGatewayMulticastDeregisteredGroupSourcesResponse',
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
    if (payload.deregisteredNetworkInterfaceIds != null) {
      result
        ..add(const _i3.XmlElementName('DeregisteredNetworkInterfaceIds'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.deregisteredNetworkInterfaceIds!,
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
