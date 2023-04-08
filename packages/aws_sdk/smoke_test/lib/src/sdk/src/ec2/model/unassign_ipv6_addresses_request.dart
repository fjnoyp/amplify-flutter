// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.unassign_ipv6_addresses_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'unassign_ipv6_addresses_request.g.dart';

abstract class UnassignIpv6AddressesRequest
    with
        _i1.HttpInput<UnassignIpv6AddressesRequest>,
        _i2.AWSEquatable<UnassignIpv6AddressesRequest>
    implements
        Built<UnassignIpv6AddressesRequest,
            UnassignIpv6AddressesRequestBuilder> {
  factory UnassignIpv6AddressesRequest({
    List<String>? ipv6Addresses,
    List<String>? ipv6Prefixes,
    required String networkInterfaceId,
  }) {
    return _$UnassignIpv6AddressesRequest._(
      ipv6Addresses:
          ipv6Addresses == null ? null : _i3.BuiltList(ipv6Addresses),
      ipv6Prefixes: ipv6Prefixes == null ? null : _i3.BuiltList(ipv6Prefixes),
      networkInterfaceId: networkInterfaceId,
    );
  }

  factory UnassignIpv6AddressesRequest.build(
          [void Function(UnassignIpv6AddressesRequestBuilder) updates]) =
      _$UnassignIpv6AddressesRequest;

  const UnassignIpv6AddressesRequest._();

  factory UnassignIpv6AddressesRequest.fromRequest(
    UnassignIpv6AddressesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    UnassignIpv6AddressesRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UnassignIpv6AddressesRequestBuilder b) {}

  /// The IPv6 addresses to unassign from the network interface.
  _i3.BuiltList<String>? get ipv6Addresses;

  /// The IPv6 prefixes to unassign from the network interface.
  _i3.BuiltList<String>? get ipv6Prefixes;

  /// The ID of the network interface.
  String get networkInterfaceId;
  @override
  UnassignIpv6AddressesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        ipv6Addresses,
        ipv6Prefixes,
        networkInterfaceId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UnassignIpv6AddressesRequest');
    helper.add(
      'ipv6Addresses',
      ipv6Addresses,
    );
    helper.add(
      'ipv6Prefixes',
      ipv6Prefixes,
    );
    helper.add(
      'networkInterfaceId',
      networkInterfaceId,
    );
    return helper.toString();
  }
}

class UnassignIpv6AddressesRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<UnassignIpv6AddressesRequest> {
  const UnassignIpv6AddressesRequestEc2QuerySerializer()
      : super('UnassignIpv6AddressesRequest');

  @override
  Iterable<Type> get types => const [
        UnassignIpv6AddressesRequest,
        _$UnassignIpv6AddressesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  UnassignIpv6AddressesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UnassignIpv6AddressesRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ipv6Addresses':
          if (value != null) {
            result.ipv6Addresses.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i1.XmlIndexer.ec2QueryList,
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
        case 'Ipv6Prefix':
          if (value != null) {
            result.ipv6Prefixes.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i1.XmlIndexer.ec2QueryList,
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
        case 'networkInterfaceId':
          result.networkInterfaceId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as UnassignIpv6AddressesRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'UnassignIpv6AddressesRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.ipv6Addresses != null) {
      result
        ..add(const _i1.XmlElementName('Ipv6Addresses'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.ipv6Addresses!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.ipv6Prefixes != null) {
      result
        ..add(const _i1.XmlElementName('Ipv6Prefix'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.ipv6Prefixes!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    result
      ..add(const _i1.XmlElementName('NetworkInterfaceId'))
      ..add(serializers.serialize(
        payload.networkInterfaceId,
        specifiedType: const FullType(String),
      ));
    return result;
  }
}
