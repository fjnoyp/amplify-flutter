// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.service_configuration; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i8;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i9;
import 'package:smoke_test/src/sdk/src/ec2/model/payer_responsibility.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/private_dns_name_configuration.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/service_connectivity_type.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/service_state.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/service_type_detail.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i7;

part 'service_configuration.g.dart';

/// Describes a service configuration for a VPC endpoint service.
abstract class ServiceConfiguration
    with _i1.AWSEquatable<ServiceConfiguration>
    implements Built<ServiceConfiguration, ServiceConfigurationBuilder> {
  /// Describes a service configuration for a VPC endpoint service.
  factory ServiceConfiguration({
    List<_i2.ServiceTypeDetail>? serviceType,
    String? serviceId,
    String? serviceName,
    _i3.ServiceState? serviceState,
    List<String>? availabilityZones,
    bool? acceptanceRequired,
    bool? managesVpcEndpoints,
    List<String>? networkLoadBalancerArns,
    List<String>? gatewayLoadBalancerArns,
    List<_i4.ServiceConnectivityType>? supportedIpAddressTypes,
    List<String>? baseEndpointDnsNames,
    String? privateDnsName,
    _i5.PrivateDnsNameConfiguration? privateDnsNameConfiguration,
    _i6.PayerResponsibility? payerResponsibility,
    List<_i7.Tag>? tags,
  }) {
    acceptanceRequired ??= false;
    managesVpcEndpoints ??= false;
    return _$ServiceConfiguration._(
      serviceType: serviceType == null ? null : _i8.BuiltList(serviceType),
      serviceId: serviceId,
      serviceName: serviceName,
      serviceState: serviceState,
      availabilityZones:
          availabilityZones == null ? null : _i8.BuiltList(availabilityZones),
      acceptanceRequired: acceptanceRequired,
      managesVpcEndpoints: managesVpcEndpoints,
      networkLoadBalancerArns: networkLoadBalancerArns == null
          ? null
          : _i8.BuiltList(networkLoadBalancerArns),
      gatewayLoadBalancerArns: gatewayLoadBalancerArns == null
          ? null
          : _i8.BuiltList(gatewayLoadBalancerArns),
      supportedIpAddressTypes: supportedIpAddressTypes == null
          ? null
          : _i8.BuiltList(supportedIpAddressTypes),
      baseEndpointDnsNames: baseEndpointDnsNames == null
          ? null
          : _i8.BuiltList(baseEndpointDnsNames),
      privateDnsName: privateDnsName,
      privateDnsNameConfiguration: privateDnsNameConfiguration,
      payerResponsibility: payerResponsibility,
      tags: tags == null ? null : _i8.BuiltList(tags),
    );
  }

  /// Describes a service configuration for a VPC endpoint service.
  factory ServiceConfiguration.build(
          [void Function(ServiceConfigurationBuilder) updates]) =
      _$ServiceConfiguration;

  const ServiceConfiguration._();

  static const List<_i9.SmithySerializer> serializers = [
    ServiceConfigurationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ServiceConfigurationBuilder b) {
    b.acceptanceRequired = false;
    b.managesVpcEndpoints = false;
  }

  /// The type of service.
  _i8.BuiltList<_i2.ServiceTypeDetail>? get serviceType;

  /// The ID of the service.
  String? get serviceId;

  /// The name of the service.
  String? get serviceName;

  /// The service state.
  _i3.ServiceState? get serviceState;

  /// The Availability Zones in which the service is available.
  _i8.BuiltList<String>? get availabilityZones;

  /// Indicates whether requests from other Amazon Web Services accounts to create an endpoint to the service must first be accepted.
  bool get acceptanceRequired;

  /// Indicates whether the service manages its VPC endpoints. Management of the service VPC endpoints using the VPC endpoint API is restricted.
  bool get managesVpcEndpoints;

  /// The Amazon Resource Names (ARNs) of the Network Load Balancers for the service.
  _i8.BuiltList<String>? get networkLoadBalancerArns;

  /// The Amazon Resource Names (ARNs) of the Gateway Load Balancers for the service.
  _i8.BuiltList<String>? get gatewayLoadBalancerArns;

  /// The supported IP address types.
  _i8.BuiltList<_i4.ServiceConnectivityType>? get supportedIpAddressTypes;

  /// The DNS names for the service.
  _i8.BuiltList<String>? get baseEndpointDnsNames;

  /// The private DNS name for the service.
  String? get privateDnsName;

  /// Information about the endpoint service private DNS name configuration.
  _i5.PrivateDnsNameConfiguration? get privateDnsNameConfiguration;

  /// The payer responsibility.
  _i6.PayerResponsibility? get payerResponsibility;

  /// Any tags assigned to the service.
  _i8.BuiltList<_i7.Tag>? get tags;
  @override
  List<Object?> get props => [
        serviceType,
        serviceId,
        serviceName,
        serviceState,
        availabilityZones,
        acceptanceRequired,
        managesVpcEndpoints,
        networkLoadBalancerArns,
        gatewayLoadBalancerArns,
        supportedIpAddressTypes,
        baseEndpointDnsNames,
        privateDnsName,
        privateDnsNameConfiguration,
        payerResponsibility,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ServiceConfiguration');
    helper.add(
      'serviceType',
      serviceType,
    );
    helper.add(
      'serviceId',
      serviceId,
    );
    helper.add(
      'serviceName',
      serviceName,
    );
    helper.add(
      'serviceState',
      serviceState,
    );
    helper.add(
      'availabilityZones',
      availabilityZones,
    );
    helper.add(
      'acceptanceRequired',
      acceptanceRequired,
    );
    helper.add(
      'managesVpcEndpoints',
      managesVpcEndpoints,
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
      'supportedIpAddressTypes',
      supportedIpAddressTypes,
    );
    helper.add(
      'baseEndpointDnsNames',
      baseEndpointDnsNames,
    );
    helper.add(
      'privateDnsName',
      privateDnsName,
    );
    helper.add(
      'privateDnsNameConfiguration',
      privateDnsNameConfiguration,
    );
    helper.add(
      'payerResponsibility',
      payerResponsibility,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class ServiceConfigurationEc2QuerySerializer
    extends _i9.StructuredSmithySerializer<ServiceConfiguration> {
  const ServiceConfigurationEc2QuerySerializer()
      : super('ServiceConfiguration');

  @override
  Iterable<Type> get types => const [
        ServiceConfiguration,
        _$ServiceConfiguration,
      ];
  @override
  Iterable<_i9.ShapeId> get supportedProtocols => const [
        _i9.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ServiceConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ServiceConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'serviceType':
          if (value != null) {
            result.serviceType.replace((const _i9.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i9.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i8.BuiltList,
                [FullType(_i2.ServiceTypeDetail)],
              ),
            ) as _i8.BuiltList<_i2.ServiceTypeDetail>));
          }
          break;
        case 'serviceId':
          if (value != null) {
            result.serviceId = (serializers.deserialize(
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
        case 'serviceState':
          if (value != null) {
            result.serviceState = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.ServiceState),
            ) as _i3.ServiceState);
          }
          break;
        case 'availabilityZoneSet':
          if (value != null) {
            result.availabilityZones.replace((const _i9.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i9.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i8.BuiltList,
                [FullType(String)],
              ),
            ) as _i8.BuiltList<String>));
          }
          break;
        case 'acceptanceRequired':
          result.acceptanceRequired = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'managesVpcEndpoints':
          result.managesVpcEndpoints = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'networkLoadBalancerArnSet':
          if (value != null) {
            result.networkLoadBalancerArns
                .replace((const _i9.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i9.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i8.BuiltList,
                [FullType(String)],
              ),
            ) as _i8.BuiltList<String>));
          }
          break;
        case 'gatewayLoadBalancerArnSet':
          if (value != null) {
            result.gatewayLoadBalancerArns
                .replace((const _i9.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i9.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i8.BuiltList,
                [FullType(String)],
              ),
            ) as _i8.BuiltList<String>));
          }
          break;
        case 'supportedIpAddressTypeSet':
          if (value != null) {
            result.supportedIpAddressTypes
                .replace((const _i9.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i9.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i8.BuiltList,
                [FullType(_i4.ServiceConnectivityType)],
              ),
            ) as _i8.BuiltList<_i4.ServiceConnectivityType>));
          }
          break;
        case 'baseEndpointDnsNameSet':
          if (value != null) {
            result.baseEndpointDnsNames
                .replace((const _i9.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i9.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i8.BuiltList,
                [FullType(String)],
              ),
            ) as _i8.BuiltList<String>));
          }
          break;
        case 'privateDnsName':
          if (value != null) {
            result.privateDnsName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'privateDnsNameConfiguration':
          if (value != null) {
            result.privateDnsNameConfiguration.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.PrivateDnsNameConfiguration),
            ) as _i5.PrivateDnsNameConfiguration));
          }
          break;
        case 'payerResponsibility':
          if (value != null) {
            result.payerResponsibility = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.PayerResponsibility),
            ) as _i6.PayerResponsibility);
          }
          break;
        case 'tagSet':
          if (value != null) {
            result.tags.replace((const _i9.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i9.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i8.BuiltList,
                [FullType(_i7.Tag)],
              ),
            ) as _i8.BuiltList<_i7.Tag>));
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
    final payload = (object as ServiceConfiguration);
    final result = <Object?>[
      const _i9.XmlElementName(
        'ServiceConfigurationResponse',
        _i9.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.serviceType != null) {
      result
        ..add(const _i9.XmlElementName('ServiceType'))
        ..add(const _i9.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i9.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.serviceType!,
          specifiedType: const FullType.nullable(
            _i8.BuiltList,
            [FullType(_i2.ServiceTypeDetail)],
          ),
        ));
    }
    if (payload.serviceId != null) {
      result
        ..add(const _i9.XmlElementName('ServiceId'))
        ..add(serializers.serialize(
          payload.serviceId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.serviceName != null) {
      result
        ..add(const _i9.XmlElementName('ServiceName'))
        ..add(serializers.serialize(
          payload.serviceName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.serviceState != null) {
      result
        ..add(const _i9.XmlElementName('ServiceState'))
        ..add(serializers.serialize(
          payload.serviceState!,
          specifiedType: const FullType.nullable(_i3.ServiceState),
        ));
    }
    if (payload.availabilityZones != null) {
      result
        ..add(const _i9.XmlElementName('AvailabilityZoneSet'))
        ..add(const _i9.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i9.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.availabilityZones!,
          specifiedType: const FullType.nullable(
            _i8.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    result
      ..add(const _i9.XmlElementName('AcceptanceRequired'))
      ..add(serializers.serialize(
        payload.acceptanceRequired,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i9.XmlElementName('ManagesVpcEndpoints'))
      ..add(serializers.serialize(
        payload.managesVpcEndpoints,
        specifiedType: const FullType(bool),
      ));
    if (payload.networkLoadBalancerArns != null) {
      result
        ..add(const _i9.XmlElementName('NetworkLoadBalancerArnSet'))
        ..add(const _i9.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i9.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.networkLoadBalancerArns!,
          specifiedType: const FullType.nullable(
            _i8.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.gatewayLoadBalancerArns != null) {
      result
        ..add(const _i9.XmlElementName('GatewayLoadBalancerArnSet'))
        ..add(const _i9.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i9.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.gatewayLoadBalancerArns!,
          specifiedType: const FullType.nullable(
            _i8.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.supportedIpAddressTypes != null) {
      result
        ..add(const _i9.XmlElementName('SupportedIpAddressTypeSet'))
        ..add(const _i9.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i9.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.supportedIpAddressTypes!,
          specifiedType: const FullType.nullable(
            _i8.BuiltList,
            [FullType(_i4.ServiceConnectivityType)],
          ),
        ));
    }
    if (payload.baseEndpointDnsNames != null) {
      result
        ..add(const _i9.XmlElementName('BaseEndpointDnsNameSet'))
        ..add(const _i9.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i9.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.baseEndpointDnsNames!,
          specifiedType: const FullType.nullable(
            _i8.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.privateDnsName != null) {
      result
        ..add(const _i9.XmlElementName('PrivateDnsName'))
        ..add(serializers.serialize(
          payload.privateDnsName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.privateDnsNameConfiguration != null) {
      result
        ..add(const _i9.XmlElementName('PrivateDnsNameConfiguration'))
        ..add(serializers.serialize(
          payload.privateDnsNameConfiguration!,
          specifiedType: const FullType(_i5.PrivateDnsNameConfiguration),
        ));
    }
    if (payload.payerResponsibility != null) {
      result
        ..add(const _i9.XmlElementName('PayerResponsibility'))
        ..add(serializers.serialize(
          payload.payerResponsibility!,
          specifiedType: const FullType.nullable(_i6.PayerResponsibility),
        ));
    }
    if (payload.tags != null) {
      result
        ..add(const _i9.XmlElementName('TagSet'))
        ..add(const _i9.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i9.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tags!,
          specifiedType: const FullType.nullable(
            _i8.BuiltList,
            [FullType(_i7.Tag)],
          ),
        ));
    }
    return result;
  }
}
