// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.explanation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i10;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i11;
import 'package:smoke_test/src/sdk/src/ec2/model/analysis_acl_rule.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/analysis_component.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/analysis_load_balancer_listener.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/analysis_load_balancer_target.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/analysis_route_table_route.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/ec2/model/analysis_security_group_rule.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/ec2/model/port_range.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route_table_route.dart'
    as _i9;

part 'explanation.g.dart';

/// Describes an explanation code for an unreachable path. For more information, see [Reachability Analyzer explanation codes](https://docs.aws.amazon.com/vpc/latest/reachability/explanation-codes.html).
abstract class Explanation
    with _i1.AWSEquatable<Explanation>
    implements Built<Explanation, ExplanationBuilder> {
  /// Describes an explanation code for an unreachable path. For more information, see [Reachability Analyzer explanation codes](https://docs.aws.amazon.com/vpc/latest/reachability/explanation-codes.html).
  factory Explanation({
    _i2.AnalysisComponent? acl,
    _i3.AnalysisAclRule? aclRule,
    String? address,
    List<String>? addresses,
    _i2.AnalysisComponent? attachedTo,
    List<String>? availabilityZones,
    List<String>? cidrs,
    _i2.AnalysisComponent? component,
    _i2.AnalysisComponent? customerGateway,
    _i2.AnalysisComponent? destination,
    _i2.AnalysisComponent? destinationVpc,
    String? direction,
    String? explanationCode,
    _i2.AnalysisComponent? ingressRouteTable,
    _i2.AnalysisComponent? internetGateway,
    String? loadBalancerArn,
    _i4.AnalysisLoadBalancerListener? classicLoadBalancerListener,
    int? loadBalancerListenerPort,
    _i5.AnalysisLoadBalancerTarget? loadBalancerTarget,
    _i2.AnalysisComponent? loadBalancerTargetGroup,
    List<_i2.AnalysisComponent>? loadBalancerTargetGroups,
    int? loadBalancerTargetPort,
    _i2.AnalysisComponent? elasticLoadBalancerListener,
    String? missingComponent,
    _i2.AnalysisComponent? natGateway,
    _i2.AnalysisComponent? networkInterface,
    String? packetField,
    _i2.AnalysisComponent? vpcPeeringConnection,
    int? port,
    List<_i6.PortRange>? portRanges,
    _i2.AnalysisComponent? prefixList,
    List<String>? protocols,
    _i7.AnalysisRouteTableRoute? routeTableRoute,
    _i2.AnalysisComponent? routeTable,
    _i2.AnalysisComponent? securityGroup,
    _i8.AnalysisSecurityGroupRule? securityGroupRule,
    List<_i2.AnalysisComponent>? securityGroups,
    _i2.AnalysisComponent? sourceVpc,
    String? state,
    _i2.AnalysisComponent? subnet,
    _i2.AnalysisComponent? subnetRouteTable,
    _i2.AnalysisComponent? vpc,
    _i2.AnalysisComponent? vpcEndpoint,
    _i2.AnalysisComponent? vpnConnection,
    _i2.AnalysisComponent? vpnGateway,
    _i2.AnalysisComponent? transitGateway,
    _i2.AnalysisComponent? transitGatewayRouteTable,
    _i9.TransitGatewayRouteTableRoute? transitGatewayRouteTableRoute,
    _i2.AnalysisComponent? transitGatewayAttachment,
    String? componentAccount,
    String? componentRegion,
  }) {
    loadBalancerListenerPort ??= 0;
    loadBalancerTargetPort ??= 0;
    port ??= 0;
    return _$Explanation._(
      acl: acl,
      aclRule: aclRule,
      address: address,
      addresses: addresses == null ? null : _i10.BuiltList(addresses),
      attachedTo: attachedTo,
      availabilityZones:
          availabilityZones == null ? null : _i10.BuiltList(availabilityZones),
      cidrs: cidrs == null ? null : _i10.BuiltList(cidrs),
      component: component,
      customerGateway: customerGateway,
      destination: destination,
      destinationVpc: destinationVpc,
      direction: direction,
      explanationCode: explanationCode,
      ingressRouteTable: ingressRouteTable,
      internetGateway: internetGateway,
      loadBalancerArn: loadBalancerArn,
      classicLoadBalancerListener: classicLoadBalancerListener,
      loadBalancerListenerPort: loadBalancerListenerPort,
      loadBalancerTarget: loadBalancerTarget,
      loadBalancerTargetGroup: loadBalancerTargetGroup,
      loadBalancerTargetGroups: loadBalancerTargetGroups == null
          ? null
          : _i10.BuiltList(loadBalancerTargetGroups),
      loadBalancerTargetPort: loadBalancerTargetPort,
      elasticLoadBalancerListener: elasticLoadBalancerListener,
      missingComponent: missingComponent,
      natGateway: natGateway,
      networkInterface: networkInterface,
      packetField: packetField,
      vpcPeeringConnection: vpcPeeringConnection,
      port: port,
      portRanges: portRanges == null ? null : _i10.BuiltList(portRanges),
      prefixList: prefixList,
      protocols: protocols == null ? null : _i10.BuiltList(protocols),
      routeTableRoute: routeTableRoute,
      routeTable: routeTable,
      securityGroup: securityGroup,
      securityGroupRule: securityGroupRule,
      securityGroups:
          securityGroups == null ? null : _i10.BuiltList(securityGroups),
      sourceVpc: sourceVpc,
      state: state,
      subnet: subnet,
      subnetRouteTable: subnetRouteTable,
      vpc: vpc,
      vpcEndpoint: vpcEndpoint,
      vpnConnection: vpnConnection,
      vpnGateway: vpnGateway,
      transitGateway: transitGateway,
      transitGatewayRouteTable: transitGatewayRouteTable,
      transitGatewayRouteTableRoute: transitGatewayRouteTableRoute,
      transitGatewayAttachment: transitGatewayAttachment,
      componentAccount: componentAccount,
      componentRegion: componentRegion,
    );
  }

  /// Describes an explanation code for an unreachable path. For more information, see [Reachability Analyzer explanation codes](https://docs.aws.amazon.com/vpc/latest/reachability/explanation-codes.html).
  factory Explanation.build([void Function(ExplanationBuilder) updates]) =
      _$Explanation;

  const Explanation._();

  static const List<_i11.SmithySerializer> serializers = [
    ExplanationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ExplanationBuilder b) {
    b.loadBalancerListenerPort = 0;
    b.loadBalancerTargetPort = 0;
    b.port = 0;
  }

  /// The network ACL.
  _i2.AnalysisComponent? get acl;

  /// The network ACL rule.
  _i3.AnalysisAclRule? get aclRule;

  /// The IPv4 address, in CIDR notation.
  String? get address;

  /// The IPv4 addresses, in CIDR notation.
  _i10.BuiltList<String>? get addresses;

  /// The resource to which the component is attached.
  _i2.AnalysisComponent? get attachedTo;

  /// The Availability Zones.
  _i10.BuiltList<String>? get availabilityZones;

  /// The CIDR ranges.
  _i10.BuiltList<String>? get cidrs;

  /// The component.
  _i2.AnalysisComponent? get component;

  /// The customer gateway.
  _i2.AnalysisComponent? get customerGateway;

  /// The destination.
  _i2.AnalysisComponent? get destination;

  /// The destination VPC.
  _i2.AnalysisComponent? get destinationVpc;

  /// The direction. The following are the possible values:
  ///
  /// *   egress
  ///
  /// *   ingress
  String? get direction;

  /// The explanation code.
  String? get explanationCode;

  /// The route table.
  _i2.AnalysisComponent? get ingressRouteTable;

  /// The internet gateway.
  _i2.AnalysisComponent? get internetGateway;

  /// The Amazon Resource Name (ARN) of the load balancer.
  String? get loadBalancerArn;

  /// The listener for a Classic Load Balancer.
  _i4.AnalysisLoadBalancerListener? get classicLoadBalancerListener;

  /// The listener port of the load balancer.
  int get loadBalancerListenerPort;

  /// The target.
  _i5.AnalysisLoadBalancerTarget? get loadBalancerTarget;

  /// The target group.
  _i2.AnalysisComponent? get loadBalancerTargetGroup;

  /// The target groups.
  _i10.BuiltList<_i2.AnalysisComponent>? get loadBalancerTargetGroups;

  /// The target port.
  int get loadBalancerTargetPort;

  /// The load balancer listener.
  _i2.AnalysisComponent? get elasticLoadBalancerListener;

  /// The missing component.
  String? get missingComponent;

  /// The NAT gateway.
  _i2.AnalysisComponent? get natGateway;

  /// The network interface.
  _i2.AnalysisComponent? get networkInterface;

  /// The packet field.
  String? get packetField;

  /// The VPC peering connection.
  _i2.AnalysisComponent? get vpcPeeringConnection;

  /// The port.
  int get port;

  /// The port ranges.
  _i10.BuiltList<_i6.PortRange>? get portRanges;

  /// The prefix list.
  _i2.AnalysisComponent? get prefixList;

  /// The protocols.
  _i10.BuiltList<String>? get protocols;

  /// The route table route.
  _i7.AnalysisRouteTableRoute? get routeTableRoute;

  /// The route table.
  _i2.AnalysisComponent? get routeTable;

  /// The security group.
  _i2.AnalysisComponent? get securityGroup;

  /// The security group rule.
  _i8.AnalysisSecurityGroupRule? get securityGroupRule;

  /// The security groups.
  _i10.BuiltList<_i2.AnalysisComponent>? get securityGroups;

  /// The source VPC.
  _i2.AnalysisComponent? get sourceVpc;

  /// The state.
  String? get state;

  /// The subnet.
  _i2.AnalysisComponent? get subnet;

  /// The route table for the subnet.
  _i2.AnalysisComponent? get subnetRouteTable;

  /// The component VPC.
  _i2.AnalysisComponent? get vpc;

  /// The VPC endpoint.
  _i2.AnalysisComponent? get vpcEndpoint;

  /// The VPN connection.
  _i2.AnalysisComponent? get vpnConnection;

  /// The VPN gateway.
  _i2.AnalysisComponent? get vpnGateway;

  /// The transit gateway.
  _i2.AnalysisComponent? get transitGateway;

  /// The transit gateway route table.
  _i2.AnalysisComponent? get transitGatewayRouteTable;

  /// The transit gateway route table route.
  _i9.TransitGatewayRouteTableRoute? get transitGatewayRouteTableRoute;

  /// The transit gateway attachment.
  _i2.AnalysisComponent? get transitGatewayAttachment;

  /// The Amazon Web Services account for the component.
  String? get componentAccount;

  /// The Region for the component.
  String? get componentRegion;
  @override
  List<Object?> get props => [
        acl,
        aclRule,
        address,
        addresses,
        attachedTo,
        availabilityZones,
        cidrs,
        component,
        customerGateway,
        destination,
        destinationVpc,
        direction,
        explanationCode,
        ingressRouteTable,
        internetGateway,
        loadBalancerArn,
        classicLoadBalancerListener,
        loadBalancerListenerPort,
        loadBalancerTarget,
        loadBalancerTargetGroup,
        loadBalancerTargetGroups,
        loadBalancerTargetPort,
        elasticLoadBalancerListener,
        missingComponent,
        natGateway,
        networkInterface,
        packetField,
        vpcPeeringConnection,
        port,
        portRanges,
        prefixList,
        protocols,
        routeTableRoute,
        routeTable,
        securityGroup,
        securityGroupRule,
        securityGroups,
        sourceVpc,
        state,
        subnet,
        subnetRouteTable,
        vpc,
        vpcEndpoint,
        vpnConnection,
        vpnGateway,
        transitGateway,
        transitGatewayRouteTable,
        transitGatewayRouteTableRoute,
        transitGatewayAttachment,
        componentAccount,
        componentRegion,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Explanation');
    helper.add(
      'acl',
      acl,
    );
    helper.add(
      'aclRule',
      aclRule,
    );
    helper.add(
      'address',
      address,
    );
    helper.add(
      'addresses',
      addresses,
    );
    helper.add(
      'attachedTo',
      attachedTo,
    );
    helper.add(
      'availabilityZones',
      availabilityZones,
    );
    helper.add(
      'cidrs',
      cidrs,
    );
    helper.add(
      'component',
      component,
    );
    helper.add(
      'customerGateway',
      customerGateway,
    );
    helper.add(
      'destination',
      destination,
    );
    helper.add(
      'destinationVpc',
      destinationVpc,
    );
    helper.add(
      'direction',
      direction,
    );
    helper.add(
      'explanationCode',
      explanationCode,
    );
    helper.add(
      'ingressRouteTable',
      ingressRouteTable,
    );
    helper.add(
      'internetGateway',
      internetGateway,
    );
    helper.add(
      'loadBalancerArn',
      loadBalancerArn,
    );
    helper.add(
      'classicLoadBalancerListener',
      classicLoadBalancerListener,
    );
    helper.add(
      'loadBalancerListenerPort',
      loadBalancerListenerPort,
    );
    helper.add(
      'loadBalancerTarget',
      loadBalancerTarget,
    );
    helper.add(
      'loadBalancerTargetGroup',
      loadBalancerTargetGroup,
    );
    helper.add(
      'loadBalancerTargetGroups',
      loadBalancerTargetGroups,
    );
    helper.add(
      'loadBalancerTargetPort',
      loadBalancerTargetPort,
    );
    helper.add(
      'elasticLoadBalancerListener',
      elasticLoadBalancerListener,
    );
    helper.add(
      'missingComponent',
      missingComponent,
    );
    helper.add(
      'natGateway',
      natGateway,
    );
    helper.add(
      'networkInterface',
      networkInterface,
    );
    helper.add(
      'packetField',
      packetField,
    );
    helper.add(
      'vpcPeeringConnection',
      vpcPeeringConnection,
    );
    helper.add(
      'port',
      port,
    );
    helper.add(
      'portRanges',
      portRanges,
    );
    helper.add(
      'prefixList',
      prefixList,
    );
    helper.add(
      'protocols',
      protocols,
    );
    helper.add(
      'routeTableRoute',
      routeTableRoute,
    );
    helper.add(
      'routeTable',
      routeTable,
    );
    helper.add(
      'securityGroup',
      securityGroup,
    );
    helper.add(
      'securityGroupRule',
      securityGroupRule,
    );
    helper.add(
      'securityGroups',
      securityGroups,
    );
    helper.add(
      'sourceVpc',
      sourceVpc,
    );
    helper.add(
      'state',
      state,
    );
    helper.add(
      'subnet',
      subnet,
    );
    helper.add(
      'subnetRouteTable',
      subnetRouteTable,
    );
    helper.add(
      'vpc',
      vpc,
    );
    helper.add(
      'vpcEndpoint',
      vpcEndpoint,
    );
    helper.add(
      'vpnConnection',
      vpnConnection,
    );
    helper.add(
      'vpnGateway',
      vpnGateway,
    );
    helper.add(
      'transitGateway',
      transitGateway,
    );
    helper.add(
      'transitGatewayRouteTable',
      transitGatewayRouteTable,
    );
    helper.add(
      'transitGatewayRouteTableRoute',
      transitGatewayRouteTableRoute,
    );
    helper.add(
      'transitGatewayAttachment',
      transitGatewayAttachment,
    );
    helper.add(
      'componentAccount',
      componentAccount,
    );
    helper.add(
      'componentRegion',
      componentRegion,
    );
    return helper.toString();
  }
}

