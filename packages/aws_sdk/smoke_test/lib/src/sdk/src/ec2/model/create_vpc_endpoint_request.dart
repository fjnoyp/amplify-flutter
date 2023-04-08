// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_vpc_endpoint_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i7;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/dns_options_specification.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/ip_address_type.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_endpoint_type.dart' as _i3;

part 'create_vpc_endpoint_request.g.dart';

/// Contains the parameters for CreateVpcEndpoint.
abstract class CreateVpcEndpointRequest
    with
        _i1.HttpInput<CreateVpcEndpointRequest>,
        _i2.AWSEquatable<CreateVpcEndpointRequest>
    implements
        Built<CreateVpcEndpointRequest, CreateVpcEndpointRequestBuilder> {
  /// Contains the parameters for CreateVpcEndpoint.
  factory CreateVpcEndpointRequest({
    bool? dryRun,
    _i3.VpcEndpointType? vpcEndpointType,
    required String vpcId,
    required String serviceName,
    String? policyDocument,
    List<String>? routeTableIds,
    List<String>? subnetIds,
    List<String>? securityGroupIds,
    _i4.IpAddressType? ipAddressType,
    _i5.DnsOptionsSpecification? dnsOptions,
    String? clientToken,
    bool? privateDnsEnabled,
    List<_i6.TagSpecification>? tagSpecifications,
  }) {
    dryRun ??= false;
    privateDnsEnabled ??= false;
    return _$CreateVpcEndpointRequest._(
      dryRun: dryRun,
      vpcEndpointType: vpcEndpointType,
      vpcId: vpcId,
      serviceName: serviceName,
      policyDocument: policyDocument,
      routeTableIds:
          routeTableIds == null ? null : _i7.BuiltList(routeTableIds),
      subnetIds: subnetIds == null ? null : _i7.BuiltList(subnetIds),
      securityGroupIds:
          securityGroupIds == null ? null : _i7.BuiltList(securityGroupIds),
      ipAddressType: ipAddressType,
      dnsOptions: dnsOptions,
      clientToken: clientToken,
      privateDnsEnabled: privateDnsEnabled,
      tagSpecifications:
          tagSpecifications == null ? null : _i7.BuiltList(tagSpecifications),
    );
  }

  /// Contains the parameters for CreateVpcEndpoint.
  factory CreateVpcEndpointRequest.build(
          [void Function(CreateVpcEndpointRequestBuilder) updates]) =
      _$CreateVpcEndpointRequest;

  const CreateVpcEndpointRequest._();

  factory CreateVpcEndpointRequest.fromRequest(
    CreateVpcEndpointRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    CreateVpcEndpointRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateVpcEndpointRequestBuilder b) {
    b.dryRun = false;
    b.privateDnsEnabled = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The type of endpoint.
  ///
  /// Default: Gateway
  _i3.VpcEndpointType? get vpcEndpointType;

  /// The ID of the VPC in which the endpoint will be used.
  String get vpcId;

  /// The service name. To get a list of available services, use the DescribeVpcEndpointServices request, or get the name from the service provider.
  String get serviceName;

  /// (Interface and gateway endpoints) A policy to attach to the endpoint that controls access to the service. The policy must be in valid JSON format. If this parameter is not specified, we attach a default policy that allows full access to the service.
  String? get policyDocument;

  /// (Gateway endpoint) One or more route table IDs.
  _i7.BuiltList<String>? get routeTableIds;

  /// (Interface and Gateway Load Balancer endpoints) The ID of one or more subnets in which to create an endpoint network interface. For a Gateway Load Balancer endpoint, you can specify one subnet only.
  _i7.BuiltList<String>? get subnetIds;

  /// (Interface endpoint) The ID of one or more security groups to associate with the endpoint network interface.
  _i7.BuiltList<String>? get securityGroupIds;

  /// The IP address type for the endpoint.
  _i4.IpAddressType? get ipAddressType;

  /// The DNS options for the endpoint.
  _i5.DnsOptionsSpecification? get dnsOptions;

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [How to ensure idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;

  /// (Interface endpoint) Indicates whether to associate a private hosted zone with the specified VPC. The private hosted zone contains a record set for the default public DNS name for the service for the Region (for example, `kinesis.us-east-1.amazonaws.com`), which resolves to the private IP addresses of the endpoint network interfaces in the VPC. This enables you to make requests to the default public DNS name for the service instead of the public DNS names that are automatically generated by the VPC endpoint service.
  ///
  /// To use a private hosted zone, you must set the following VPC attributes to `true`: `enableDnsHostnames` and `enableDnsSupport`. Use ModifyVpcAttribute to set the VPC attributes.
  ///
  /// Default: `true`
  bool get privateDnsEnabled;

  /// The tags to associate with the endpoint.
  _i7.BuiltList<_i6.TagSpecification>? get tagSpecifications;
  @override
  CreateVpcEndpointRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        vpcEndpointType,
        vpcId,
        serviceName,
        policyDocument,
        routeTableIds,
        subnetIds,
        securityGroupIds,
        ipAddressType,
        dnsOptions,
        clientToken,
        privateDnsEnabled,
        tagSpecifications,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateVpcEndpointRequest');
    helper.add(
      'dryRun',
      dryRun,
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
      'securityGroupIds',
      securityGroupIds,
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
      'clientToken',
      clientToken,
    );
    helper.add(
      'privateDnsEnabled',
      privateDnsEnabled,
    );
    helper.add(
      'tagSpecifications',
      tagSpecifications,
    );
    return helper.toString();
  }
}

class CreateVpcEndpointRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateVpcEndpointRequest> {
  const CreateVpcEndpointRequestEc2QuerySerializer()
      : super('CreateVpcEndpointRequest');

  @override
  Iterable<Type> get types => const [
        CreateVpcEndpointRequest,
        _$CreateVpcEndpointRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateVpcEndpointRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateVpcEndpointRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'VpcEndpointType':
          if (value != null) {
            result.vpcEndpointType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.VpcEndpointType),
            ) as _i3.VpcEndpointType);
          }
          break;
        case 'VpcId':
          result.vpcId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'ServiceName':
          result.serviceName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'PolicyDocument':
          if (value != null) {
            result.policyDocument = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'RouteTableId':
          if (value != null) {
            result.routeTableIds.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i7.BuiltList,
                [FullType(String)],
              ),
            ) as _i7.BuiltList<String>));
          }
          break;
        case 'SubnetId':
          if (value != null) {
            result.subnetIds.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i7.BuiltList,
                [FullType(String)],
              ),
            ) as _i7.BuiltList<String>));
          }
          break;
        case 'SecurityGroupId':
          if (value != null) {
            result.securityGroupIds.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i7.BuiltList,
                [FullType(String)],
              ),
            ) as _i7.BuiltList<String>));
          }
          break;
        case 'IpAddressType':
          if (value != null) {
            result.ipAddressType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.IpAddressType),
            ) as _i4.IpAddressType);
          }
          break;
        case 'DnsOptions':
          if (value != null) {
            result.dnsOptions.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.DnsOptionsSpecification),
            ) as _i5.DnsOptionsSpecification));
          }
          break;
        case 'ClientToken':
          if (value != null) {
            result.clientToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'PrivateDnsEnabled':
          result.privateDnsEnabled = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'TagSpecification':
          if (value != null) {
            result.tagSpecifications.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i7.BuiltList,
                [FullType(_i6.TagSpecification)],
              ),
            ) as _i7.BuiltList<_i6.TagSpecification>));
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
    final payload = (object as CreateVpcEndpointRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'CreateVpcEndpointRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    if (payload.vpcEndpointType != null) {
      result
        ..add(const _i1.XmlElementName('VpcEndpointType'))
        ..add(serializers.serialize(
          payload.vpcEndpointType!,
          specifiedType: const FullType.nullable(_i3.VpcEndpointType),
        ));
    }
    result
      ..add(const _i1.XmlElementName('VpcId'))
      ..add(serializers.serialize(
        payload.vpcId,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('ServiceName'))
      ..add(serializers.serialize(
        payload.serviceName,
        specifiedType: const FullType(String),
      ));
    if (payload.policyDocument != null) {
      result
        ..add(const _i1.XmlElementName('PolicyDocument'))
        ..add(serializers.serialize(
          payload.policyDocument!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.routeTableIds != null) {
      result
        ..add(const _i1.XmlElementName('RouteTableId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.routeTableIds!,
          specifiedType: const FullType.nullable(
            _i7.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.subnetIds != null) {
      result
        ..add(const _i1.XmlElementName('SubnetId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.subnetIds!,
          specifiedType: const FullType.nullable(
            _i7.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.securityGroupIds != null) {
      result
        ..add(const _i1.XmlElementName('SecurityGroupId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.securityGroupIds!,
          specifiedType: const FullType.nullable(
            _i7.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.ipAddressType != null) {
      result
        ..add(const _i1.XmlElementName('IpAddressType'))
        ..add(serializers.serialize(
          payload.ipAddressType!,
          specifiedType: const FullType.nullable(_i4.IpAddressType),
        ));
    }
    if (payload.dnsOptions != null) {
      result
        ..add(const _i1.XmlElementName('DnsOptions'))
        ..add(serializers.serialize(
          payload.dnsOptions!,
          specifiedType: const FullType(_i5.DnsOptionsSpecification),
        ));
    }
    if (payload.clientToken != null) {
      result
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          payload.clientToken!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('PrivateDnsEnabled'))
      ..add(serializers.serialize(
        payload.privateDnsEnabled,
        specifiedType: const FullType(bool),
      ));
    if (payload.tagSpecifications != null) {
      result
        ..add(const _i1.XmlElementName('TagSpecification'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tagSpecifications!,
          specifiedType: const FullType.nullable(
            _i7.BuiltList,
            [FullType(_i6.TagSpecification)],
          ),
        ));
    }
    return result;
  }
}
