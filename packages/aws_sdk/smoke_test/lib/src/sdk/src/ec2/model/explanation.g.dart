// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.explanation;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Explanation extends Explanation {
  @override
  final _i2.AnalysisComponent? acl;
  @override
  final _i3.AnalysisAclRule? aclRule;
  @override
  final String? address;
  @override
  final _i10.BuiltList<String>? addresses;
  @override
  final _i2.AnalysisComponent? attachedTo;
  @override
  final _i10.BuiltList<String>? availabilityZones;
  @override
  final _i10.BuiltList<String>? cidrs;
  @override
  final _i2.AnalysisComponent? component;
  @override
  final _i2.AnalysisComponent? customerGateway;
  @override
  final _i2.AnalysisComponent? destination;
  @override
  final _i2.AnalysisComponent? destinationVpc;
  @override
  final String? direction;
  @override
  final String? explanationCode;
  @override
  final _i2.AnalysisComponent? ingressRouteTable;
  @override
  final _i2.AnalysisComponent? internetGateway;
  @override
  final String? loadBalancerArn;
  @override
  final _i4.AnalysisLoadBalancerListener? classicLoadBalancerListener;
  @override
  final int loadBalancerListenerPort;
  @override
  final _i5.AnalysisLoadBalancerTarget? loadBalancerTarget;
  @override
  final _i2.AnalysisComponent? loadBalancerTargetGroup;
  @override
  final _i10.BuiltList<_i2.AnalysisComponent>? loadBalancerTargetGroups;
  @override
  final int loadBalancerTargetPort;
  @override
  final _i2.AnalysisComponent? elasticLoadBalancerListener;
  @override
  final String? missingComponent;
  @override
  final _i2.AnalysisComponent? natGateway;
  @override
  final _i2.AnalysisComponent? networkInterface;
  @override
  final String? packetField;
  @override
  final _i2.AnalysisComponent? vpcPeeringConnection;
  @override
  final int port;
  @override
  final _i10.BuiltList<_i6.PortRange>? portRanges;
  @override
  final _i2.AnalysisComponent? prefixList;
  @override
  final _i10.BuiltList<String>? protocols;
  @override
  final _i7.AnalysisRouteTableRoute? routeTableRoute;
  @override
  final _i2.AnalysisComponent? routeTable;
  @override
  final _i2.AnalysisComponent? securityGroup;
  @override
  final _i8.AnalysisSecurityGroupRule? securityGroupRule;
  @override
  final _i10.BuiltList<_i2.AnalysisComponent>? securityGroups;
  @override
  final _i2.AnalysisComponent? sourceVpc;
  @override
  final String? state;
  @override
  final _i2.AnalysisComponent? subnet;
  @override
  final _i2.AnalysisComponent? subnetRouteTable;
  @override
  final _i2.AnalysisComponent? vpc;
  @override
  final _i2.AnalysisComponent? vpcEndpoint;
  @override
  final _i2.AnalysisComponent? vpnConnection;
  @override
  final _i2.AnalysisComponent? vpnGateway;
  @override
  final _i2.AnalysisComponent? transitGateway;
  @override
  final _i2.AnalysisComponent? transitGatewayRouteTable;
  @override
  final _i9.TransitGatewayRouteTableRoute? transitGatewayRouteTableRoute;
  @override
  final _i2.AnalysisComponent? transitGatewayAttachment;
  @override
  final String? componentAccount;
  @override
  final String? componentRegion;

  factory _$Explanation([void Function(ExplanationBuilder)? updates]) =>
      (new ExplanationBuilder()..update(updates))._build();

  _$Explanation._(
      {this.acl,
      this.aclRule,
      this.address,
      this.addresses,
      this.attachedTo,
      this.availabilityZones,
      this.cidrs,
      this.component,
      this.customerGateway,
      this.destination,
      this.destinationVpc,
      this.direction,
      this.explanationCode,
      this.ingressRouteTable,
      this.internetGateway,
      this.loadBalancerArn,
      this.classicLoadBalancerListener,
      required this.loadBalancerListenerPort,
      this.loadBalancerTarget,
      this.loadBalancerTargetGroup,
      this.loadBalancerTargetGroups,
      required this.loadBalancerTargetPort,
      this.elasticLoadBalancerListener,
      this.missingComponent,
      this.natGateway,
      this.networkInterface,
      this.packetField,
      this.vpcPeeringConnection,
      required this.port,
      this.portRanges,
      this.prefixList,
      this.protocols,
      this.routeTableRoute,
      this.routeTable,
      this.securityGroup,
      this.securityGroupRule,
      this.securityGroups,
      this.sourceVpc,
      this.state,
      this.subnet,
      this.subnetRouteTable,
      this.vpc,
      this.vpcEndpoint,
      this.vpnConnection,
      this.vpnGateway,
      this.transitGateway,
      this.transitGatewayRouteTable,
      this.transitGatewayRouteTableRoute,
      this.transitGatewayAttachment,
      this.componentAccount,
      this.componentRegion})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        loadBalancerListenerPort, r'Explanation', 'loadBalancerListenerPort');
    BuiltValueNullFieldError.checkNotNull(
        loadBalancerTargetPort, r'Explanation', 'loadBalancerTargetPort');
    BuiltValueNullFieldError.checkNotNull(port, r'Explanation', 'port');
  }

  @override
  Explanation rebuild(void Function(ExplanationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExplanationBuilder toBuilder() => new ExplanationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Explanation &&
        acl == other.acl &&
        aclRule == other.aclRule &&
        address == other.address &&
        addresses == other.addresses &&
        attachedTo == other.attachedTo &&
        availabilityZones == other.availabilityZones &&
        cidrs == other.cidrs &&
        component == other.component &&
        customerGateway == other.customerGateway &&
        destination == other.destination &&
        destinationVpc == other.destinationVpc &&
        direction == other.direction &&
        explanationCode == other.explanationCode &&
        ingressRouteTable == other.ingressRouteTable &&
        internetGateway == other.internetGateway &&
        loadBalancerArn == other.loadBalancerArn &&
        classicLoadBalancerListener == other.classicLoadBalancerListener &&
        loadBalancerListenerPort == other.loadBalancerListenerPort &&
        loadBalancerTarget == other.loadBalancerTarget &&
        loadBalancerTargetGroup == other.loadBalancerTargetGroup &&
        loadBalancerTargetGroups == other.loadBalancerTargetGroups &&
        loadBalancerTargetPort == other.loadBalancerTargetPort &&
        elasticLoadBalancerListener == other.elasticLoadBalancerListener &&
        missingComponent == other.missingComponent &&
        natGateway == other.natGateway &&
        networkInterface == other.networkInterface &&
        packetField == other.packetField &&
        vpcPeeringConnection == other.vpcPeeringConnection &&
        port == other.port &&
        portRanges == other.portRanges &&
        prefixList == other.prefixList &&
        protocols == other.protocols &&
        routeTableRoute == other.routeTableRoute &&
        routeTable == other.routeTable &&
        securityGroup == other.securityGroup &&
        securityGroupRule == other.securityGroupRule &&
        securityGroups == other.securityGroups &&
        sourceVpc == other.sourceVpc &&
        state == other.state &&
        subnet == other.subnet &&
        subnetRouteTable == other.subnetRouteTable &&
        vpc == other.vpc &&
        vpcEndpoint == other.vpcEndpoint &&
        vpnConnection == other.vpnConnection &&
        vpnGateway == other.vpnGateway &&
        transitGateway == other.transitGateway &&
        transitGatewayRouteTable == other.transitGatewayRouteTable &&
        transitGatewayRouteTableRoute == other.transitGatewayRouteTableRoute &&
        transitGatewayAttachment == other.transitGatewayAttachment &&
        componentAccount == other.componentAccount &&
        componentRegion == other.componentRegion;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, acl.hashCode);
    _$hash = $jc(_$hash, aclRule.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, addresses.hashCode);
    _$hash = $jc(_$hash, attachedTo.hashCode);
    _$hash = $jc(_$hash, availabilityZones.hashCode);
    _$hash = $jc(_$hash, cidrs.hashCode);
    _$hash = $jc(_$hash, component.hashCode);
    _$hash = $jc(_$hash, customerGateway.hashCode);
    _$hash = $jc(_$hash, destination.hashCode);
    _$hash = $jc(_$hash, destinationVpc.hashCode);
    _$hash = $jc(_$hash, direction.hashCode);
    _$hash = $jc(_$hash, explanationCode.hashCode);
    _$hash = $jc(_$hash, ingressRouteTable.hashCode);
    _$hash = $jc(_$hash, internetGateway.hashCode);
    _$hash = $jc(_$hash, loadBalancerArn.hashCode);
    _$hash = $jc(_$hash, classicLoadBalancerListener.hashCode);
    _$hash = $jc(_$hash, loadBalancerListenerPort.hashCode);
    _$hash = $jc(_$hash, loadBalancerTarget.hashCode);
    _$hash = $jc(_$hash, loadBalancerTargetGroup.hashCode);
    _$hash = $jc(_$hash, loadBalancerTargetGroups.hashCode);
    _$hash = $jc(_$hash, loadBalancerTargetPort.hashCode);
    _$hash = $jc(_$hash, elasticLoadBalancerListener.hashCode);
    _$hash = $jc(_$hash, missingComponent.hashCode);
    _$hash = $jc(_$hash, natGateway.hashCode);
    _$hash = $jc(_$hash, networkInterface.hashCode);
    _$hash = $jc(_$hash, packetField.hashCode);
    _$hash = $jc(_$hash, vpcPeeringConnection.hashCode);
    _$hash = $jc(_$hash, port.hashCode);
    _$hash = $jc(_$hash, portRanges.hashCode);
    _$hash = $jc(_$hash, prefixList.hashCode);
    _$hash = $jc(_$hash, protocols.hashCode);
    _$hash = $jc(_$hash, routeTableRoute.hashCode);
    _$hash = $jc(_$hash, routeTable.hashCode);
    _$hash = $jc(_$hash, securityGroup.hashCode);
    _$hash = $jc(_$hash, securityGroupRule.hashCode);
    _$hash = $jc(_$hash, securityGroups.hashCode);
    _$hash = $jc(_$hash, sourceVpc.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, subnet.hashCode);
    _$hash = $jc(_$hash, subnetRouteTable.hashCode);
    _$hash = $jc(_$hash, vpc.hashCode);
    _$hash = $jc(_$hash, vpcEndpoint.hashCode);
    _$hash = $jc(_$hash, vpnConnection.hashCode);
    _$hash = $jc(_$hash, vpnGateway.hashCode);
    _$hash = $jc(_$hash, transitGateway.hashCode);
    _$hash = $jc(_$hash, transitGatewayRouteTable.hashCode);
    _$hash = $jc(_$hash, transitGatewayRouteTableRoute.hashCode);
    _$hash = $jc(_$hash, transitGatewayAttachment.hashCode);
    _$hash = $jc(_$hash, componentAccount.hashCode);
    _$hash = $jc(_$hash, componentRegion.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ExplanationBuilder implements Builder<Explanation, ExplanationBuilder> {
  _$Explanation? _$v;

  _i2.AnalysisComponentBuilder? _acl;
  _i2.AnalysisComponentBuilder get acl =>
      _$this._acl ??= new _i2.AnalysisComponentBuilder();
  set acl(_i2.AnalysisComponentBuilder? acl) => _$this._acl = acl;

  _i3.AnalysisAclRuleBuilder? _aclRule;
  _i3.AnalysisAclRuleBuilder get aclRule =>
      _$this._aclRule ??= new _i3.AnalysisAclRuleBuilder();
  set aclRule(_i3.AnalysisAclRuleBuilder? aclRule) => _$this._aclRule = aclRule;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  _i10.ListBuilder<String>? _addresses;
  _i10.ListBuilder<String> get addresses =>
      _$this._addresses ??= new _i10.ListBuilder<String>();
  set addresses(_i10.ListBuilder<String>? addresses) =>
      _$this._addresses = addresses;

  _i2.AnalysisComponentBuilder? _attachedTo;
  _i2.AnalysisComponentBuilder get attachedTo =>
      _$this._attachedTo ??= new _i2.AnalysisComponentBuilder();
  set attachedTo(_i2.AnalysisComponentBuilder? attachedTo) =>
      _$this._attachedTo = attachedTo;

  _i10.ListBuilder<String>? _availabilityZones;
  _i10.ListBuilder<String> get availabilityZones =>
      _$this._availabilityZones ??= new _i10.ListBuilder<String>();
  set availabilityZones(_i10.ListBuilder<String>? availabilityZones) =>
      _$this._availabilityZones = availabilityZones;

  _i10.ListBuilder<String>? _cidrs;
  _i10.ListBuilder<String> get cidrs =>
      _$this._cidrs ??= new _i10.ListBuilder<String>();
  set cidrs(_i10.ListBuilder<String>? cidrs) => _$this._cidrs = cidrs;

  _i2.AnalysisComponentBuilder? _component;
  _i2.AnalysisComponentBuilder get component =>
      _$this._component ??= new _i2.AnalysisComponentBuilder();
  set component(_i2.AnalysisComponentBuilder? component) =>
      _$this._component = component;

  _i2.AnalysisComponentBuilder? _customerGateway;
  _i2.AnalysisComponentBuilder get customerGateway =>
      _$this._customerGateway ??= new _i2.AnalysisComponentBuilder();
  set customerGateway(_i2.AnalysisComponentBuilder? customerGateway) =>
      _$this._customerGateway = customerGateway;

  _i2.AnalysisComponentBuilder? _destination;
  _i2.AnalysisComponentBuilder get destination =>
      _$this._destination ??= new _i2.AnalysisComponentBuilder();
  set destination(_i2.AnalysisComponentBuilder? destination) =>
      _$this._destination = destination;

  _i2.AnalysisComponentBuilder? _destinationVpc;
  _i2.AnalysisComponentBuilder get destinationVpc =>
      _$this._destinationVpc ??= new _i2.AnalysisComponentBuilder();
  set destinationVpc(_i2.AnalysisComponentBuilder? destinationVpc) =>
      _$this._destinationVpc = destinationVpc;

  String? _direction;
  String? get direction => _$this._direction;
  set direction(String? direction) => _$this._direction = direction;

  String? _explanationCode;
  String? get explanationCode => _$this._explanationCode;
  set explanationCode(String? explanationCode) =>
      _$this._explanationCode = explanationCode;

  _i2.AnalysisComponentBuilder? _ingressRouteTable;
  _i2.AnalysisComponentBuilder get ingressRouteTable =>
      _$this._ingressRouteTable ??= new _i2.AnalysisComponentBuilder();
  set ingressRouteTable(_i2.AnalysisComponentBuilder? ingressRouteTable) =>
      _$this._ingressRouteTable = ingressRouteTable;

  _i2.AnalysisComponentBuilder? _internetGateway;
  _i2.AnalysisComponentBuilder get internetGateway =>
      _$this._internetGateway ??= new _i2.AnalysisComponentBuilder();
  set internetGateway(_i2.AnalysisComponentBuilder? internetGateway) =>
      _$this._internetGateway = internetGateway;

  String? _loadBalancerArn;
  String? get loadBalancerArn => _$this._loadBalancerArn;
  set loadBalancerArn(String? loadBalancerArn) =>
      _$this._loadBalancerArn = loadBalancerArn;

  _i4.AnalysisLoadBalancerListenerBuilder? _classicLoadBalancerListener;
  _i4.AnalysisLoadBalancerListenerBuilder get classicLoadBalancerListener =>
      _$this._classicLoadBalancerListener ??=
          new _i4.AnalysisLoadBalancerListenerBuilder();
  set classicLoadBalancerListener(
          _i4.AnalysisLoadBalancerListenerBuilder?
              classicLoadBalancerListener) =>
      _$this._classicLoadBalancerListener = classicLoadBalancerListener;

  int? _loadBalancerListenerPort;
  int? get loadBalancerListenerPort => _$this._loadBalancerListenerPort;
  set loadBalancerListenerPort(int? loadBalancerListenerPort) =>
      _$this._loadBalancerListenerPort = loadBalancerListenerPort;

  _i5.AnalysisLoadBalancerTargetBuilder? _loadBalancerTarget;
  _i5.AnalysisLoadBalancerTargetBuilder get loadBalancerTarget =>
      _$this._loadBalancerTarget ??=
          new _i5.AnalysisLoadBalancerTargetBuilder();
  set loadBalancerTarget(
          _i5.AnalysisLoadBalancerTargetBuilder? loadBalancerTarget) =>
      _$this._loadBalancerTarget = loadBalancerTarget;

  _i2.AnalysisComponentBuilder? _loadBalancerTargetGroup;
  _i2.AnalysisComponentBuilder get loadBalancerTargetGroup =>
      _$this._loadBalancerTargetGroup ??= new _i2.AnalysisComponentBuilder();
  set loadBalancerTargetGroup(
          _i2.AnalysisComponentBuilder? loadBalancerTargetGroup) =>
      _$this._loadBalancerTargetGroup = loadBalancerTargetGroup;

  _i10.ListBuilder<_i2.AnalysisComponent>? _loadBalancerTargetGroups;
  _i10.ListBuilder<_i2.AnalysisComponent> get loadBalancerTargetGroups =>
      _$this._loadBalancerTargetGroups ??=
          new _i10.ListBuilder<_i2.AnalysisComponent>();
  set loadBalancerTargetGroups(
          _i10.ListBuilder<_i2.AnalysisComponent>? loadBalancerTargetGroups) =>
      _$this._loadBalancerTargetGroups = loadBalancerTargetGroups;

  int? _loadBalancerTargetPort;
  int? get loadBalancerTargetPort => _$this._loadBalancerTargetPort;
  set loadBalancerTargetPort(int? loadBalancerTargetPort) =>
      _$this._loadBalancerTargetPort = loadBalancerTargetPort;

  _i2.AnalysisComponentBuilder? _elasticLoadBalancerListener;
  _i2.AnalysisComponentBuilder get elasticLoadBalancerListener =>
      _$this._elasticLoadBalancerListener ??=
          new _i2.AnalysisComponentBuilder();
  set elasticLoadBalancerListener(
          _i2.AnalysisComponentBuilder? elasticLoadBalancerListener) =>
      _$this._elasticLoadBalancerListener = elasticLoadBalancerListener;

  String? _missingComponent;
  String? get missingComponent => _$this._missingComponent;
  set missingComponent(String? missingComponent) =>
      _$this._missingComponent = missingComponent;

  _i2.AnalysisComponentBuilder? _natGateway;
  _i2.AnalysisComponentBuilder get natGateway =>
      _$this._natGateway ??= new _i2.AnalysisComponentBuilder();
  set natGateway(_i2.AnalysisComponentBuilder? natGateway) =>
      _$this._natGateway = natGateway;

  _i2.AnalysisComponentBuilder? _networkInterface;
  _i2.AnalysisComponentBuilder get networkInterface =>
      _$this._networkInterface ??= new _i2.AnalysisComponentBuilder();
  set networkInterface(_i2.AnalysisComponentBuilder? networkInterface) =>
      _$this._networkInterface = networkInterface;

  String? _packetField;
  String? get packetField => _$this._packetField;
  set packetField(String? packetField) => _$this._packetField = packetField;

  _i2.AnalysisComponentBuilder? _vpcPeeringConnection;
  _i2.AnalysisComponentBuilder get vpcPeeringConnection =>
      _$this._vpcPeeringConnection ??= new _i2.AnalysisComponentBuilder();
  set vpcPeeringConnection(
          _i2.AnalysisComponentBuilder? vpcPeeringConnection) =>
      _$this._vpcPeeringConnection = vpcPeeringConnection;

  int? _port;
  int? get port => _$this._port;
  set port(int? port) => _$this._port = port;

  _i10.ListBuilder<_i6.PortRange>? _portRanges;
  _i10.ListBuilder<_i6.PortRange> get portRanges =>
      _$this._portRanges ??= new _i10.ListBuilder<_i6.PortRange>();
  set portRanges(_i10.ListBuilder<_i6.PortRange>? portRanges) =>
      _$this._portRanges = portRanges;

  _i2.AnalysisComponentBuilder? _prefixList;
  _i2.AnalysisComponentBuilder get prefixList =>
      _$this._prefixList ??= new _i2.AnalysisComponentBuilder();
  set prefixList(_i2.AnalysisComponentBuilder? prefixList) =>
      _$this._prefixList = prefixList;

  _i10.ListBuilder<String>? _protocols;
  _i10.ListBuilder<String> get protocols =>
      _$this._protocols ??= new _i10.ListBuilder<String>();
  set protocols(_i10.ListBuilder<String>? protocols) =>
      _$this._protocols = protocols;

  _i7.AnalysisRouteTableRouteBuilder? _routeTableRoute;
  _i7.AnalysisRouteTableRouteBuilder get routeTableRoute =>
      _$this._routeTableRoute ??= new _i7.AnalysisRouteTableRouteBuilder();
  set routeTableRoute(_i7.AnalysisRouteTableRouteBuilder? routeTableRoute) =>
      _$this._routeTableRoute = routeTableRoute;

  _i2.AnalysisComponentBuilder? _routeTable;
  _i2.AnalysisComponentBuilder get routeTable =>
      _$this._routeTable ??= new _i2.AnalysisComponentBuilder();
  set routeTable(_i2.AnalysisComponentBuilder? routeTable) =>
      _$this._routeTable = routeTable;

  _i2.AnalysisComponentBuilder? _securityGroup;
  _i2.AnalysisComponentBuilder get securityGroup =>
      _$this._securityGroup ??= new _i2.AnalysisComponentBuilder();
  set securityGroup(_i2.AnalysisComponentBuilder? securityGroup) =>
      _$this._securityGroup = securityGroup;

  _i8.AnalysisSecurityGroupRuleBuilder? _securityGroupRule;
  _i8.AnalysisSecurityGroupRuleBuilder get securityGroupRule =>
      _$this._securityGroupRule ??= new _i8.AnalysisSecurityGroupRuleBuilder();
  set securityGroupRule(
          _i8.AnalysisSecurityGroupRuleBuilder? securityGroupRule) =>
      _$this._securityGroupRule = securityGroupRule;

  _i10.ListBuilder<_i2.AnalysisComponent>? _securityGroups;
  _i10.ListBuilder<_i2.AnalysisComponent> get securityGroups =>
      _$this._securityGroups ??= new _i10.ListBuilder<_i2.AnalysisComponent>();
  set securityGroups(_i10.ListBuilder<_i2.AnalysisComponent>? securityGroups) =>
      _$this._securityGroups = securityGroups;

  _i2.AnalysisComponentBuilder? _sourceVpc;
  _i2.AnalysisComponentBuilder get sourceVpc =>
      _$this._sourceVpc ??= new _i2.AnalysisComponentBuilder();
  set sourceVpc(_i2.AnalysisComponentBuilder? sourceVpc) =>
      _$this._sourceVpc = sourceVpc;

  String? _state;
  String? get state => _$this._state;
  set state(String? state) => _$this._state = state;

  _i2.AnalysisComponentBuilder? _subnet;
  _i2.AnalysisComponentBuilder get subnet =>
      _$this._subnet ??= new _i2.AnalysisComponentBuilder();
  set subnet(_i2.AnalysisComponentBuilder? subnet) => _$this._subnet = subnet;

  _i2.AnalysisComponentBuilder? _subnetRouteTable;
  _i2.AnalysisComponentBuilder get subnetRouteTable =>
      _$this._subnetRouteTable ??= new _i2.AnalysisComponentBuilder();
  set subnetRouteTable(_i2.AnalysisComponentBuilder? subnetRouteTable) =>
      _$this._subnetRouteTable = subnetRouteTable;

  _i2.AnalysisComponentBuilder? _vpc;
  _i2.AnalysisComponentBuilder get vpc =>
      _$this._vpc ??= new _i2.AnalysisComponentBuilder();
  set vpc(_i2.AnalysisComponentBuilder? vpc) => _$this._vpc = vpc;

  _i2.AnalysisComponentBuilder? _vpcEndpoint;
  _i2.AnalysisComponentBuilder get vpcEndpoint =>
      _$this._vpcEndpoint ??= new _i2.AnalysisComponentBuilder();
  set vpcEndpoint(_i2.AnalysisComponentBuilder? vpcEndpoint) =>
      _$this._vpcEndpoint = vpcEndpoint;

  _i2.AnalysisComponentBuilder? _vpnConnection;
  _i2.AnalysisComponentBuilder get vpnConnection =>
      _$this._vpnConnection ??= new _i2.AnalysisComponentBuilder();
  set vpnConnection(_i2.AnalysisComponentBuilder? vpnConnection) =>
      _$this._vpnConnection = vpnConnection;

  _i2.AnalysisComponentBuilder? _vpnGateway;
  _i2.AnalysisComponentBuilder get vpnGateway =>
      _$this._vpnGateway ??= new _i2.AnalysisComponentBuilder();
  set vpnGateway(_i2.AnalysisComponentBuilder? vpnGateway) =>
      _$this._vpnGateway = vpnGateway;

  _i2.AnalysisComponentBuilder? _transitGateway;
  _i2.AnalysisComponentBuilder get transitGateway =>
      _$this._transitGateway ??= new _i2.AnalysisComponentBuilder();
  set transitGateway(_i2.AnalysisComponentBuilder? transitGateway) =>
      _$this._transitGateway = transitGateway;

  _i2.AnalysisComponentBuilder? _transitGatewayRouteTable;
  _i2.AnalysisComponentBuilder get transitGatewayRouteTable =>
      _$this._transitGatewayRouteTable ??= new _i2.AnalysisComponentBuilder();
  set transitGatewayRouteTable(
          _i2.AnalysisComponentBuilder? transitGatewayRouteTable) =>
      _$this._transitGatewayRouteTable = transitGatewayRouteTable;

  _i9.TransitGatewayRouteTableRouteBuilder? _transitGatewayRouteTableRoute;
  _i9.TransitGatewayRouteTableRouteBuilder get transitGatewayRouteTableRoute =>
      _$this._transitGatewayRouteTableRoute ??=
          new _i9.TransitGatewayRouteTableRouteBuilder();
  set transitGatewayRouteTableRoute(
          _i9.TransitGatewayRouteTableRouteBuilder?
              transitGatewayRouteTableRoute) =>
      _$this._transitGatewayRouteTableRoute = transitGatewayRouteTableRoute;

  _i2.AnalysisComponentBuilder? _transitGatewayAttachment;
  _i2.AnalysisComponentBuilder get transitGatewayAttachment =>
      _$this._transitGatewayAttachment ??= new _i2.AnalysisComponentBuilder();
  set transitGatewayAttachment(
          _i2.AnalysisComponentBuilder? transitGatewayAttachment) =>
      _$this._transitGatewayAttachment = transitGatewayAttachment;

  String? _componentAccount;
  String? get componentAccount => _$this._componentAccount;
  set componentAccount(String? componentAccount) =>
      _$this._componentAccount = componentAccount;

  String? _componentRegion;
  String? get componentRegion => _$this._componentRegion;
  set componentRegion(String? componentRegion) =>
      _$this._componentRegion = componentRegion;

  ExplanationBuilder() {
    Explanation._init(this);
  }

  ExplanationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _acl = $v.acl?.toBuilder();
      _aclRule = $v.aclRule?.toBuilder();
      _address = $v.address;
      _addresses = $v.addresses?.toBuilder();
      _attachedTo = $v.attachedTo?.toBuilder();
      _availabilityZones = $v.availabilityZones?.toBuilder();
      _cidrs = $v.cidrs?.toBuilder();
      _component = $v.component?.toBuilder();
      _customerGateway = $v.customerGateway?.toBuilder();
      _destination = $v.destination?.toBuilder();
      _destinationVpc = $v.destinationVpc?.toBuilder();
      _direction = $v.direction;
      _explanationCode = $v.explanationCode;
      _ingressRouteTable = $v.ingressRouteTable?.toBuilder();
      _internetGateway = $v.internetGateway?.toBuilder();
      _loadBalancerArn = $v.loadBalancerArn;
      _classicLoadBalancerListener =
          $v.classicLoadBalancerListener?.toBuilder();
      _loadBalancerListenerPort = $v.loadBalancerListenerPort;
      _loadBalancerTarget = $v.loadBalancerTarget?.toBuilder();
      _loadBalancerTargetGroup = $v.loadBalancerTargetGroup?.toBuilder();
      _loadBalancerTargetGroups = $v.loadBalancerTargetGroups?.toBuilder();
      _loadBalancerTargetPort = $v.loadBalancerTargetPort;
      _elasticLoadBalancerListener =
          $v.elasticLoadBalancerListener?.toBuilder();
      _missingComponent = $v.missingComponent;
      _natGateway = $v.natGateway?.toBuilder();
      _networkInterface = $v.networkInterface?.toBuilder();
      _packetField = $v.packetField;
      _vpcPeeringConnection = $v.vpcPeeringConnection?.toBuilder();
      _port = $v.port;
      _portRanges = $v.portRanges?.toBuilder();
      _prefixList = $v.prefixList?.toBuilder();
      _protocols = $v.protocols?.toBuilder();
      _routeTableRoute = $v.routeTableRoute?.toBuilder();
      _routeTable = $v.routeTable?.toBuilder();
      _securityGroup = $v.securityGroup?.toBuilder();
      _securityGroupRule = $v.securityGroupRule?.toBuilder();
      _securityGroups = $v.securityGroups?.toBuilder();
      _sourceVpc = $v.sourceVpc?.toBuilder();
      _state = $v.state;
      _subnet = $v.subnet?.toBuilder();
      _subnetRouteTable = $v.subnetRouteTable?.toBuilder();
      _vpc = $v.vpc?.toBuilder();
      _vpcEndpoint = $v.vpcEndpoint?.toBuilder();
      _vpnConnection = $v.vpnConnection?.toBuilder();
      _vpnGateway = $v.vpnGateway?.toBuilder();
      _transitGateway = $v.transitGateway?.toBuilder();
      _transitGatewayRouteTable = $v.transitGatewayRouteTable?.toBuilder();
      _transitGatewayRouteTableRoute =
          $v.transitGatewayRouteTableRoute?.toBuilder();
      _transitGatewayAttachment = $v.transitGatewayAttachment?.toBuilder();
      _componentAccount = $v.componentAccount;
      _componentRegion = $v.componentRegion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Explanation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Explanation;
  }

  @override
  void update(void Function(ExplanationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Explanation build() => _build();

  _$Explanation _build() {
    _$Explanation _$result;
    try {
      _$result = _$v ??
          new _$Explanation._(
              acl: _acl?.build(),
              aclRule: _aclRule?.build(),
              address: address,
              addresses: _addresses?.build(),
              attachedTo: _attachedTo?.build(),
              availabilityZones: _availabilityZones?.build(),
              cidrs: _cidrs?.build(),
              component: _component?.build(),
              customerGateway: _customerGateway?.build(),
              destination: _destination?.build(),
              destinationVpc: _destinationVpc?.build(),
              direction: direction,
              explanationCode: explanationCode,
              ingressRouteTable: _ingressRouteTable?.build(),
              internetGateway: _internetGateway?.build(),
              loadBalancerArn: loadBalancerArn,
              classicLoadBalancerListener:
                  _classicLoadBalancerListener?.build(),
              loadBalancerListenerPort: BuiltValueNullFieldError.checkNotNull(
                  loadBalancerListenerPort,
                  r'Explanation',
                  'loadBalancerListenerPort'),
              loadBalancerTarget: _loadBalancerTarget?.build(),
              loadBalancerTargetGroup: _loadBalancerTargetGroup?.build(),
              loadBalancerTargetGroups: _loadBalancerTargetGroups?.build(),
              loadBalancerTargetPort: BuiltValueNullFieldError.checkNotNull(
                  loadBalancerTargetPort,
                  r'Explanation',
                  'loadBalancerTargetPort'),
              elasticLoadBalancerListener:
                  _elasticLoadBalancerListener?.build(),
              missingComponent: missingComponent,
              natGateway: _natGateway?.build(),
              networkInterface: _networkInterface?.build(),
              packetField: packetField,
              vpcPeeringConnection: _vpcPeeringConnection?.build(),
              port: BuiltValueNullFieldError.checkNotNull(
                  port, r'Explanation', 'port'),
              portRanges: _portRanges?.build(),
              prefixList: _prefixList?.build(),
              protocols: _protocols?.build(),
              routeTableRoute: _routeTableRoute?.build(),
              routeTable: _routeTable?.build(),
              securityGroup: _securityGroup?.build(),
              securityGroupRule: _securityGroupRule?.build(),
              securityGroups: _securityGroups?.build(),
              sourceVpc: _sourceVpc?.build(),
              state: state,
              subnet: _subnet?.build(),
              subnetRouteTable: _subnetRouteTable?.build(),
              vpc: _vpc?.build(),
              vpcEndpoint: _vpcEndpoint?.build(),
              vpnConnection: _vpnConnection?.build(),
              vpnGateway: _vpnGateway?.build(),
              transitGateway: _transitGateway?.build(),
              transitGatewayRouteTable: _transitGatewayRouteTable?.build(),
              transitGatewayRouteTableRoute:
                  _transitGatewayRouteTableRoute?.build(),
              transitGatewayAttachment: _transitGatewayAttachment?.build(),
              componentAccount: componentAccount,
              componentRegion: componentRegion);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'acl';
        _acl?.build();
        _$failedField = 'aclRule';
        _aclRule?.build();

        _$failedField = 'addresses';
        _addresses?.build();
        _$failedField = 'attachedTo';
        _attachedTo?.build();
        _$failedField = 'availabilityZones';
        _availabilityZones?.build();
        _$failedField = 'cidrs';
        _cidrs?.build();
        _$failedField = 'component';
        _component?.build();
        _$failedField = 'customerGateway';
        _customerGateway?.build();
        _$failedField = 'destination';
        _destination?.build();
        _$failedField = 'destinationVpc';
        _destinationVpc?.build();

        _$failedField = 'ingressRouteTable';
        _ingressRouteTable?.build();
        _$failedField = 'internetGateway';
        _internetGateway?.build();

        _$failedField = 'classicLoadBalancerListener';
        _classicLoadBalancerListener?.build();

        _$failedField = 'loadBalancerTarget';
        _loadBalancerTarget?.build();
        _$failedField = 'loadBalancerTargetGroup';
        _loadBalancerTargetGroup?.build();
        _$failedField = 'loadBalancerTargetGroups';
        _loadBalancerTargetGroups?.build();

        _$failedField = 'elasticLoadBalancerListener';
        _elasticLoadBalancerListener?.build();

        _$failedField = 'natGateway';
        _natGateway?.build();
        _$failedField = 'networkInterface';
        _networkInterface?.build();

        _$failedField = 'vpcPeeringConnection';
        _vpcPeeringConnection?.build();

        _$failedField = 'portRanges';
        _portRanges?.build();
        _$failedField = 'prefixList';
        _prefixList?.build();
        _$failedField = 'protocols';
        _protocols?.build();
        _$failedField = 'routeTableRoute';
        _routeTableRoute?.build();
        _$failedField = 'routeTable';
        _routeTable?.build();
        _$failedField = 'securityGroup';
        _securityGroup?.build();
        _$failedField = 'securityGroupRule';
        _securityGroupRule?.build();
        _$failedField = 'securityGroups';
        _securityGroups?.build();
        _$failedField = 'sourceVpc';
        _sourceVpc?.build();

        _$failedField = 'subnet';
        _subnet?.build();
        _$failedField = 'subnetRouteTable';
        _subnetRouteTable?.build();
        _$failedField = 'vpc';
        _vpc?.build();
        _$failedField = 'vpcEndpoint';
        _vpcEndpoint?.build();
        _$failedField = 'vpnConnection';
        _vpnConnection?.build();
        _$failedField = 'vpnGateway';
        _vpnGateway?.build();
        _$failedField = 'transitGateway';
        _transitGateway?.build();
        _$failedField = 'transitGatewayRouteTable';
        _transitGatewayRouteTable?.build();
        _$failedField = 'transitGatewayRouteTableRoute';
        _transitGatewayRouteTableRoute?.build();
        _$failedField = 'transitGatewayAttachment';
        _transitGatewayAttachment?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Explanation', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
