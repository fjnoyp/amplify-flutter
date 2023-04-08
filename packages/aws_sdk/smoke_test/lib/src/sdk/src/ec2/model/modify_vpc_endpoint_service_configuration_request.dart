// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.modify_vpc_endpoint_service_configuration_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'modify_vpc_endpoint_service_configuration_request.g.dart';

abstract class ModifyVpcEndpointServiceConfigurationRequest
    with
        _i1.HttpInput<ModifyVpcEndpointServiceConfigurationRequest>,
        _i2.AWSEquatable<ModifyVpcEndpointServiceConfigurationRequest>
    implements
        Built<ModifyVpcEndpointServiceConfigurationRequest,
            ModifyVpcEndpointServiceConfigurationRequestBuilder> {
  factory ModifyVpcEndpointServiceConfigurationRequest({
    bool? dryRun,
    required String serviceId,
    String? privateDnsName,
    bool? removePrivateDnsName,
    bool? acceptanceRequired,
    List<String>? addNetworkLoadBalancerArns,
    List<String>? removeNetworkLoadBalancerArns,
    List<String>? addGatewayLoadBalancerArns,
    List<String>? removeGatewayLoadBalancerArns,
    List<String>? addSupportedIpAddressTypes,
    List<String>? removeSupportedIpAddressTypes,
  }) {
    dryRun ??= false;
    removePrivateDnsName ??= false;
    acceptanceRequired ??= false;
    return _$ModifyVpcEndpointServiceConfigurationRequest._(
      dryRun: dryRun,
      serviceId: serviceId,
      privateDnsName: privateDnsName,
      removePrivateDnsName: removePrivateDnsName,
      acceptanceRequired: acceptanceRequired,
      addNetworkLoadBalancerArns: addNetworkLoadBalancerArns == null
          ? null
          : _i3.BuiltList(addNetworkLoadBalancerArns),
      removeNetworkLoadBalancerArns: removeNetworkLoadBalancerArns == null
          ? null
          : _i3.BuiltList(removeNetworkLoadBalancerArns),
      addGatewayLoadBalancerArns: addGatewayLoadBalancerArns == null
          ? null
          : _i3.BuiltList(addGatewayLoadBalancerArns),
      removeGatewayLoadBalancerArns: removeGatewayLoadBalancerArns == null
          ? null
          : _i3.BuiltList(removeGatewayLoadBalancerArns),
      addSupportedIpAddressTypes: addSupportedIpAddressTypes == null
          ? null
          : _i3.BuiltList(addSupportedIpAddressTypes),
      removeSupportedIpAddressTypes: removeSupportedIpAddressTypes == null
          ? null
          : _i3.BuiltList(removeSupportedIpAddressTypes),
    );
  }

  factory ModifyVpcEndpointServiceConfigurationRequest.build(
      [void Function(ModifyVpcEndpointServiceConfigurationRequestBuilder)
          updates]) = _$ModifyVpcEndpointServiceConfigurationRequest;

  const ModifyVpcEndpointServiceConfigurationRequest._();

  factory ModifyVpcEndpointServiceConfigurationRequest.fromRequest(
    ModifyVpcEndpointServiceConfigurationRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ModifyVpcEndpointServiceConfigurationRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyVpcEndpointServiceConfigurationRequestBuilder b) {
    b.dryRun = false;
    b.removePrivateDnsName = false;
    b.acceptanceRequired = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the service.
  String get serviceId;

  /// (Interface endpoint configuration) The private DNS name to assign to the endpoint service.
  String? get privateDnsName;

  /// (Interface endpoint configuration) Removes the private DNS name of the endpoint service.
  bool get removePrivateDnsName;

  /// Indicates whether requests to create an endpoint to your service must be accepted.
  bool get acceptanceRequired;

  /// The Amazon Resource Names (ARNs) of Network Load Balancers to add to your service configuration.
  _i3.BuiltList<String>? get addNetworkLoadBalancerArns;

  /// The Amazon Resource Names (ARNs) of Network Load Balancers to remove from your service configuration.
  _i3.BuiltList<String>? get removeNetworkLoadBalancerArns;

  /// The Amazon Resource Names (ARNs) of Gateway Load Balancers to add to your service configuration.
  _i3.BuiltList<String>? get addGatewayLoadBalancerArns;

  /// The Amazon Resource Names (ARNs) of Gateway Load Balancers to remove from your service configuration.
  _i3.BuiltList<String>? get removeGatewayLoadBalancerArns;

  /// The IP address types to add to your service configuration.
  _i3.BuiltList<String>? get addSupportedIpAddressTypes;

  /// The IP address types to remove from your service configuration.
  _i3.BuiltList<String>? get removeSupportedIpAddressTypes;
  @override
  ModifyVpcEndpointServiceConfigurationRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        serviceId,
        privateDnsName,
        removePrivateDnsName,
        acceptanceRequired,
        addNetworkLoadBalancerArns,
        removeNetworkLoadBalancerArns,
        addGatewayLoadBalancerArns,
        removeGatewayLoadBalancerArns,
        addSupportedIpAddressTypes,
        removeSupportedIpAddressTypes,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'ModifyVpcEndpointServiceConfigurationRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'serviceId',
      serviceId,
    );
    helper.add(
      'privateDnsName',
      privateDnsName,
    );
    helper.add(
      'removePrivateDnsName',
      removePrivateDnsName,
    );
    helper.add(
      'acceptanceRequired',
      acceptanceRequired,
    );
    helper.add(
      'addNetworkLoadBalancerArns',
      addNetworkLoadBalancerArns,
    );
    helper.add(
      'removeNetworkLoadBalancerArns',
      removeNetworkLoadBalancerArns,
    );
    helper.add(
      'addGatewayLoadBalancerArns',
      addGatewayLoadBalancerArns,
    );
    helper.add(
      'removeGatewayLoadBalancerArns',
      removeGatewayLoadBalancerArns,
    );
    helper.add(
      'addSupportedIpAddressTypes',
      addSupportedIpAddressTypes,
    );
    helper.add(
      'removeSupportedIpAddressTypes',
      removeSupportedIpAddressTypes,
    );
    return helper.toString();
  }
}

class ModifyVpcEndpointServiceConfigurationRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<ModifyVpcEndpointServiceConfigurationRequest> {
  const ModifyVpcEndpointServiceConfigurationRequestEc2QuerySerializer()
      : super('ModifyVpcEndpointServiceConfigurationRequest');

  @override
  Iterable<Type> get types => const [
        ModifyVpcEndpointServiceConfigurationRequest,
        _$ModifyVpcEndpointServiceConfigurationRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyVpcEndpointServiceConfigurationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyVpcEndpointServiceConfigurationRequestBuilder();
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
        case 'ServiceId':
          result.serviceId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'PrivateDnsName':
          if (value != null) {
            result.privateDnsName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'RemovePrivateDnsName':
          result.removePrivateDnsName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'AcceptanceRequired':
          result.acceptanceRequired = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'AddNetworkLoadBalancerArn':
          if (value != null) {
            result.addNetworkLoadBalancerArns
                .replace((const _i1.XmlBuiltListSerializer(
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
        case 'RemoveNetworkLoadBalancerArn':
          if (value != null) {
            result.removeNetworkLoadBalancerArns
                .replace((const _i1.XmlBuiltListSerializer(
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
        case 'AddGatewayLoadBalancerArn':
          if (value != null) {
            result.addGatewayLoadBalancerArns
                .replace((const _i1.XmlBuiltListSerializer(
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
        case 'RemoveGatewayLoadBalancerArn':
          if (value != null) {
            result.removeGatewayLoadBalancerArns
                .replace((const _i1.XmlBuiltListSerializer(
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
        case 'AddSupportedIpAddressType':
          if (value != null) {
            result.addSupportedIpAddressTypes
                .replace((const _i1.XmlBuiltListSerializer(
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
        case 'RemoveSupportedIpAddressType':
          if (value != null) {
            result.removeSupportedIpAddressTypes
                .replace((const _i1.XmlBuiltListSerializer(
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
    final payload = (object as ModifyVpcEndpointServiceConfigurationRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ModifyVpcEndpointServiceConfigurationRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i1.XmlElementName('ServiceId'))
      ..add(serializers.serialize(
        payload.serviceId,
        specifiedType: const FullType(String),
      ));
    if (payload.privateDnsName != null) {
      result
        ..add(const _i1.XmlElementName('PrivateDnsName'))
        ..add(serializers.serialize(
          payload.privateDnsName!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('RemovePrivateDnsName'))
      ..add(serializers.serialize(
        payload.removePrivateDnsName,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i1.XmlElementName('AcceptanceRequired'))
      ..add(serializers.serialize(
        payload.acceptanceRequired,
        specifiedType: const FullType(bool),
      ));
    if (payload.addNetworkLoadBalancerArns != null) {
      result
        ..add(const _i1.XmlElementName('AddNetworkLoadBalancerArn'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.addNetworkLoadBalancerArns!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.removeNetworkLoadBalancerArns != null) {
      result
        ..add(const _i1.XmlElementName('RemoveNetworkLoadBalancerArn'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.removeNetworkLoadBalancerArns!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.addGatewayLoadBalancerArns != null) {
      result
        ..add(const _i1.XmlElementName('AddGatewayLoadBalancerArn'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.addGatewayLoadBalancerArns!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.removeGatewayLoadBalancerArns != null) {
      result
        ..add(const _i1.XmlElementName('RemoveGatewayLoadBalancerArn'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.removeGatewayLoadBalancerArns!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.addSupportedIpAddressTypes != null) {
      result
        ..add(const _i1.XmlElementName('AddSupportedIpAddressType'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.addSupportedIpAddressTypes!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.removeSupportedIpAddressTypes != null) {
      result
        ..add(const _i1.XmlElementName('RemoveSupportedIpAddressType'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.removeSupportedIpAddressTypes!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result;
  }
}
