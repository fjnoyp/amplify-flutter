// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.vpc_endpoint_connection; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i7;
import 'package:smoke_test/src/sdk/src/ec2/model/dns_entry.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/ip_address_type.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/state.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i5;

part 'vpc_endpoint_connection.g.dart';

/// Describes a VPC endpoint connection to a service.
abstract class VpcEndpointConnection
    with _i1.AWSEquatable<VpcEndpointConnection>
    implements Built<VpcEndpointConnection, VpcEndpointConnectionBuilder> {
  /// Describes a VPC endpoint connection to a service.
  factory VpcEndpointConnection({
    String? serviceId,
    String? vpcEndpointId,
    String? vpcEndpointOwner,
    _i2.State? vpcEndpointState,
    DateTime? creationTimestamp,
    List<_i3.DnsEntry>? dnsEntries,
    List<String>? networkLoadBalancerArns,
    List<String>? gatewayLoadBalancerArns,
    _i4.IpAddressType? ipAddressType,
    String? vpcEndpointConnectionId,
    List<_i5.Tag>? tags,
  }) {
    return _$VpcEndpointConnection._(
      serviceId: serviceId,
      vpcEndpointId: vpcEndpointId,
      vpcEndpointOwner: vpcEndpointOwner,
      vpcEndpointState: vpcEndpointState,
      creationTimestamp: creationTimestamp,
      dnsEntries: dnsEntries == null ? null : _i6.BuiltList(dnsEntries),
      networkLoadBalancerArns: networkLoadBalancerArns == null
          ? null
          : _i6.BuiltList(networkLoadBalancerArns),
      gatewayLoadBalancerArns: gatewayLoadBalancerArns == null
          ? null
          : _i6.BuiltList(gatewayLoadBalancerArns),
      ipAddressType: ipAddressType,
      vpcEndpointConnectionId: vpcEndpointConnectionId,
      tags: tags == null ? null : _i6.BuiltList(tags),
    );
  }

  /// Describes a VPC endpoint connection to a service.
  factory VpcEndpointConnection.build(
          [void Function(VpcEndpointConnectionBuilder) updates]) =
      _$VpcEndpointConnection;

  const VpcEndpointConnection._();

  static const List<_i7.SmithySerializer> serializers = [
    VpcEndpointConnectionEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(VpcEndpointConnectionBuilder b) {}

  /// The ID of the service to which the endpoint is connected.
  String? get serviceId;

  /// The ID of the VPC endpoint.
  String? get vpcEndpointId;

  /// The ID of the Amazon Web Services account that owns the VPC endpoint.
  String? get vpcEndpointOwner;

  /// The state of the VPC endpoint.
  _i2.State? get vpcEndpointState;

  /// The date and time that the VPC endpoint was created.
  DateTime? get creationTimestamp;

  /// The DNS entries for the VPC endpoint.
  _i6.BuiltList<_i3.DnsEntry>? get dnsEntries;

  /// The Amazon Resource Names (ARNs) of the network load balancers for the service.
  _i6.BuiltList<String>? get networkLoadBalancerArns;

  /// The Amazon Resource Names (ARNs) of the Gateway Load Balancers for the service.
  _i6.BuiltList<String>? get gatewayLoadBalancerArns;

  /// The IP address type for the endpoint.
  _i4.IpAddressType? get ipAddressType;

  /// The ID of the VPC endpoint connection.
  String? get vpcEndpointConnectionId;

  /// The tags.
  _i6.BuiltList<_i5.Tag>? get tags;
  @override
  List<Object?> get props => [
        serviceId,
        vpcEndpointId,
        vpcEndpointOwner,
        vpcEndpointState,
        creationTimestamp,
        dnsEntries,
        networkLoadBalancerArns,
        gatewayLoadBalancerArns,
        ipAddressType,
        vpcEndpointConnectionId,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VpcEndpointConnection');
    helper.add(
      'serviceId',
      serviceId,
    );
    helper.add(
      'vpcEndpointId',
      vpcEndpointId,
    );
    helper.add(
      'vpcEndpointOwner',
      vpcEndpointOwner,
    );
    helper.add(
      'vpcEndpointState',
      vpcEndpointState,
    );
    helper.add(
      'creationTimestamp',
      creationTimestamp,
    );
    helper.add(
      'dnsEntries',
      dnsEntries,
    );
    helper.add(
      'networkLoadBalancerArns',
      networkLoadBalancerArns,
    );
    helper.add(
      'gatewayLoadBalancerArns',
      gatewayLoadBalancerArns,
    );
    helper.add(
      'ipAddressType',
      ipAddressType,
    );
    helper.add(
      'vpcEndpointConnectionId',
      vpcEndpointConnectionId,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class VpcEndpointConnectionEc2QuerySerializer
    extends _i7.StructuredSmithySerializer<VpcEndpointConnection> {
  const VpcEndpointConnectionEc2QuerySerializer()
      : super('VpcEndpointConnection');

  @override
  Iterable<Type> get types => const [
        VpcEndpointConnection,
        _$VpcEndpointConnection,
      ];
  @override
  Iterable<_i7.ShapeId> get supportedProtocols => const [
        _i7.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VpcEndpointConnection deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VpcEndpointConnectionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'serviceId':
          if (value != null) {
            result.serviceId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'vpcEndpointId':
          if (value != null) {
            result.vpcEndpointId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'vpcEndpointOwner':
          if (value != null) {
            result.vpcEndpointOwner = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'vpcEndpointState':
          if (value != null) {
            result.vpcEndpointState = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.State),
            ) as _i2.State);
          }
          break;
        case 'creationTimestamp':
          if (value != null) {
            result.creationTimestamp = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'dnsEntrySet':
          if (value != null) {
            result.dnsEntries.replace((const _i7.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i7.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(_i3.DnsEntry)],
              ),
            ) as _i6.BuiltList<_i3.DnsEntry>));
          }
          break;
        case 'networkLoadBalancerArnSet':
          if (value != null) {
            result.networkLoadBalancerArns
                .replace((const _i7.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i7.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(String)],
              ),
            ) as _i6.BuiltList<String>));
          }
          break;
        case 'gatewayLoadBalancerArnSet':
          if (value != null) {
            result.gatewayLoadBalancerArns
                .replace((const _i7.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i7.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(String)],
              ),
            ) as _i6.BuiltList<String>));
          }
          break;
        case 'ipAddressType':
          if (value != null) {
            result.ipAddressType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.IpAddressType),
            ) as _i4.IpAddressType);
          }
          break;
        case 'vpcEndpointConnectionId':
          if (value != null) {
            result.vpcEndpointConnectionId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'tagSet':
          if (value != null) {
            result.tags.replace((const _i7.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i7.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(_i5.Tag)],
              ),
            ) as _i6.BuiltList<_i5.Tag>));
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
    final payload = (object as VpcEndpointConnection);
    final result = <Object?>[
      const _i7.XmlElementName(
        'VpcEndpointConnectionResponse',
        _i7.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.serviceId != null) {
      result
        ..add(const _i7.XmlElementName('ServiceId'))
        ..add(serializers.serialize(
          payload.serviceId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.vpcEndpointId != null) {
      result
        ..add(const _i7.XmlElementName('VpcEndpointId'))
        ..add(serializers.serialize(
          payload.vpcEndpointId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.vpcEndpointOwner != null) {
      result
        ..add(const _i7.XmlElementName('VpcEndpointOwner'))
        ..add(serializers.serialize(
          payload.vpcEndpointOwner!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.vpcEndpointState != null) {
      result
        ..add(const _i7.XmlElementName('VpcEndpointState'))
        ..add(serializers.serialize(
          payload.vpcEndpointState!,
          specifiedType: const FullType.nullable(_i2.State),
        ));
    }
    if (payload.creationTimestamp != null) {
      result
        ..add(const _i7.XmlElementName('CreationTimestamp'))
        ..add(serializers.serialize(
          payload.creationTimestamp!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.dnsEntries != null) {
      result
        ..add(const _i7.XmlElementName('DnsEntrySet'))
        ..add(const _i7.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i7.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.dnsEntries!,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(_i3.DnsEntry)],
          ),
        ));
    }
    if (payload.networkLoadBalancerArns != null) {
      result
        ..add(const _i7.XmlElementName('NetworkLoadBalancerArnSet'))
        ..add(const _i7.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i7.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.networkLoadBalancerArns!,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.gatewayLoadBalancerArns != null) {
      result
        ..add(const _i7.XmlElementName('GatewayLoadBalancerArnSet'))
        ..add(const _i7.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i7.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.gatewayLoadBalancerArns!,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.ipAddressType != null) {
      result
        ..add(const _i7.XmlElementName('IpAddressType'))
        ..add(serializers.serialize(
          payload.ipAddressType!,
          specifiedType: const FullType.nullable(_i4.IpAddressType),
        ));
    }
    if (payload.vpcEndpointConnectionId != null) {
      result
        ..add(const _i7.XmlElementName('VpcEndpointConnectionId'))
        ..add(serializers.serialize(
          payload.vpcEndpointConnectionId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.tags != null) {
      result
        ..add(const _i7.XmlElementName('TagSet'))
        ..add(const _i7.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i7.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tags!,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(_i5.Tag)],
          ),
        ));
    }
    return result;
  }
}
