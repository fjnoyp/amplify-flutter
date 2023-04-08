// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.transit_gateway_connect_peer; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_connect_peer_configuration.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_connect_peer_state.dart'
    as _i2;

part 'transit_gateway_connect_peer.g.dart';

/// Describes a transit gateway Connect peer.
abstract class TransitGatewayConnectPeer
    with _i1.AWSEquatable<TransitGatewayConnectPeer>
    implements
        Built<TransitGatewayConnectPeer, TransitGatewayConnectPeerBuilder> {
  /// Describes a transit gateway Connect peer.
  factory TransitGatewayConnectPeer({
    String? transitGatewayAttachmentId,
    String? transitGatewayConnectPeerId,
    _i2.TransitGatewayConnectPeerState? state,
    DateTime? creationTime,
    _i3.TransitGatewayConnectPeerConfiguration? connectPeerConfiguration,
    List<_i4.Tag>? tags,
  }) {
    return _$TransitGatewayConnectPeer._(
      transitGatewayAttachmentId: transitGatewayAttachmentId,
      transitGatewayConnectPeerId: transitGatewayConnectPeerId,
      state: state,
      creationTime: creationTime,
      connectPeerConfiguration: connectPeerConfiguration,
      tags: tags == null ? null : _i5.BuiltList(tags),
    );
  }

  /// Describes a transit gateway Connect peer.
  factory TransitGatewayConnectPeer.build(
          [void Function(TransitGatewayConnectPeerBuilder) updates]) =
      _$TransitGatewayConnectPeer;

  const TransitGatewayConnectPeer._();

  static const List<_i6.SmithySerializer> serializers = [
    TransitGatewayConnectPeerEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TransitGatewayConnectPeerBuilder b) {}

  /// The ID of the Connect attachment.
  String? get transitGatewayAttachmentId;

  /// The ID of the Connect peer.
  String? get transitGatewayConnectPeerId;

  /// The state of the Connect peer.
  _i2.TransitGatewayConnectPeerState? get state;

  /// The creation time.
  DateTime? get creationTime;

  /// The Connect peer details.
  _i3.TransitGatewayConnectPeerConfiguration? get connectPeerConfiguration;

  /// The tags for the Connect peer.
  _i5.BuiltList<_i4.Tag>? get tags;
  @override
  List<Object?> get props => [
        transitGatewayAttachmentId,
        transitGatewayConnectPeerId,
        state,
        creationTime,
        connectPeerConfiguration,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TransitGatewayConnectPeer');
    helper.add(
      'transitGatewayAttachmentId',
      transitGatewayAttachmentId,
    );
    helper.add(
      'transitGatewayConnectPeerId',
      transitGatewayConnectPeerId,
    );
    helper.add(
      'state',
      state,
    );
    helper.add(
      'creationTime',
      creationTime,
    );
    helper.add(
      'connectPeerConfiguration',
      connectPeerConfiguration,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class TransitGatewayConnectPeerEc2QuerySerializer
    extends _i6.StructuredSmithySerializer<TransitGatewayConnectPeer> {
  const TransitGatewayConnectPeerEc2QuerySerializer()
      : super('TransitGatewayConnectPeer');

  @override
  Iterable<Type> get types => const [
        TransitGatewayConnectPeer,
        _$TransitGatewayConnectPeer,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayConnectPeer deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayConnectPeerBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'transitGatewayAttachmentId':
          if (value != null) {
            result.transitGatewayAttachmentId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'transitGatewayConnectPeerId':
          if (value != null) {
            result.transitGatewayConnectPeerId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'state':
          if (value != null) {
            result.state = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.TransitGatewayConnectPeerState),
            ) as _i2.TransitGatewayConnectPeerState);
          }
          break;
        case 'creationTime':
          if (value != null) {
            result.creationTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'connectPeerConfiguration':
          if (value != null) {
            result.connectPeerConfiguration.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i3.TransitGatewayConnectPeerConfiguration),
            ) as _i3.TransitGatewayConnectPeerConfiguration));
          }
          break;
        case 'tagSet':
          if (value != null) {
            result.tags.replace((const _i6.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i6.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(_i4.Tag)],
              ),
            ) as _i5.BuiltList<_i4.Tag>));
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
    final payload = (object as TransitGatewayConnectPeer);
    final result = <Object?>[
      const _i6.XmlElementName(
        'TransitGatewayConnectPeerResponse',
        _i6.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.transitGatewayAttachmentId != null) {
      result
        ..add(const _i6.XmlElementName('TransitGatewayAttachmentId'))
        ..add(serializers.serialize(
          payload.transitGatewayAttachmentId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.transitGatewayConnectPeerId != null) {
      result
        ..add(const _i6.XmlElementName('TransitGatewayConnectPeerId'))
        ..add(serializers.serialize(
          payload.transitGatewayConnectPeerId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.state != null) {
      result
        ..add(const _i6.XmlElementName('State'))
        ..add(serializers.serialize(
          payload.state!,
          specifiedType:
              const FullType.nullable(_i2.TransitGatewayConnectPeerState),
        ));
    }
    if (payload.creationTime != null) {
      result
        ..add(const _i6.XmlElementName('CreationTime'))
        ..add(serializers.serialize(
          payload.creationTime!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.connectPeerConfiguration != null) {
      result
        ..add(const _i6.XmlElementName('ConnectPeerConfiguration'))
        ..add(serializers.serialize(
          payload.connectPeerConfiguration!,
          specifiedType:
              const FullType(_i3.TransitGatewayConnectPeerConfiguration),
        ));
    }
    if (payload.tags != null) {
      result
        ..add(const _i6.XmlElementName('TagSet'))
        ..add(const _i6.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i6.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tags!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i4.Tag)],
          ),
        ));
    }
    return result;
  }
}
