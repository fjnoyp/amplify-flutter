// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_transit_gateway_connect_peer_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_connect_peer.dart'
    as _i2;

part 'delete_transit_gateway_connect_peer_result.g.dart';

abstract class DeleteTransitGatewayConnectPeerResult
    with
        _i1.AWSEquatable<DeleteTransitGatewayConnectPeerResult>
    implements
        Built<DeleteTransitGatewayConnectPeerResult,
            DeleteTransitGatewayConnectPeerResultBuilder> {
  factory DeleteTransitGatewayConnectPeerResult(
      {_i2.TransitGatewayConnectPeer? transitGatewayConnectPeer}) {
    return _$DeleteTransitGatewayConnectPeerResult._(
        transitGatewayConnectPeer: transitGatewayConnectPeer);
  }

  factory DeleteTransitGatewayConnectPeerResult.build(
      [void Function(DeleteTransitGatewayConnectPeerResultBuilder)
          updates]) = _$DeleteTransitGatewayConnectPeerResult;

  const DeleteTransitGatewayConnectPeerResult._();

  /// Constructs a [DeleteTransitGatewayConnectPeerResult] from a [payload] and [response].
  factory DeleteTransitGatewayConnectPeerResult.fromResponse(
    DeleteTransitGatewayConnectPeerResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    DeleteTransitGatewayConnectPeerResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteTransitGatewayConnectPeerResultBuilder b) {}

  /// Information about the deleted Connect peer.
  _i2.TransitGatewayConnectPeer? get transitGatewayConnectPeer;
  @override
  List<Object?> get props => [transitGatewayConnectPeer];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteTransitGatewayConnectPeerResult');
    helper.add(
      'transitGatewayConnectPeer',
      transitGatewayConnectPeer,
    );
    return helper.toString();
  }
}

class DeleteTransitGatewayConnectPeerResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<DeleteTransitGatewayConnectPeerResult> {
  const DeleteTransitGatewayConnectPeerResultEc2QuerySerializer()
      : super('DeleteTransitGatewayConnectPeerResult');

  @override
  Iterable<Type> get types => const [
        DeleteTransitGatewayConnectPeerResult,
        _$DeleteTransitGatewayConnectPeerResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteTransitGatewayConnectPeerResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteTransitGatewayConnectPeerResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'transitGatewayConnectPeer':
          if (value != null) {
            result.transitGatewayConnectPeer.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.TransitGatewayConnectPeer),
            ) as _i2.TransitGatewayConnectPeer));
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
    final payload = (object as DeleteTransitGatewayConnectPeerResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'DeleteTransitGatewayConnectPeerResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.transitGatewayConnectPeer != null) {
      result
        ..add(const _i3.XmlElementName('TransitGatewayConnectPeer'))
        ..add(serializers.serialize(
          payload.transitGatewayConnectPeer!,
          specifiedType: const FullType(_i2.TransitGatewayConnectPeer),
        ));
    }
    return result;
  }
}
