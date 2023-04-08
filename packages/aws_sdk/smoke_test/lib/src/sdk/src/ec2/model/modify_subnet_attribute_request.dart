// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.modify_subnet_attribute_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/attribute_boolean_value.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/hostname_type.dart' as _i4;

part 'modify_subnet_attribute_request.g.dart';

abstract class ModifySubnetAttributeRequest
    with
        _i1.HttpInput<ModifySubnetAttributeRequest>,
        _i2.AWSEquatable<ModifySubnetAttributeRequest>
    implements
        Built<ModifySubnetAttributeRequest,
            ModifySubnetAttributeRequestBuilder> {
  factory ModifySubnetAttributeRequest({
    _i3.AttributeBooleanValue? assignIpv6AddressOnCreation,
    _i3.AttributeBooleanValue? mapPublicIpOnLaunch,
    required String subnetId,
    _i3.AttributeBooleanValue? mapCustomerOwnedIpOnLaunch,
    String? customerOwnedIpv4Pool,
    _i3.AttributeBooleanValue? enableDns64,
    _i4.HostnameType? privateDnsHostnameTypeOnLaunch,
    _i3.AttributeBooleanValue? enableResourceNameDnsARecordOnLaunch,
    _i3.AttributeBooleanValue? enableResourceNameDnsAaaaRecordOnLaunch,
    int? enableLniAtDeviceIndex,
    _i3.AttributeBooleanValue? disableLniAtDeviceIndex,
  }) {
    enableLniAtDeviceIndex ??= 0;
    return _$ModifySubnetAttributeRequest._(
      assignIpv6AddressOnCreation: assignIpv6AddressOnCreation,
      mapPublicIpOnLaunch: mapPublicIpOnLaunch,
      subnetId: subnetId,
      mapCustomerOwnedIpOnLaunch: mapCustomerOwnedIpOnLaunch,
      customerOwnedIpv4Pool: customerOwnedIpv4Pool,
      enableDns64: enableDns64,
      privateDnsHostnameTypeOnLaunch: privateDnsHostnameTypeOnLaunch,
      enableResourceNameDnsARecordOnLaunch:
          enableResourceNameDnsARecordOnLaunch,
      enableResourceNameDnsAaaaRecordOnLaunch:
          enableResourceNameDnsAaaaRecordOnLaunch,
      enableLniAtDeviceIndex: enableLniAtDeviceIndex,
      disableLniAtDeviceIndex: disableLniAtDeviceIndex,
    );
  }

  factory ModifySubnetAttributeRequest.build(
          [void Function(ModifySubnetAttributeRequestBuilder) updates]) =
      _$ModifySubnetAttributeRequest;

  const ModifySubnetAttributeRequest._();

  factory ModifySubnetAttributeRequest.fromRequest(
    ModifySubnetAttributeRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ModifySubnetAttributeRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifySubnetAttributeRequestBuilder b) {
    b.enableLniAtDeviceIndex = 0;
  }

  /// Specify `true` to indicate that network interfaces created in the specified subnet should be assigned an IPv6 address. This includes a network interface that's created when launching an instance into the subnet (the instance therefore receives an IPv6 address).
  ///
  /// If you enable the IPv6 addressing feature for your subnet, your network interface or instance only receives an IPv6 address if it's created using version `2016-11-15` or later of the Amazon EC2 API.
  _i3.AttributeBooleanValue? get assignIpv6AddressOnCreation;

  /// Specify `true` to indicate that network interfaces attached to instances created in the specified subnet should be assigned a public IPv4 address.
  _i3.AttributeBooleanValue? get mapPublicIpOnLaunch;

  /// The ID of the subnet.
  String get subnetId;

  /// Specify `true` to indicate that network interfaces attached to instances created in the specified subnet should be assigned a customer-owned IPv4 address.
  ///
  /// When this value is `true`, you must specify the customer-owned IP pool using `CustomerOwnedIpv4Pool`.
  _i3.AttributeBooleanValue? get mapCustomerOwnedIpOnLaunch;

  /// The customer-owned IPv4 address pool associated with the subnet.
  ///
  /// You must set this value when you specify `true` for `MapCustomerOwnedIpOnLaunch`.
  String? get customerOwnedIpv4Pool;

  /// Indicates whether DNS queries made to the Amazon-provided DNS Resolver in this subnet should return synthetic IPv6 addresses for IPv4-only destinations.
  _i3.AttributeBooleanValue? get enableDns64;

  /// The type of hostname to assign to instances in the subnet at launch. For IPv4-only and dual-stack (IPv4 and IPv6) subnets, an instance DNS name can be based on the instance IPv4 address (ip-name) or the instance ID (resource-name). For IPv6 only subnets, an instance DNS name must be based on the instance ID (resource-name).
  _i4.HostnameType? get privateDnsHostnameTypeOnLaunch;

  /// Indicates whether to respond to DNS queries for instance hostnames with DNS A records.
  _i3.AttributeBooleanValue? get enableResourceNameDnsARecordOnLaunch;

  /// Indicates whether to respond to DNS queries for instance hostnames with DNS AAAA records.
  _i3.AttributeBooleanValue? get enableResourceNameDnsAaaaRecordOnLaunch;

  /// Indicates the device position for local network interfaces in this subnet. For example, `1` indicates local network interfaces in this subnet are the secondary network interface (eth1). A local network interface cannot be the primary network interface (eth0).
  int get enableLniAtDeviceIndex;

  /// Specify `true` to indicate that local network interfaces at the current position should be disabled.
  _i3.AttributeBooleanValue? get disableLniAtDeviceIndex;
  @override
  ModifySubnetAttributeRequest getPayload() => this;
  @override
  List<Object?> get props => [
        assignIpv6AddressOnCreation,
        mapPublicIpOnLaunch,
        subnetId,
        mapCustomerOwnedIpOnLaunch,
        customerOwnedIpv4Pool,
        enableDns64,
        privateDnsHostnameTypeOnLaunch,
        enableResourceNameDnsARecordOnLaunch,
        enableResourceNameDnsAaaaRecordOnLaunch,
        enableLniAtDeviceIndex,
        disableLniAtDeviceIndex,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifySubnetAttributeRequest');
    helper.add(
      'assignIpv6AddressOnCreation',
      assignIpv6AddressOnCreation,
    );
    helper.add(
      'mapPublicIpOnLaunch',
      mapPublicIpOnLaunch,
    );
    helper.add(
      'subnetId',
      subnetId,
    );
    helper.add(
      'mapCustomerOwnedIpOnLaunch',
      mapCustomerOwnedIpOnLaunch,
    );
    helper.add(
      'customerOwnedIpv4Pool',
      customerOwnedIpv4Pool,
    );
    helper.add(
      'enableDns64',
      enableDns64,
    );
    helper.add(
      'privateDnsHostnameTypeOnLaunch',
      privateDnsHostnameTypeOnLaunch,
    );
    helper.add(
      'enableResourceNameDnsARecordOnLaunch',
      enableResourceNameDnsARecordOnLaunch,
    );
    helper.add(
      'enableResourceNameDnsAaaaRecordOnLaunch',
      enableResourceNameDnsAaaaRecordOnLaunch,
    );
    helper.add(
      'enableLniAtDeviceIndex',
      enableLniAtDeviceIndex,
    );
    helper.add(
      'disableLniAtDeviceIndex',
      disableLniAtDeviceIndex,
    );
    return helper.toString();
  }
}

class ModifySubnetAttributeRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ModifySubnetAttributeRequest> {
  const ModifySubnetAttributeRequestEc2QuerySerializer()
      : super('ModifySubnetAttributeRequest');

  @override
  Iterable<Type> get types => const [
        ModifySubnetAttributeRequest,
        _$ModifySubnetAttributeRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifySubnetAttributeRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifySubnetAttributeRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'AssignIpv6AddressOnCreation':
          if (value != null) {
            result.assignIpv6AddressOnCreation.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.AttributeBooleanValue),
            ) as _i3.AttributeBooleanValue));
          }
          break;
        case 'MapPublicIpOnLaunch':
          if (value != null) {
            result.mapPublicIpOnLaunch.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.AttributeBooleanValue),
            ) as _i3.AttributeBooleanValue));
          }
          break;
        case 'subnetId':
          result.subnetId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'MapCustomerOwnedIpOnLaunch':
          if (value != null) {
            result.mapCustomerOwnedIpOnLaunch.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.AttributeBooleanValue),
            ) as _i3.AttributeBooleanValue));
          }
          break;
        case 'CustomerOwnedIpv4Pool':
          if (value != null) {
            result.customerOwnedIpv4Pool = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'EnableDns64':
          if (value != null) {
            result.enableDns64.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.AttributeBooleanValue),
            ) as _i3.AttributeBooleanValue));
          }
          break;
        case 'PrivateDnsHostnameTypeOnLaunch':
          if (value != null) {
            result.privateDnsHostnameTypeOnLaunch = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.HostnameType),
            ) as _i4.HostnameType);
          }
          break;
        case 'EnableResourceNameDnsARecordOnLaunch':
          if (value != null) {
            result.enableResourceNameDnsARecordOnLaunch
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.AttributeBooleanValue),
            ) as _i3.AttributeBooleanValue));
          }
          break;
        case 'EnableResourceNameDnsAAAARecordOnLaunch':
          if (value != null) {
            result.enableResourceNameDnsAaaaRecordOnLaunch
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.AttributeBooleanValue),
            ) as _i3.AttributeBooleanValue));
          }
          break;
        case 'EnableLniAtDeviceIndex':
          result.enableLniAtDeviceIndex = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'DisableLniAtDeviceIndex':
          if (value != null) {
            result.disableLniAtDeviceIndex.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.AttributeBooleanValue),
            ) as _i3.AttributeBooleanValue));
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
    final payload = (object as ModifySubnetAttributeRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ModifySubnetAttributeRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.assignIpv6AddressOnCreation != null) {
      result
        ..add(const _i1.XmlElementName('AssignIpv6AddressOnCreation'))
        ..add(serializers.serialize(
          payload.assignIpv6AddressOnCreation!,
          specifiedType: const FullType(_i3.AttributeBooleanValue),
        ));
    }
    if (payload.mapPublicIpOnLaunch != null) {
      result
        ..add(const _i1.XmlElementName('MapPublicIpOnLaunch'))
        ..add(serializers.serialize(
          payload.mapPublicIpOnLaunch!,
          specifiedType: const FullType(_i3.AttributeBooleanValue),
        ));
    }
    result
      ..add(const _i1.XmlElementName('SubnetId'))
      ..add(serializers.serialize(
        payload.subnetId,
        specifiedType: const FullType(String),
      ));
    if (payload.mapCustomerOwnedIpOnLaunch != null) {
      result
        ..add(const _i1.XmlElementName('MapCustomerOwnedIpOnLaunch'))
        ..add(serializers.serialize(
          payload.mapCustomerOwnedIpOnLaunch!,
          specifiedType: const FullType(_i3.AttributeBooleanValue),
        ));
    }
    if (payload.customerOwnedIpv4Pool != null) {
      result
        ..add(const _i1.XmlElementName('CustomerOwnedIpv4Pool'))
        ..add(serializers.serialize(
          payload.customerOwnedIpv4Pool!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.enableDns64 != null) {
      result
        ..add(const _i1.XmlElementName('EnableDns64'))
        ..add(serializers.serialize(
          payload.enableDns64!,
          specifiedType: const FullType(_i3.AttributeBooleanValue),
        ));
    }
    if (payload.privateDnsHostnameTypeOnLaunch != null) {
      result
        ..add(const _i1.XmlElementName('PrivateDnsHostnameTypeOnLaunch'))
        ..add(serializers.serialize(
          payload.privateDnsHostnameTypeOnLaunch!,
          specifiedType: const FullType.nullable(_i4.HostnameType),
        ));
    }
    if (payload.enableResourceNameDnsARecordOnLaunch != null) {
      result
        ..add(const _i1.XmlElementName('EnableResourceNameDnsARecordOnLaunch'))
        ..add(serializers.serialize(
          payload.enableResourceNameDnsARecordOnLaunch!,
          specifiedType: const FullType(_i3.AttributeBooleanValue),
        ));
    }
    if (payload.enableResourceNameDnsAaaaRecordOnLaunch != null) {
      result
        ..add(
            const _i1.XmlElementName('EnableResourceNameDnsAAAARecordOnLaunch'))
        ..add(serializers.serialize(
          payload.enableResourceNameDnsAaaaRecordOnLaunch!,
          specifiedType: const FullType(_i3.AttributeBooleanValue),
        ));
    }
    result
      ..add(const _i1.XmlElementName('EnableLniAtDeviceIndex'))
      ..add(serializers.serialize(
        payload.enableLniAtDeviceIndex,
        specifiedType: const FullType(int),
      ));
    if (payload.disableLniAtDeviceIndex != null) {
      result
        ..add(const _i1.XmlElementName('DisableLniAtDeviceIndex'))
        ..add(serializers.serialize(
          payload.disableLniAtDeviceIndex!,
          specifiedType: const FullType(_i3.AttributeBooleanValue),
        ));
    }
    return result;
  }
}
