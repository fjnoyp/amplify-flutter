// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.service_detail; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i8;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i9;
import 'package:smoke_test/src/sdk/src/ec2/model/dns_name_state.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/payer_responsibility.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/private_dns_details.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/service_connectivity_type.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/ec2/model/service_type_detail.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i5;

part 'service_detail.g.dart';

/// Describes a VPC endpoint service.
abstract class ServiceDetail
    with _i1.AWSEquatable<ServiceDetail>
    implements Built<ServiceDetail, ServiceDetailBuilder> {
  /// Describes a VPC endpoint service.
  factory ServiceDetail({
    String? serviceName,
    String? serviceId,
    List<_i2.ServiceTypeDetail>? serviceType,
    List<String>? availabilityZones,
    String? owner,
    List<String>? baseEndpointDnsNames,
    String? privateDnsName,
    List<_i3.PrivateDnsDetails>? privateDnsNames,
    bool? vpcEndpointPolicySupported,
    bool? acceptanceRequired,
    bool? managesVpcEndpoints,
    _i4.PayerResponsibility? payerResponsibility,
    List<_i5.Tag>? tags,
    _i6.DnsNameState? privateDnsNameVerificationState,
    List<_i7.ServiceConnectivityType>? supportedIpAddressTypes,
  }) {
    vpcEndpointPolicySupported ??= false;
    acceptanceRequired ??= false;
    managesVpcEndpoints ??= false;
    return _$ServiceDetail._(
      serviceName: serviceName,
      serviceId: serviceId,
      serviceType: serviceType == null ? null : _i8.BuiltList(serviceType),
      availabilityZones:
          availabilityZones == null ? null : _i8.BuiltList(availabilityZones),
      owner: owner,
      baseEndpointDnsNames: baseEndpointDnsNames == null
          ? null
          : _i8.BuiltList(baseEndpointDnsNames),
      privateDnsName: privateDnsName,
      privateDnsNames:
          privateDnsNames == null ? null : _i8.BuiltList(privateDnsNames),
      vpcEndpointPolicySupported: vpcEndpointPolicySupported,
      acceptanceRequired: acceptanceRequired,
      managesVpcEndpoints: managesVpcEndpoints,
      payerResponsibility: payerResponsibility,
      tags: tags == null ? null : _i8.BuiltList(tags),
      privateDnsNameVerificationState: privateDnsNameVerificationState,
      supportedIpAddressTypes: supportedIpAddressTypes == null
          ? null
          : _i8.BuiltList(supportedIpAddressTypes),
    );
  }

  /// Describes a VPC endpoint service.
  factory ServiceDetail.build([void Function(ServiceDetailBuilder) updates]) =
      _$ServiceDetail;

  const ServiceDetail._();

  static const List<_i9.SmithySerializer> serializers = [
    ServiceDetailEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ServiceDetailBuilder b) {
    b.vpcEndpointPolicySupported = false;
    b.acceptanceRequired = false;
    b.managesVpcEndpoints = false;
  }

  /// The name of the service.
  String? get serviceName;

  /// The ID of the endpoint service.
  String? get serviceId;

  /// The type of service.
  _i8.BuiltList<_i2.ServiceTypeDetail>? get serviceType;

  /// The Availability Zones in which the service is available.
  _i8.BuiltList<String>? get availabilityZones;

  /// The Amazon Web Services account ID of the service owner.
  String? get owner;

  /// The DNS names for the service.
  _i8.BuiltList<String>? get baseEndpointDnsNames;

  /// The private DNS name for the service.
  String? get privateDnsName;

  /// The private DNS names assigned to the VPC endpoint service.
  _i8.BuiltList<_i3.PrivateDnsDetails>? get privateDnsNames;

  /// Indicates whether the service supports endpoint policies.
  bool get vpcEndpointPolicySupported;

  /// Indicates whether VPC endpoint connection requests to the service must be accepted by the service owner.
  bool get acceptanceRequired;

  /// Indicates whether the service manages its VPC endpoints. Management of the service VPC endpoints using the VPC endpoint API is restricted.
  bool get managesVpcEndpoints;

  /// The payer responsibility.
  _i4.PayerResponsibility? get payerResponsibility;

  /// Any tags assigned to the service.
  _i8.BuiltList<_i5.Tag>? get tags;

  /// The verification state of the VPC endpoint service.
  ///
  /// Consumers of the endpoint service cannot use the private name when the state is not `verified`.
  _i6.DnsNameState? get privateDnsNameVerificationState;

  /// The supported IP address types.
  _i8.BuiltList<_i7.ServiceConnectivityType>? get supportedIpAddressTypes;
  @override
  List<Object?> get props => [
        serviceName,
        serviceId,
        serviceType,
        availabilityZones,
        owner,
        baseEndpointDnsNames,
        privateDnsName,
        privateDnsNames,
        vpcEndpointPolicySupported,
        acceptanceRequired,
        managesVpcEndpoints,
        payerResponsibility,
        tags,
        privateDnsNameVerificationState,
        supportedIpAddressTypes,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ServiceDetail');
    helper.add(
      'serviceName',
      serviceName,
    );
    helper.add(
      'serviceId',
      serviceId,
    );
    helper.add(
      'serviceType',
      serviceType,
    );
    helper.add(
      'availabilityZones',
      availabilityZones,
    );
    helper.add(
      'owner',
      owner,
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
      'privateDnsNames',
      privateDnsNames,
    );
    helper.add(
      'vpcEndpointPolicySupported',
      vpcEndpointPolicySupported,
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
      'payerResponsibility',
      payerResponsibility,
    );
    helper.add(
      'tags',
      tags,
    );
    helper.add(
      'privateDnsNameVerificationState',
      privateDnsNameVerificationState,
    );
    helper.add(
      'supportedIpAddressTypes',
      supportedIpAddressTypes,
    );
    return helper.toString();
  }
}

