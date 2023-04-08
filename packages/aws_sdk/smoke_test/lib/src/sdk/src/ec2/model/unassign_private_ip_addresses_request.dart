// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.unassign_private_ip_addresses_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'unassign_private_ip_addresses_request.g.dart';

/// Contains the parameters for UnassignPrivateIpAddresses.
abstract class UnassignPrivateIpAddressesRequest
    with
        _i1.HttpInput<UnassignPrivateIpAddressesRequest>,
        _i2.AWSEquatable<UnassignPrivateIpAddressesRequest>
    implements
        Built<UnassignPrivateIpAddressesRequest,
            UnassignPrivateIpAddressesRequestBuilder> {
  /// Contains the parameters for UnassignPrivateIpAddresses.
  factory UnassignPrivateIpAddressesRequest({
    required String networkInterfaceId,
    List<String>? privateIpAddresses,
    List<String>? ipv4Prefixes,
  }) {
    return _$UnassignPrivateIpAddressesRequest._(
      networkInterfaceId: networkInterfaceId,
      privateIpAddresses:
          privateIpAddresses == null ? null : _i3.BuiltList(privateIpAddresses),
      ipv4Prefixes: ipv4Prefixes == null ? null : _i3.BuiltList(ipv4Prefixes),
    );
  }

  /// Contains the parameters for UnassignPrivateIpAddresses.
  factory UnassignPrivateIpAddressesRequest.build(
          [void Function(UnassignPrivateIpAddressesRequestBuilder) updates]) =
      _$UnassignPrivateIpAddressesRequest;

  const UnassignPrivateIpAddressesRequest._();

  factory UnassignPrivateIpAddressesRequest.fromRequest(
    UnassignPrivateIpAddressesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    UnassignPrivateIpAddressesRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UnassignPrivateIpAddressesRequestBuilder b) {}

  /// The ID of the network interface.
  String get networkInterfaceId;

  /// The secondary private IP addresses to unassign from the network interface. You can specify this option multiple times to unassign more than one IP address.
  _i3.BuiltList<String>? get privateIpAddresses;

  /// The IPv4 prefixes to unassign from the network interface.
  _i3.BuiltList<String>? get ipv4Prefixes;
  @override
  UnassignPrivateIpAddressesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        networkInterfaceId,
        privateIpAddresses,
        ipv4Prefixes,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('UnassignPrivateIpAddressesRequest');
    helper.add(
      'networkInterfaceId',
      networkInterfaceId,
    );
    helper.add(
      'privateIpAddresses',
      privateIpAddresses,
    );
    helper.add(
      'ipv4Prefixes',
      ipv4Prefixes,
    );
    return helper.toString();
  }
}

class UnassignPrivateIpAddressesRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<UnassignPrivateIpAddressesRequest> {
  const UnassignPrivateIpAddressesRequestEc2QuerySerializer()
      : super('UnassignPrivateIpAddressesRequest');

  @override
  Iterable<Type> get types => const [
        UnassignPrivateIpAddressesRequest,
        _$UnassignPrivateIpAddressesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  UnassignPrivateIpAddressesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UnassignPrivateIpAddressesRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'networkInterfaceId':
          result.networkInterfaceId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'privateIpAddress':
          if (value != null) {
            result.privateIpAddresses.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'PrivateIpAddress',
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
        case 'Ipv4Prefix':
          if (value != null) {
            result.ipv4Prefixes.replace((const _i1.XmlBuiltListSerializer(
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
    final payload = (object as UnassignPrivateIpAddressesRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'UnassignPrivateIpAddressesRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('NetworkInterfaceId'))
      ..add(serializers.serialize(
        payload.networkInterfaceId,
        specifiedType: const FullType(String),
      ));
    if (payload.privateIpAddresses != null) {
      result
        ..add(const _i1.XmlElementName('PrivateIpAddress'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'PrivateIpAddress',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.privateIpAddresses!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.ipv4Prefixes != null) {
      result
        ..add(const _i1.XmlElementName('Ipv4Prefix'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.ipv4Prefixes!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result;
  }
}
