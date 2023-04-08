// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.vpc_endpoint; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i10;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i11;
import 'package:smoke_test/src/sdk/src/ec2/model/dns_entry.dart' as _i7;
import 'package:smoke_test/src/sdk/src/ec2/model/dns_options.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/ip_address_type.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/last_error.dart' as _i9;
import 'package:smoke_test/src/sdk/src/ec2/model/security_group_identifier.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/state.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i8;
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_endpoint_type.dart' as _i2;

part 'vpc_endpoint.g.dart';

/// Describes a VPC endpoint.
abstract class VpcEndpoint
    with _i1.AWSEquatable<VpcEndpoint>
    implements Built<VpcEndpoint, VpcEndpointBuilder> {
  /// Describes a VPC endpoint.
  factory VpcEndpoint({
    String? vpcEndpointId,
    _i2.VpcEndpointType? vpcEndpointType,
    String? vpcId,
    String? serviceName,
    _i3.State? state,
    String? policyDocument,
    List<String>? routeTableIds,
    List<String>? subnetIds,
    List<_i4.SecurityGroupIdentifier>? groups,
    _i5.IpAddressType? ipAddressType,
    _i6.DnsOptions? dnsOptions,
    bool? privateDnsEnabled,
    bool? requesterManaged,
    List<String>? networkInterfaceIds,
    List<_i7.DnsEntry>? dnsEntries,
    DateTime? creationTimestamp,
    List<_i8.Tag>? tags,
    String? ownerId,
    _i9.LastError? lastError,
  }) {
    privateDnsEnabled ??= false;
    requesterManaged ??= false;
    return _$VpcEndpoint._(
      vpcEndpointId: vpcEndpointId,
      vpcEndpointType: vpcEndpointType,
      vpcId: vpcId,
      serviceName: serviceName,
      state: state,
      policyDocument: policyDocument,
      routeTableIds:
          routeTableIds == null ? null : _i10.BuiltList(routeTableIds),
      subnetIds: subnetIds == null ? null : _i10.BuiltList(subnetIds),
      groups: groups == null ? null : _i10.BuiltList(groups),
      ipAddressType: ipAddressType,
      dnsOptions: dnsOptions,
      privateDnsEnabled: privateDnsEnabled,
      requesterManaged: requesterManaged,
      networkInterfaceIds: networkInterfaceIds == null
          ? null
          : _i10.BuiltList(networkInterfaceIds),
      dnsEntries: dnsEntries == null ? null : _i10.BuiltList(dnsEntries),
      creationTimestamp: creationTimestamp,
      tags: tags == null ? null : _i10.BuiltList(tags),
      ownerId: ownerId,
      lastError: lastError,
    );
  }

  /// Describes a VPC endpoint.
  factory VpcEndpoint.build([void Function(VpcEndpointBuilder) updates]) =
      _$VpcEndpoint;

  const VpcEndpoint._();

  static const List<_i11.SmithySerializer> serializers = [
    VpcEndpointEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(VpcEndpointBuilder b) {
    b.privateDnsEnabled = false;
    b.requesterManaged = false;
  }

  /// The ID of the endpoint.
  String? get vpcEndpointId;

  /// The type of endpoint.
  _i2.VpcEndpointType? get vpcEndpointType;

  /// The ID of the VPC to which the endpoint is associated.
  String? get vpcId;

  /// The name of the service to which the endpoint is associated.
  String? get serviceName;

  /// The state of the endpoint.
  _i3.State? get state;

  /// The policy document associated with the endpoint, if applicable.
  String? get policyDocument;

  /// (Gateway endpoint) One or more route tables associated with the endpoint.
  _i10.BuiltList<String>? get routeTableIds;

  /// (Interface endpoint) The subnets for the endpoint.
  _i10.BuiltList<String>? get subnetIds;

  /// (Interface endpoint) Information about the security groups that are associated with the network interface.
  _i10.BuiltList<_i4.SecurityGroupIdentifier>? get groups;

  /// The IP address type for the endpoint.
  _i5.IpAddressType? get ipAddressType;

  /// The DNS options for the endpoint.
  _i6.DnsOptions? get dnsOptions;

  /// (Interface endpoint) Indicates whether the VPC is associated with a private hosted zone.
  bool get privateDnsEnabled;

  /// Indicates whether the endpoint is being managed by its service.
  bool get requesterManaged;

  /// (Interface endpoint) One or more network interfaces for the endpoint.
  _i10.BuiltList<String>? get networkInterfaceIds;

  /// (Interface endpoint) The DNS entries for the endpoint.
  _i10.BuiltList<_i7.DnsEntry>? get dnsEntries;

  /// The date and time that the endpoint was created.
  DateTime? get creationTimestamp;

  /// Any tags assigned to the endpoint.
  _i10.BuiltList<_i8.Tag>? get tags;

  /// The ID of the Amazon Web Services account that owns the endpoint.
  String? get ownerId;

  /// The last error that occurred for endpoint.
  _i9.LastError? get lastError;
  @override
  List<Object?> get props => [
        vpcEndpointId,
        vpcEndpointType,
        vpcId,
        serviceName,
        state,
        policyDocument,
        routeTableIds,
        subnetIds,
        groups,
        ipAddressType,
        dnsOptions,
        privateDnsEnabled,
        requesterManaged,
        networkInterfaceIds,
        dnsEntries,
        creationTimestamp,
        tags,
        ownerId,
        lastError,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VpcEndpoint');
    helper.add(
      'vpcEndpointId',
      vpcEndpointId,
    );
    helper.add(
      'vpcEndpointType',
      vpcEndpointType,
    );
    helper.add(
      'vpcId',
      vpcId,
    );
    helper.add(
      'serviceName',
      serviceName,
    );
    helper.add(
      'state',
      state,
    );
    helper.add(
      'policyDocument',
      policyDocument,
    );
    helper.add(
      'routeTableIds',
      routeTableIds,
    );
    helper.add(
      'subnetIds',
      subnetIds,
    );
    helper.add(
      'groups',
      groups,
    );
    helper.add(
      'ipAddressType',
      ipAddressType,
    );
    helper.add(
      'dnsOptions',
      dnsOptions,
    );
    helper.add(
      'privateDnsEnabled',
      privateDnsEnabled,
    );
    helper.add(
      'requesterManaged',
      requesterManaged,
    );
    helper.add(
      'networkInterfaceIds',
      networkInterfaceIds,
    );
    helper.add(
      'dnsEntries',
      dnsEntries,
    );
    helper.add(
      'creationTimestamp',
      creationTimestamp,
    );
    helper.add(
      'tags',
      tags,
    );
    helper.add(
      'ownerId',
      ownerId,
    );
    helper.add(
      'lastError',
      lastError,
    );
    return helper.toString();
  }
}

class VpcEndpointEc2QuerySerializer
    extends _i11.StructuredSmithySerializer<VpcEndpoint> {
  const VpcEndpointEc2QuerySerializer() : super('VpcEndpoint');

  @override
  Iterable<Type> get types => const [
        VpcEndpoint,
        _$VpcEndpoint,
      ];
  @override
  Iterable<_i11.ShapeId> get supportedProtocols => const [
        _i11.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VpcEndpoint deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VpcEndpointBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'vpcEndpointId':
          if (value != null) {
            result.vpcEndpointId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'vpcEndpointType':
          if (value != null) {
            result.vpcEndpointType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.VpcEndpointType),
            ) as _i2.VpcEndpointType);
          }
          break;
        case 'vpcId':
          if (value != null) {
            result.vpcId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'serviceName':
          if (value != null) {
            result.serviceName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'state':
          if (value != null) {
            result.state = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.State),
            ) as _i3.State);
          }
          break;
        case 'policyDocument':
          if (value != null) {
            result.policyDocument = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'routeTableIdSet':
          if (value != null) {
            result.routeTableIds.replace((const _i11.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i11.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i10.BuiltList,
                [FullType(String)],
              ),
            ) as _i10.BuiltList<String>));
          }
          break;
        case 'subnetIdSet':
          if (value != null) {
            result.subnetIds.replace((const _i11.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i11.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i10.BuiltList,
                [FullType(String)],
              ),
            ) as _i10.BuiltList<String>));
          }
          break;
        case 'groupSet':
          if (value != null) {
            result.groups.replace((const _i11.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i11.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i10.BuiltList,
                [FullType(_i4.SecurityGroupIdentifier)],
              ),
            ) as _i10.BuiltList<_i4.SecurityGroupIdentifier>));
          }
          break;
        case 'ipAddressType':
          if (value != null) {
            result.ipAddressType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.IpAddressType),
            ) as _i5.IpAddressType);
          }
          break;
        case 'dnsOptions':
          if (value != null) {
            result.dnsOptions.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.DnsOptions),
            ) as _i6.DnsOptions));
          }
          break;
        case 'privateDnsEnabled':
          result.privateDnsEnabled = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'requesterManaged':
          result.requesterManaged = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'networkInterfaceIdSet':
          if (value != null) {
            result.networkInterfaceIds
                .replace((const _i11.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i11.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i10.BuiltList,
                [FullType(String)],
              ),
            ) as _i10.BuiltList<String>));
          }
          break;
        case 'dnsEntrySet':
          if (value != null) {
            result.dnsEntries.replace((const _i11.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i11.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i10.BuiltList,
                [FullType(_i7.DnsEntry)],
              ),
            ) as _i10.BuiltList<_i7.DnsEntry>));
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
        case 'tagSet':
          if (value != null) {
            result.tags.replace((const _i11.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i11.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i10.BuiltList,
                [FullType(_i8.Tag)],
              ),
            ) as _i10.BuiltList<_i8.Tag>));
          }
          break;
        case 'ownerId':
          if (value != null) {
            result.ownerId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'lastError':
          if (value != null) {
            result.lastError.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i9.LastError),
            ) as _i9.LastError));
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
    final payload = (object as VpcEndpoint);
    final result = <Object?>[
      const _i11.XmlElementName(
        'VpcEndpointResponse',
        _i11.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.vpcEndpointId != null) {
      result
        ..add(const _i11.XmlElementName('VpcEndpointId'))
        ..add(serializers.serialize(
          payload.vpcEndpointId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.vpcEndpointType != null) {
      result
        ..add(const _i11.XmlElementName('VpcEndpointType'))
        ..add(serializers.serialize(
          payload.vpcEndpointType!,
          specifiedType: const FullType.nullable(_i2.VpcEndpointType),
        ));
    }
    if (payload.vpcId != null) {
      result
        ..add(const _i11.XmlElementName('VpcId'))
        ..add(serializers.serialize(
          payload.vpcId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.serviceName != null) {
      result
        ..add(const _i11.XmlElementName('ServiceName'))
        ..add(serializers.serialize(
          payload.serviceName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.state != null) {
      result
        ..add(const _i11.XmlElementName('State'))
        ..add(serializers.serialize(
          payload.state!,
          specifiedType: const FullType.nullable(_i3.State),
        ));
    }
    if (payload.policyDocument != null) {
      result
        ..add(const _i11.XmlElementName('PolicyDocument'))
        ..add(serializers.serialize(
          payload.policyDocument!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.routeTableIds != null) {
      result
        ..add(const _i11.XmlElementName('RouteTableIdSet'))
        ..add(const _i11.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i11.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.routeTableIds!,
          specifiedType: const FullType.nullable(
            _i10.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.subnetIds != null) {
      result
        ..add(const _i11.XmlElementName('SubnetIdSet'))
        ..add(const _i11.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i11.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.subnetIds!,
          specifiedType: const FullType.nullable(
            _i10.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.groups != null) {
      result
        ..add(const _i11.XmlElementName('GroupSet'))
        ..add(const _i11.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i11.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.groups!,
          specifiedType: const FullType.nullable(
            _i10.BuiltList,
            [FullType(_i4.SecurityGroupIdentifier)],
          ),
        ));
    }
    if (payload.ipAddressType != null) {
      result
        ..add(const _i11.XmlElementName('IpAddressType'))
        ..add(serializers.serialize(
          payload.ipAddressType!,
          specifiedType: const FullType.nullable(_i5.IpAddressType),
        ));
    }
    if (payload.dnsOptions != null) {
      result
        ..add(const _i11.XmlElementName('DnsOptions'))
        ..add(serializers.serialize(
          payload.dnsOptions!,
          specifiedType: const FullType(_i6.DnsOptions),
        ));
    }
    result
      ..add(const _i11.XmlElementName('PrivateDnsEnabled'))
      ..add(serializers.serialize(
        payload.privateDnsEnabled,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i11.XmlElementName('RequesterManaged'))
      ..add(serializers.serialize(
        payload.requesterManaged,
        specifiedType: const FullType(bool),
      ));
    if (payload.networkInterfaceIds != null) {
      result
        ..add(const _i11.XmlElementName('NetworkInterfaceIdSet'))
        ..add(const _i11.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i11.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.networkInterfaceIds!,
          specifiedType: const FullType.nullable(
            _i10.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.dnsEntries != null) {
      result
        ..add(const _i11.XmlElementName('DnsEntrySet'))
        ..add(const _i11.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i11.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.dnsEntries!,
          specifiedType: const FullType.nullable(
            _i10.BuiltList,
            [FullType(_i7.DnsEntry)],
          ),
        ));
    }
    if (payload.creationTimestamp != null) {
      result
        ..add(const _i11.XmlElementName('CreationTimestamp'))
        ..add(serializers.serialize(
          payload.creationTimestamp!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.tags != null) {
      result
        ..add(const _i11.XmlElementName('TagSet'))
        ..add(const _i11.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i11.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tags!,
          specifiedType: const FullType.nullable(
            _i10.BuiltList,
            [FullType(_i8.Tag)],
          ),
        ));
    }
    if (payload.ownerId != null) {
      result
        ..add(const _i11.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          payload.ownerId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.lastError != null) {
      result
        ..add(const _i11.XmlElementName('LastError'))
        ..add(serializers.serialize(
          payload.lastError!,
          specifiedType: const FullType(_i9.LastError),
        ));
    }
    return result;
  }
}
