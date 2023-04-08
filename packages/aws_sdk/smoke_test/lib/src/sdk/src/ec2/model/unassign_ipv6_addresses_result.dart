// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.unassign_ipv6_addresses_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'unassign_ipv6_addresses_result.g.dart';

abstract class UnassignIpv6AddressesResult
    with _i1.AWSEquatable<UnassignIpv6AddressesResult>
    implements
        Built<UnassignIpv6AddressesResult, UnassignIpv6AddressesResultBuilder> {
  factory UnassignIpv6AddressesResult({
    String? networkInterfaceId,
    List<String>? unassignedIpv6Addresses,
    List<String>? unassignedIpv6Prefixes,
  }) {
    return _$UnassignIpv6AddressesResult._(
      networkInterfaceId: networkInterfaceId,
      unassignedIpv6Addresses: unassignedIpv6Addresses == null
          ? null
          : _i2.BuiltList(unassignedIpv6Addresses),
      unassignedIpv6Prefixes: unassignedIpv6Prefixes == null
          ? null
          : _i2.BuiltList(unassignedIpv6Prefixes),
    );
  }

  factory UnassignIpv6AddressesResult.build(
          [void Function(UnassignIpv6AddressesResultBuilder) updates]) =
      _$UnassignIpv6AddressesResult;

  const UnassignIpv6AddressesResult._();

  /// Constructs a [UnassignIpv6AddressesResult] from a [payload] and [response].
  factory UnassignIpv6AddressesResult.fromResponse(
    UnassignIpv6AddressesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    UnassignIpv6AddressesResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UnassignIpv6AddressesResultBuilder b) {}

  /// The ID of the network interface.
  String? get networkInterfaceId;

  /// The IPv6 addresses that have been unassigned from the network interface.
  _i2.BuiltList<String>? get unassignedIpv6Addresses;

  /// The IPv4 prefixes that have been unassigned from the network interface.
  _i2.BuiltList<String>? get unassignedIpv6Prefixes;
  @override
  List<Object?> get props => [
        networkInterfaceId,
        unassignedIpv6Addresses,
        unassignedIpv6Prefixes,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UnassignIpv6AddressesResult');
    helper.add(
      'networkInterfaceId',
      networkInterfaceId,
    );
    helper.add(
      'unassignedIpv6Addresses',
      unassignedIpv6Addresses,
    );
    helper.add(
      'unassignedIpv6Prefixes',
      unassignedIpv6Prefixes,
    );
    return helper.toString();
  }
}

class UnassignIpv6AddressesResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<UnassignIpv6AddressesResult> {
  const UnassignIpv6AddressesResultEc2QuerySerializer()
      : super('UnassignIpv6AddressesResult');

  @override
  Iterable<Type> get types => const [
        UnassignIpv6AddressesResult,
        _$UnassignIpv6AddressesResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  UnassignIpv6AddressesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UnassignIpv6AddressesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'networkInterfaceId':
          if (value != null) {
            result.networkInterfaceId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'unassignedIpv6Addresses':
          if (value != null) {
            result.unassignedIpv6Addresses
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
        case 'unassignedIpv6PrefixSet':
          if (value != null) {
            result.unassignedIpv6Prefixes
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
    final payload = (object as UnassignIpv6AddressesResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'UnassignIpv6AddressesResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.networkInterfaceId != null) {
      result
        ..add(const _i3.XmlElementName('NetworkInterfaceId'))
        ..add(serializers.serialize(
          payload.networkInterfaceId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.unassignedIpv6Addresses != null) {
      result
        ..add(const _i3.XmlElementName('UnassignedIpv6Addresses'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.unassignedIpv6Addresses!,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.unassignedIpv6Prefixes != null) {
      result
        ..add(const _i3.XmlElementName('UnassignedIpv6PrefixSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.unassignedIpv6Prefixes!,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result;
  }
}