class ExplanationEc2QuerySerializer
    extends _i11.StructuredSmithySerializer<Explanation> {
  const ExplanationEc2QuerySerializer() : super('Explanation');

  @override
  Iterable<Type> get types => const [
        Explanation,
        _$Explanation,
      ];
  @override
  Iterable<_i11.ShapeId> get supportedProtocols => const [
        _i11.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  Explanation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExplanationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'acl':
          if (value != null) {
            result.acl.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.AnalysisComponent),
            ) as _i2.AnalysisComponent));
          }
          break;
        case 'aclRule':
          if (value != null) {
            result.aclRule.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.AnalysisAclRule),
            ) as _i3.AnalysisAclRule));
          }
          break;
        case 'address':
          if (value != null) {
            result.address = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'addressSet':
          if (value != null) {
            result.addresses.replace((const _i11.XmlBuiltListSerializer(
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
        case 'attachedTo':
          if (value != null) {
            result.attachedTo.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.AnalysisComponent),
            ) as _i2.AnalysisComponent));
          }
          break;
        case 'availabilityZoneSet':
          if (value != null) {
            result.availabilityZones.replace((const _i11.XmlBuiltListSerializer(
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
        case 'cidrSet':
          if (value != null) {
            result.cidrs.replace((const _i11.XmlBuiltListSerializer(
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
        case 'component':
          if (value != null) {
            result.component.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.AnalysisComponent),
            ) as _i2.AnalysisComponent));
          }
          break;
        case 'customerGateway':
          if (value != null) {
            result.customerGateway.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.AnalysisComponent),
            ) as _i2.AnalysisComponent));
          }
          break;
        case 'destination':
          if (value != null) {
            result.destination.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.AnalysisComponent),
            ) as _i2.AnalysisComponent));
          }
          break;
        case 'destinationVpc':
          if (value != null) {
            result.destinationVpc.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.AnalysisComponent),
            ) as _i2.AnalysisComponent));
          }
          break;
        case 'direction':
          if (value != null) {
            result.direction = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'explanationCode':
          if (value != null) {
            result.explanationCode = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ingressRouteTable':
          if (value != null) {
            result.ingressRouteTable.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.AnalysisComponent),
            ) as _i2.AnalysisComponent));
          }
          break;
        case 'internetGateway':
          if (value != null) {
            result.internetGateway.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.AnalysisComponent),
            ) as _i2.AnalysisComponent));
          }
          break;
        case 'loadBalancerArn':
          if (value != null) {
            result.loadBalancerArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'classicLoadBalancerListener':
          if (value != null) {
            result.classicLoadBalancerListener.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.AnalysisLoadBalancerListener),
            ) as _i4.AnalysisLoadBalancerListener));
          }
          break;
        case 'loadBalancerListenerPort':
          result.loadBalancerListenerPort = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'loadBalancerTarget':
          if (value != null) {
            result.loadBalancerTarget.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.AnalysisLoadBalancerTarget),
            ) as _i5.AnalysisLoadBalancerTarget));
          }
          break;
        case 'loadBalancerTargetGroup':
          if (value != null) {
            result.loadBalancerTargetGroup.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.AnalysisComponent),
            ) as _i2.AnalysisComponent));
          }
          break;
        case 'loadBalancerTargetGroupSet':
          if (value != null) {
            result.loadBalancerTargetGroups
                .replace((const _i11.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i11.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i10.BuiltList,
                [FullType(_i2.AnalysisComponent)],
              ),
            ) as _i10.BuiltList<_i2.AnalysisComponent>));
          }
          break;
        case 'loadBalancerTargetPort':
          result.loadBalancerTargetPort = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'elasticLoadBalancerListener':
          if (value != null) {
            result.elasticLoadBalancerListener.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.AnalysisComponent),
            ) as _i2.AnalysisComponent));
          }
          break;
        case 'missingComponent':
          if (value != null) {
            result.missingComponent = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'natGateway':
          if (value != null) {
            result.natGateway.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.AnalysisComponent),
            ) as _i2.AnalysisComponent));
          }
          break;
        case 'networkInterface':
          if (value != null) {
            result.networkInterface.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.AnalysisComponent),
            ) as _i2.AnalysisComponent));
          }
          break;
        case 'packetField':
          if (value != null) {
            result.packetField = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'vpcPeeringConnection':
          if (value != null) {
            result.vpcPeeringConnection.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.AnalysisComponent),
            ) as _i2.AnalysisComponent));
          }
          break;
        case 'port':
          result.port = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'portRangeSet':
          if (value != null) {
            result.portRanges.replace((const _i11.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i11.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i10.BuiltList,
                [FullType(_i6.PortRange)],
              ),
            ) as _i10.BuiltList<_i6.PortRange>));
          }
          break;
        case 'prefixList':
          if (value != null) {
            result.prefixList.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.AnalysisComponent),
            ) as _i2.AnalysisComponent));
          }
          break;
        case 'protocolSet':
          if (value != null) {
            result.protocols.replace((const _i11.XmlBuiltListSerializer(
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
        case 'routeTableRoute':
          if (value != null) {
            result.routeTableRoute.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i7.AnalysisRouteTableRoute),
            ) as _i7.AnalysisRouteTableRoute));
          }
          break;
        case 'routeTable':
          if (value != null) {
            result.routeTable.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.AnalysisComponent),
            ) as _i2.AnalysisComponent));
          }
          break;
        case 'securityGroup':
          if (value != null) {
            result.securityGroup.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.AnalysisComponent),
            ) as _i2.AnalysisComponent));
          }
          break;
        case 'securityGroupRule':
          if (value != null) {
            result.securityGroupRule.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i8.AnalysisSecurityGroupRule),
            ) as _i8.AnalysisSecurityGroupRule));
          }
          break;
        case 'securityGroupSet':
          if (value != null) {
            result.securityGroups.replace((const _i11.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i11.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i10.BuiltList,
                [FullType(_i2.AnalysisComponent)],
              ),
            ) as _i10.BuiltList<_i2.AnalysisComponent>));
          }
          break;
        case 'sourceVpc':
          if (value != null) {
            result.sourceVpc.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.AnalysisComponent),
            ) as _i2.AnalysisComponent));
          }
          break;
        case 'state':
          if (value != null) {
            result.state = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'subnet':
          if (value != null) {
            result.subnet.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.AnalysisComponent),
            ) as _i2.AnalysisComponent));
          }
          break;
        case 'subnetRouteTable':
          if (value != null) {
            result.subnetRouteTable.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.AnalysisComponent),
            ) as _i2.AnalysisComponent));
          }
          break;
        case 'vpc':
          if (value != null) {
            result.vpc.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.AnalysisComponent),
            ) as _i2.AnalysisComponent));
          }
          break;
        case 'vpcEndpoint':
          if (value != null) {
            result.vpcEndpoint.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.AnalysisComponent),
            ) as _i2.AnalysisComponent));
          }
          break;
        case 'vpnConnection':
          if (value != null) {
            result.vpnConnection.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.AnalysisComponent),
            ) as _i2.AnalysisComponent));
          }
          break;
        case 'vpnGateway':
          if (value != null) {
            result.vpnGateway.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.AnalysisComponent),
            ) as _i2.AnalysisComponent));
          }
          break;
        case 'transitGateway':
          if (value != null) {
            result.transitGateway.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.AnalysisComponent),
            ) as _i2.AnalysisComponent));
          }
          break;
        case 'transitGatewayRouteTable':
          if (value != null) {
            result.transitGatewayRouteTable.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.AnalysisComponent),
            ) as _i2.AnalysisComponent));
          }
          break;
        case 'transitGatewayRouteTableRoute':
          if (value != null) {
            result.transitGatewayRouteTableRoute
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i9.TransitGatewayRouteTableRoute),
            ) as _i9.TransitGatewayRouteTableRoute));
          }
          break;
        case 'transitGatewayAttachment':
          if (value != null) {
            result.transitGatewayAttachment.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.AnalysisComponent),
            ) as _i2.AnalysisComponent));
          }
          break;
        case 'componentAccount':
          if (value != null) {
            result.componentAccount = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'componentRegion':
          if (value != null) {
            result.componentRegion = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as Explanation);
    final result = <Object?>[
      const _i11.XmlElementName(
        'ExplanationResponse',
        _i11.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.acl != null) {
      result
        ..add(const _i11.XmlElementName('Acl'))
        ..add(serializers.serialize(
          payload.acl!,
          specifiedType: const FullType(_i2.AnalysisComponent),
        ));
    }
    if (payload.aclRule != null) {
      result
        ..add(const _i11.XmlElementName('AclRule'))
        ..add(serializers.serialize(
          payload.aclRule!,
          specifiedType: const FullType(_i3.AnalysisAclRule),
        ));
    }
    if (payload.address != null) {
      result
        ..add(const _i11.XmlElementName('Address'))
        ..add(serializers.serialize(
          payload.address!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.addresses != null) {
      result
        ..add(const _i11.XmlElementName('AddressSet'))
        ..add(const _i11.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i11.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.addresses!,
          specifiedType: const FullType.nullable(
            _i10.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.attachedTo != null) {
      result
        ..add(const _i11.XmlElementName('AttachedTo'))
        ..add(serializers.serialize(
          payload.attachedTo!,
          specifiedType: const FullType(_i2.AnalysisComponent),
        ));
    }
    if (payload.availabilityZones != null) {
      result
        ..add(const _i11.XmlElementName('AvailabilityZoneSet'))
        ..add(const _i11.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i11.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.availabilityZones!,
          specifiedType: const FullType.nullable(
            _i10.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.cidrs != null) {
      result
        ..add(const _i11.XmlElementName('CidrSet'))
        ..add(const _i11.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i11.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.cidrs!,
          specifiedType: const FullType.nullable(
            _i10.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.component != null) {
      result
        ..add(const _i11.XmlElementName('Component'))
        ..add(serializers.serialize(
          payload.component!,
          specifiedType: const FullType(_i2.AnalysisComponent),
        ));
    }
    if (payload.customerGateway != null) {
      result
        ..add(const _i11.XmlElementName('CustomerGateway'))
        ..add(serializers.serialize(
          payload.customerGateway!,
          specifiedType: const FullType(_i2.AnalysisComponent),
        ));
    }
    if (payload.destination != null) {
      result
        ..add(const _i11.XmlElementName('Destination'))
        ..add(serializers.serialize(
          payload.destination!,
          specifiedType: const FullType(_i2.AnalysisComponent),
        ));
    }
    if (payload.destinationVpc != null) {
      result
        ..add(const _i11.XmlElementName('DestinationVpc'))
        ..add(serializers.serialize(
          payload.destinationVpc!,
          specifiedType: const FullType(_i2.AnalysisComponent),
        ));
    }
    if (payload.direction != null) {
      result
        ..add(const _i11.XmlElementName('Direction'))
        ..add(serializers.serialize(
          payload.direction!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.explanationCode != null) {
      result
        ..add(const _i11.XmlElementName('ExplanationCode'))
        ..add(serializers.serialize(
          payload.explanationCode!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.ingressRouteTable != null) {
      result
        ..add(const _i11.XmlElementName('IngressRouteTable'))
        ..add(serializers.serialize(
          payload.ingressRouteTable!,
          specifiedType: const FullType(_i2.AnalysisComponent),
        ));
    }
    if (payload.internetGateway != null) {
      result
        ..add(const _i11.XmlElementName('InternetGateway'))
        ..add(serializers.serialize(
          payload.internetGateway!,
          specifiedType: const FullType(_i2.AnalysisComponent),
        ));
    }
    if (payload.loadBalancerArn != null) {
      result
        ..add(const _i11.XmlElementName('LoadBalancerArn'))
        ..add(serializers.serialize(
          payload.loadBalancerArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.classicLoadBalancerListener != null) {
      result
        ..add(const _i11.XmlElementName('ClassicLoadBalancerListener'))
        ..add(serializers.serialize(
          payload.classicLoadBalancerListener!,
          specifiedType: const FullType(_i4.AnalysisLoadBalancerListener),
        ));
    }
    result
      ..add(const _i11.XmlElementName('LoadBalancerListenerPort'))
      ..add(serializers.serialize(
        payload.loadBalancerListenerPort,
        specifiedType: const FullType(int),
      ));
    if (payload.loadBalancerTarget != null) {
      result
        ..add(const _i11.XmlElementName('LoadBalancerTarget'))
        ..add(serializers.serialize(
          payload.loadBalancerTarget!,
          specifiedType: const FullType(_i5.AnalysisLoadBalancerTarget),
        ));
    }
    if (payload.loadBalancerTargetGroup != null) {
      result
        ..add(const _i11.XmlElementName('LoadBalancerTargetGroup'))
        ..add(serializers.serialize(
          payload.loadBalancerTargetGroup!,
          specifiedType: const FullType(_i2.AnalysisComponent),
        ));
    }
    if (payload.loadBalancerTargetGroups != null) {
      result
        ..add(const _i11.XmlElementName('LoadBalancerTargetGroupSet'))
        ..add(const _i11.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i11.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.loadBalancerTargetGroups!,
          specifiedType: const FullType.nullable(
            _i10.BuiltList,
            [FullType(_i2.AnalysisComponent)],
          ),
        ));
    }
    result
      ..add(const _i11.XmlElementName('LoadBalancerTargetPort'))
      ..add(serializers.serialize(
        payload.loadBalancerTargetPort,
        specifiedType: const FullType(int),
      ));
    if (payload.elasticLoadBalancerListener != null) {
      result
        ..add(const _i11.XmlElementName('ElasticLoadBalancerListener'))
        ..add(serializers.serialize(
          payload.elasticLoadBalancerListener!,
          specifiedType: const FullType(_i2.AnalysisComponent),
        ));
    }
    if (payload.missingComponent != null) {
      result
        ..add(const _i11.XmlElementName('MissingComponent'))
        ..add(serializers.serialize(
          payload.missingComponent!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.natGateway != null) {
      result
        ..add(const _i11.XmlElementName('NatGateway'))
        ..add(serializers.serialize(
          payload.natGateway!,
          specifiedType: const FullType(_i2.AnalysisComponent),
        ));
    }
    if (payload.networkInterface != null) {
      result
        ..add(const _i11.XmlElementName('NetworkInterface'))
        ..add(serializers.serialize(
          payload.networkInterface!,
          specifiedType: const FullType(_i2.AnalysisComponent),
        ));
    }
    if (payload.packetField != null) {
      result
        ..add(const _i11.XmlElementName('PacketField'))
        ..add(serializers.serialize(
          payload.packetField!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.vpcPeeringConnection != null) {
      result
        ..add(const _i11.XmlElementName('VpcPeeringConnection'))
        ..add(serializers.serialize(
          payload.vpcPeeringConnection!,
          specifiedType: const FullType(_i2.AnalysisComponent),
        ));
    }
    result
      ..add(const _i11.XmlElementName('Port'))
      ..add(serializers.serialize(
        payload.port,
        specifiedType: const FullType(int),
      ));
    if (payload.portRanges != null) {
      result
        ..add(const _i11.XmlElementName('PortRangeSet'))
        ..add(const _i11.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i11.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.portRanges!,
          specifiedType: const FullType.nullable(
            _i10.BuiltList,
            [FullType(_i6.PortRange)],
          ),
        ));
    }
    if (payload.prefixList != null) {
      result
        ..add(const _i11.XmlElementName('PrefixList'))
        ..add(serializers.serialize(
          payload.prefixList!,
          specifiedType: const FullType(_i2.AnalysisComponent),
        ));
    }
    if (payload.protocols != null) {
      result
        ..add(const _i11.XmlElementName('ProtocolSet'))
        ..add(const _i11.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i11.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.protocols!,
          specifiedType: const FullType.nullable(
            _i10.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.routeTableRoute != null) {
      result
        ..add(const _i11.XmlElementName('RouteTableRoute'))
        ..add(serializers.serialize(
          payload.routeTableRoute!,
          specifiedType: const FullType(_i7.AnalysisRouteTableRoute),
        ));
    }
    if (payload.routeTable != null) {
      result
        ..add(const _i11.XmlElementName('RouteTable'))
        ..add(serializers.serialize(
          payload.routeTable!,
          specifiedType: const FullType(_i2.AnalysisComponent),
        ));
    }
    if (payload.securityGroup != null) {
      result
        ..add(const _i11.XmlElementName('SecurityGroup'))
        ..add(serializers.serialize(
          payload.securityGroup!,
          specifiedType: const FullType(_i2.AnalysisComponent),
        ));
    }
    if (payload.securityGroupRule != null) {
      result
        ..add(const _i11.XmlElementName('SecurityGroupRule'))
        ..add(serializers.serialize(
          payload.securityGroupRule!,
          specifiedType: const FullType(_i8.AnalysisSecurityGroupRule),
        ));
    }
    if (payload.securityGroups != null) {
      result
        ..add(const _i11.XmlElementName('SecurityGroupSet'))
        ..add(const _i11.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i11.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.securityGroups!,
          specifiedType: const FullType.nullable(
            _i10.BuiltList,
            [FullType(_i2.AnalysisComponent)],
          ),
        ));
    }
    if (payload.sourceVpc != null) {
      result
        ..add(const _i11.XmlElementName('SourceVpc'))
        ..add(serializers.serialize(
          payload.sourceVpc!,
          specifiedType: const FullType(_i2.AnalysisComponent),
        ));
    }
    if (payload.state != null) {
      result
        ..add(const _i11.XmlElementName('State'))
        ..add(serializers.serialize(
          payload.state!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.subnet != null) {
      result
        ..add(const _i11.XmlElementName('Subnet'))
        ..add(serializers.serialize(
          payload.subnet!,
          specifiedType: const FullType(_i2.AnalysisComponent),
        ));
    }
    if (payload.subnetRouteTable != null) {
      result
        ..add(const _i11.XmlElementName('SubnetRouteTable'))
        ..add(serializers.serialize(
          payload.subnetRouteTable!,
          specifiedType: const FullType(_i2.AnalysisComponent),
        ));
    }
    if (payload.vpc != null) {
      result
        ..add(const _i11.XmlElementName('Vpc'))
        ..add(serializers.serialize(
          payload.vpc!,
          specifiedType: const FullType(_i2.AnalysisComponent),
        ));
    }
    if (payload.vpcEndpoint != null) {
      result
        ..add(const _i11.XmlElementName('VpcEndpoint'))
        ..add(serializers.serialize(
          payload.vpcEndpoint!,
          specifiedType: const FullType(_i2.AnalysisComponent),
        ));
    }
    if (payload.vpnConnection != null) {
      result
        ..add(const _i11.XmlElementName('VpnConnection'))
        ..add(serializers.serialize(
          payload.vpnConnection!,
          specifiedType: const FullType(_i2.AnalysisComponent),
        ));
    }
    if (payload.vpnGateway != null) {
      result
        ..add(const _i11.XmlElementName('VpnGateway'))
        ..add(serializers.serialize(
          payload.vpnGateway!,
          specifiedType: const FullType(_i2.AnalysisComponent),
        ));
    }
    if (payload.transitGateway != null) {
      result
        ..add(const _i11.XmlElementName('TransitGateway'))
        ..add(serializers.serialize(
          payload.transitGateway!,
          specifiedType: const FullType(_i2.AnalysisComponent),
        ));
    }
    if (payload.transitGatewayRouteTable != null) {
      result
        ..add(const _i11.XmlElementName('TransitGatewayRouteTable'))
        ..add(serializers.serialize(
          payload.transitGatewayRouteTable!,
          specifiedType: const FullType(_i2.AnalysisComponent),
        ));
    }
    if (payload.transitGatewayRouteTableRoute != null) {
      result
        ..add(const _i11.XmlElementName('TransitGatewayRouteTableRoute'))
        ..add(serializers.serialize(
          payload.transitGatewayRouteTableRoute!,
          specifiedType: const FullType(_i9.TransitGatewayRouteTableRoute),
        ));
    }
    if (payload.transitGatewayAttachment != null) {
      result
        ..add(const _i11.XmlElementName('TransitGatewayAttachment'))
        ..add(serializers.serialize(
          payload.transitGatewayAttachment!,
          specifiedType: const FullType(_i2.AnalysisComponent),
        ));
    }
    if (payload.componentAccount != null) {
      result
        ..add(const _i11.XmlElementName('ComponentAccount'))
        ..add(serializers.serialize(
          payload.componentAccount!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.componentRegion != null) {
      result
        ..add(const _i11.XmlElementName('ComponentRegion'))
        ..add(serializers.serialize(
          payload.componentRegion!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
