// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.local_gateway_virtual_interface; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i2;

part 'local_gateway_virtual_interface.g.dart';

/// Describes a local gateway virtual interface.
abstract class LocalGatewayVirtualInterface
    with
        _i1.AWSEquatable<LocalGatewayVirtualInterface>
    implements
        Built<LocalGatewayVirtualInterface,
            LocalGatewayVirtualInterfaceBuilder> {
  /// Describes a local gateway virtual interface.
  factory LocalGatewayVirtualInterface({
    String? localGatewayVirtualInterfaceId,
    String? localGatewayId,
    int? vlan,
    String? localAddress,
    String? peerAddress,
    int? localBgpAsn,
    int? peerBgpAsn,
    String? ownerId,
    List<_i2.Tag>? tags,
  }) {
    vlan ??= 0;
    localBgpAsn ??= 0;
    peerBgpAsn ??= 0;
    return _$LocalGatewayVirtualInterface._(
      localGatewayVirtualInterfaceId: localGatewayVirtualInterfaceId,
      localGatewayId: localGatewayId,
      vlan: vlan,
      localAddress: localAddress,
      peerAddress: peerAddress,
      localBgpAsn: localBgpAsn,
      peerBgpAsn: peerBgpAsn,
      ownerId: ownerId,
      tags: tags == null ? null : _i3.BuiltList(tags),
    );
  }

  /// Describes a local gateway virtual interface.
  factory LocalGatewayVirtualInterface.build(
          [void Function(LocalGatewayVirtualInterfaceBuilder) updates]) =
      _$LocalGatewayVirtualInterface;

  const LocalGatewayVirtualInterface._();

  static const List<_i4.SmithySerializer> serializers = [
    LocalGatewayVirtualInterfaceEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LocalGatewayVirtualInterfaceBuilder b) {
    b.vlan = 0;
    b.localBgpAsn = 0;
    b.peerBgpAsn = 0;
  }

  /// The ID of the virtual interface.
  String? get localGatewayVirtualInterfaceId;

  /// The ID of the local gateway.
  String? get localGatewayId;

  /// The ID of the VLAN.
  int get vlan;

  /// The local address.
  String? get localAddress;

  /// The peer address.
  String? get peerAddress;

  /// The Border Gateway Protocol (BGP) Autonomous System Number (ASN) of the local gateway.
  int get localBgpAsn;

  /// The peer BGP ASN.
  int get peerBgpAsn;

  /// The ID of the Amazon Web Services account that owns the local gateway virtual interface.
  String? get ownerId;

  /// The tags assigned to the virtual interface.
  _i3.BuiltList<_i2.Tag>? get tags;
  @override
  List<Object?> get props => [
        localGatewayVirtualInterfaceId,
        localGatewayId,
        vlan,
        localAddress,
        peerAddress,
        localBgpAsn,
        peerBgpAsn,
        ownerId,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('LocalGatewayVirtualInterface');
    helper.add(
      'localGatewayVirtualInterfaceId',
      localGatewayVirtualInterfaceId,
    );
    helper.add(
      'localGatewayId',
      localGatewayId,
    );
    helper.add(
      'vlan',
      vlan,
    );
    helper.add(
      'localAddress',
      localAddress,
    );
    helper.add(
      'peerAddress',
      peerAddress,
    );
    helper.add(
      'localBgpAsn',
      localBgpAsn,
    );
    helper.add(
      'peerBgpAsn',
      peerBgpAsn,
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

class LocalGatewayVirtualInterfaceEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<LocalGatewayVirtualInterface> {
  const LocalGatewayVirtualInterfaceEc2QuerySerializer()
      : super('LocalGatewayVirtualInterface');

  @override
  Iterable<Type> get types => const [
        LocalGatewayVirtualInterface,
        _$LocalGatewayVirtualInterface,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LocalGatewayVirtualInterface deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LocalGatewayVirtualInterfaceBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'localGatewayVirtualInterfaceId':
          if (value != null) {
            result.localGatewayVirtualInterfaceId = (serializers.deserialize(
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
        case 'vlan':
          result.vlan = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'localAddress':
          if (value != null) {
            result.localAddress = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'peerAddress':
          if (value != null) {
            result.peerAddress = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'localBgpAsn':
          result.localBgpAsn = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'peerBgpAsn':
          result.peerBgpAsn = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
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
    final payload = (object as LocalGatewayVirtualInterface);
    final result = <Object?>[
      const _i4.XmlElementName(
        'LocalGatewayVirtualInterfaceResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.localGatewayVirtualInterfaceId != null) {
      result
        ..add(const _i4.XmlElementName('LocalGatewayVirtualInterfaceId'))
        ..add(serializers.serialize(
          payload.localGatewayVirtualInterfaceId!,
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
    result
      ..add(const _i4.XmlElementName('Vlan'))
      ..add(serializers.serialize(
        payload.vlan,
        specifiedType: const FullType(int),
      ));
    if (payload.localAddress != null) {
      result
        ..add(const _i4.XmlElementName('LocalAddress'))
        ..add(serializers.serialize(
          payload.localAddress!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.peerAddress != null) {
      result
        ..add(const _i4.XmlElementName('PeerAddress'))
        ..add(serializers.serialize(
          payload.peerAddress!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i4.XmlElementName('LocalBgpAsn'))
      ..add(serializers.serialize(
        payload.localBgpAsn,
        specifiedType: const FullType(int),
      ));
    result
      ..add(const _i4.XmlElementName('PeerBgpAsn'))
      ..add(serializers.serialize(
        payload.peerBgpAsn,
        specifiedType: const FullType(int),
      ));
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
