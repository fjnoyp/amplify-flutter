// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_transit_gateway_connect_peers_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_connect_peer.dart'
    as _i2;

part 'describe_transit_gateway_connect_peers_result.g.dart';

abstract class DescribeTransitGatewayConnectPeersResult
    with
        _i1.AWSEquatable<DescribeTransitGatewayConnectPeersResult>
    implements
        Built<DescribeTransitGatewayConnectPeersResult,
            DescribeTransitGatewayConnectPeersResultBuilder> {
  factory DescribeTransitGatewayConnectPeersResult({
    List<_i2.TransitGatewayConnectPeer>? transitGatewayConnectPeers,
    String? nextToken,
  }) {
    return _$DescribeTransitGatewayConnectPeersResult._(
      transitGatewayConnectPeers: transitGatewayConnectPeers == null
          ? null
          : _i3.BuiltList(transitGatewayConnectPeers),
      nextToken: nextToken,
    );
  }

  factory DescribeTransitGatewayConnectPeersResult.build(
      [void Function(DescribeTransitGatewayConnectPeersResultBuilder)
          updates]) = _$DescribeTransitGatewayConnectPeersResult;

  const DescribeTransitGatewayConnectPeersResult._();

  /// Constructs a [DescribeTransitGatewayConnectPeersResult] from a [payload] and [response].
  factory DescribeTransitGatewayConnectPeersResult.fromResponse(
    DescribeTransitGatewayConnectPeersResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeTransitGatewayConnectPeersResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeTransitGatewayConnectPeersResultBuilder b) {}

  /// Information about the Connect peers.
  _i3.BuiltList<_i2.TransitGatewayConnectPeer>? get transitGatewayConnectPeers;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        transitGatewayConnectPeers,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeTransitGatewayConnectPeersResult');
    helper.add(
      'transitGatewayConnectPeers',
      transitGatewayConnectPeers,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeTransitGatewayConnectPeersResultEc2QuerySerializer extends _i4
    .StructuredSmithySerializer<DescribeTransitGatewayConnectPeersResult> {
  const DescribeTransitGatewayConnectPeersResultEc2QuerySerializer()
      : super('DescribeTransitGatewayConnectPeersResult');

  @override
  Iterable<Type> get types => const [
        DescribeTransitGatewayConnectPeersResult,
        _$DescribeTransitGatewayConnectPeersResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeTransitGatewayConnectPeersResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeTransitGatewayConnectPeersResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'transitGatewayConnectPeerSet':
          if (value != null) {
            result.transitGatewayConnectPeers
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.TransitGatewayConnectPeer)],
              ),
            ) as _i3.BuiltList<_i2.TransitGatewayConnectPeer>));
          }
          break;
        case 'nextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
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
    final payload = (object as DescribeTransitGatewayConnectPeersResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeTransitGatewayConnectPeersResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.transitGatewayConnectPeers != null) {
      result
        ..add(const _i4.XmlElementName('TransitGatewayConnectPeerSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.transitGatewayConnectPeers!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.TransitGatewayConnectPeer)],
          ),
        ));
    }
    if (payload.nextToken != null) {
      result
        ..add(const _i4.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