class ServiceDetailEc2QuerySerializer
    extends _i9.StructuredSmithySerializer<ServiceDetail> {
  const ServiceDetailEc2QuerySerializer() : super('ServiceDetail');

  @override
  Iterable<Type> get types => const [
        ServiceDetail,
        _$ServiceDetail,
      ];
  @override
  Iterable<_i9.ShapeId> get supportedProtocols => const [
        _i9.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ServiceDetail deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ServiceDetailBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'serviceName':
          if (value != null) {
            result.serviceName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
        case 'owner':
          if (value != null) {
            result.owner = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
        case 'privateDnsNameSet':
          if (value != null) {
            result.privateDnsNames.replace((const _i9.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i9.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i8.BuiltList,
                [FullType(_i3.PrivateDnsDetails)],
              ),
            ) as _i8.BuiltList<_i3.PrivateDnsDetails>));
          }
          break;
        case 'vpcEndpointPolicySupported':
          result.vpcEndpointPolicySupported = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
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
        case 'payerResponsibility':
          if (value != null) {
            result.payerResponsibility = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.PayerResponsibility),
            ) as _i4.PayerResponsibility);
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
                [FullType(_i5.Tag)],
              ),
            ) as _i8.BuiltList<_i5.Tag>));
          }
          break;
        case 'privateDnsNameVerificationState':
          if (value != null) {
            result.privateDnsNameVerificationState = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.DnsNameState),
            ) as _i6.DnsNameState);
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
                [FullType(_i7.ServiceConnectivityType)],
              ),
            ) as _i8.BuiltList<_i7.ServiceConnectivityType>));
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
    final payload = (object as ServiceDetail);
    final result = <Object?>[
      const _i9.XmlElementName(
        'ServiceDetailResponse',
        _i9.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.serviceName != null) {
      result
        ..add(const _i9.XmlElementName('ServiceName'))
        ..add(serializers.serialize(
          payload.serviceName!,
          specifiedType: const FullType(String),
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
    if (payload.owner != null) {
      result
        ..add(const _i9.XmlElementName('Owner'))
        ..add(serializers.serialize(
          payload.owner!,
          specifiedType: const FullType(String),
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
    if (payload.privateDnsNames != null) {
      result
        ..add(const _i9.XmlElementName('PrivateDnsNameSet'))
        ..add(const _i9.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i9.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.privateDnsNames!,
          specifiedType: const FullType.nullable(
            _i8.BuiltList,
            [FullType(_i3.PrivateDnsDetails)],
          ),
        ));
    }
    result
      ..add(const _i9.XmlElementName('VpcEndpointPolicySupported'))
      ..add(serializers.serialize(
        payload.vpcEndpointPolicySupported,
        specifiedType: const FullType(bool),
      ));
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
    if (payload.payerResponsibility != null) {
      result
        ..add(const _i9.XmlElementName('PayerResponsibility'))
        ..add(serializers.serialize(
          payload.payerResponsibility!,
          specifiedType: const FullType.nullable(_i4.PayerResponsibility),
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
            [FullType(_i5.Tag)],
          ),
        ));
    }
    if (payload.privateDnsNameVerificationState != null) {
      result
        ..add(const _i9.XmlElementName('PrivateDnsNameVerificationState'))
        ..add(serializers.serialize(
          payload.privateDnsNameVerificationState!,
          specifiedType: const FullType.nullable(_i6.DnsNameState),
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
            [FullType(_i7.ServiceConnectivityType)],
          ),
        ));
    }
    return result;
  }
}
