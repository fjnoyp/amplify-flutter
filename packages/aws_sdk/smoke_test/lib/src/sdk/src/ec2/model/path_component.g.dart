// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.path_component;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PathComponent extends PathComponent {
  @override
  final int sequenceNumber;
  @override
  final _i2.AnalysisAclRule? aclRule;
  @override
  final _i3.AnalysisComponent? attachedTo;
  @override
  final _i3.AnalysisComponent? component;
  @override
  final _i3.AnalysisComponent? destinationVpc;
  @override
  final _i4.AnalysisPacketHeader? outboundHeader;
  @override
  final _i4.AnalysisPacketHeader? inboundHeader;
  @override
  final _i5.AnalysisRouteTableRoute? routeTableRoute;
  @override
  final _i6.AnalysisSecurityGroupRule? securityGroupRule;
  @override
  final _i3.AnalysisComponent? sourceVpc;
  @override
  final _i3.AnalysisComponent? subnet;
  @override
  final _i3.AnalysisComponent? vpc;
  @override
  final _i10.BuiltList<_i7.AdditionalDetail>? additionalDetails;
  @override
  final _i3.AnalysisComponent? transitGateway;
  @override
  final _i8.TransitGatewayRouteTableRoute? transitGatewayRouteTableRoute;
  @override
  final _i10.BuiltList<_i9.Explanation>? explanations;
  @override
  final _i3.AnalysisComponent? elasticLoadBalancerListener;

  factory _$PathComponent([void Function(PathComponentBuilder)? updates]) =>
      (new PathComponentBuilder()..update(updates))._build();

  _$PathComponent._(
      {required this.sequenceNumber,
      this.aclRule,
      this.attachedTo,
      this.component,
      this.destinationVpc,
      this.outboundHeader,
      this.inboundHeader,
      this.routeTableRoute,
      this.securityGroupRule,
      this.sourceVpc,
      this.subnet,
      this.vpc,
      this.additionalDetails,
      this.transitGateway,
      this.transitGatewayRouteTableRoute,
      this.explanations,
      this.elasticLoadBalancerListener})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        sequenceNumber, r'PathComponent', 'sequenceNumber');
  }

  @override
  PathComponent rebuild(void Function(PathComponentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PathComponentBuilder toBuilder() => new PathComponentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PathComponent &&
        sequenceNumber == other.sequenceNumber &&
        aclRule == other.aclRule &&
        attachedTo == other.attachedTo &&
        component == other.component &&
        destinationVpc == other.destinationVpc &&
        outboundHeader == other.outboundHeader &&
        inboundHeader == other.inboundHeader &&
        routeTableRoute == other.routeTableRoute &&
        securityGroupRule == other.securityGroupRule &&
        sourceVpc == other.sourceVpc &&
        subnet == other.subnet &&
        vpc == other.vpc &&
        additionalDetails == other.additionalDetails &&
        transitGateway == other.transitGateway &&
        transitGatewayRouteTableRoute == other.transitGatewayRouteTableRoute &&
        explanations == other.explanations &&
        elasticLoadBalancerListener == other.elasticLoadBalancerListener;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sequenceNumber.hashCode);
    _$hash = $jc(_$hash, aclRule.hashCode);
    _$hash = $jc(_$hash, attachedTo.hashCode);
    _$hash = $jc(_$hash, component.hashCode);
    _$hash = $jc(_$hash, destinationVpc.hashCode);
    _$hash = $jc(_$hash, outboundHeader.hashCode);
    _$hash = $jc(_$hash, inboundHeader.hashCode);
    _$hash = $jc(_$hash, routeTableRoute.hashCode);
    _$hash = $jc(_$hash, securityGroupRule.hashCode);
    _$hash = $jc(_$hash, sourceVpc.hashCode);
    _$hash = $jc(_$hash, subnet.hashCode);
    _$hash = $jc(_$hash, vpc.hashCode);
    _$hash = $jc(_$hash, additionalDetails.hashCode);
    _$hash = $jc(_$hash, transitGateway.hashCode);
    _$hash = $jc(_$hash, transitGatewayRouteTableRoute.hashCode);
    _$hash = $jc(_$hash, explanations.hashCode);
    _$hash = $jc(_$hash, elasticLoadBalancerListener.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PathComponentBuilder
    implements Builder<PathComponent, PathComponentBuilder> {
  _$PathComponent? _$v;

  int? _sequenceNumber;
  int? get sequenceNumber => _$this._sequenceNumber;
  set sequenceNumber(int? sequenceNumber) =>
      _$this._sequenceNumber = sequenceNumber;

  _i2.AnalysisAclRuleBuilder? _aclRule;
  _i2.AnalysisAclRuleBuilder get aclRule =>
      _$this._aclRule ??= new _i2.AnalysisAclRuleBuilder();
  set aclRule(_i2.AnalysisAclRuleBuilder? aclRule) => _$this._aclRule = aclRule;

  _i3.AnalysisComponentBuilder? _attachedTo;
  _i3.AnalysisComponentBuilder get attachedTo =>
      _$this._attachedTo ??= new _i3.AnalysisComponentBuilder();
  set attachedTo(_i3.AnalysisComponentBuilder? attachedTo) =>
      _$this._attachedTo = attachedTo;

  _i3.AnalysisComponentBuilder? _component;
  _i3.AnalysisComponentBuilder get component =>
      _$this._component ??= new _i3.AnalysisComponentBuilder();
  set component(_i3.AnalysisComponentBuilder? component) =>
      _$this._component = component;

  _i3.AnalysisComponentBuilder? _destinationVpc;
  _i3.AnalysisComponentBuilder get destinationVpc =>
      _$this._destinationVpc ??= new _i3.AnalysisComponentBuilder();
  set destinationVpc(_i3.AnalysisComponentBuilder? destinationVpc) =>
      _$this._destinationVpc = destinationVpc;

  _i4.AnalysisPacketHeaderBuilder? _outboundHeader;
  _i4.AnalysisPacketHeaderBuilder get outboundHeader =>
      _$this._outboundHeader ??= new _i4.AnalysisPacketHeaderBuilder();
  set outboundHeader(_i4.AnalysisPacketHeaderBuilder? outboundHeader) =>
      _$this._outboundHeader = outboundHeader;

  _i4.AnalysisPacketHeaderBuilder? _inboundHeader;
  _i4.AnalysisPacketHeaderBuilder get inboundHeader =>
      _$this._inboundHeader ??= new _i4.AnalysisPacketHeaderBuilder();
  set inboundHeader(_i4.AnalysisPacketHeaderBuilder? inboundHeader) =>
      _$this._inboundHeader = inboundHeader;

  _i5.AnalysisRouteTableRouteBuilder? _routeTableRoute;
  _i5.AnalysisRouteTableRouteBuilder get routeTableRoute =>
      _$this._routeTableRoute ??= new _i5.AnalysisRouteTableRouteBuilder();
  set routeTableRoute(_i5.AnalysisRouteTableRouteBuilder? routeTableRoute) =>
      _$this._routeTableRoute = routeTableRoute;

  _i6.AnalysisSecurityGroupRuleBuilder? _securityGroupRule;
  _i6.AnalysisSecurityGroupRuleBuilder get securityGroupRule =>
      _$this._securityGroupRule ??= new _i6.AnalysisSecurityGroupRuleBuilder();
  set securityGroupRule(
          _i6.AnalysisSecurityGroupRuleBuilder? securityGroupRule) =>
      _$this._securityGroupRule = securityGroupRule;

  _i3.AnalysisComponentBuilder? _sourceVpc;
  _i3.AnalysisComponentBuilder get sourceVpc =>
      _$this._sourceVpc ??= new _i3.AnalysisComponentBuilder();
  set sourceVpc(_i3.AnalysisComponentBuilder? sourceVpc) =>
      _$this._sourceVpc = sourceVpc;

  _i3.AnalysisComponentBuilder? _subnet;
  _i3.AnalysisComponentBuilder get subnet =>
      _$this._subnet ??= new _i3.AnalysisComponentBuilder();
  set subnet(_i3.AnalysisComponentBuilder? subnet) => _$this._subnet = subnet;

  _i3.AnalysisComponentBuilder? _vpc;
  _i3.AnalysisComponentBuilder get vpc =>
      _$this._vpc ??= new _i3.AnalysisComponentBuilder();
  set vpc(_i3.AnalysisComponentBuilder? vpc) => _$this._vpc = vpc;

  _i10.ListBuilder<_i7.AdditionalDetail>? _additionalDetails;
  _i10.ListBuilder<_i7.AdditionalDetail> get additionalDetails =>
      _$this._additionalDetails ??=
          new _i10.ListBuilder<_i7.AdditionalDetail>();
  set additionalDetails(
          _i10.ListBuilder<_i7.AdditionalDetail>? additionalDetails) =>
      _$this._additionalDetails = additionalDetails;

  _i3.AnalysisComponentBuilder? _transitGateway;
  _i3.AnalysisComponentBuilder get transitGateway =>
      _$this._transitGateway ??= new _i3.AnalysisComponentBuilder();
  set transitGateway(_i3.AnalysisComponentBuilder? transitGateway) =>
      _$this._transitGateway = transitGateway;

  _i8.TransitGatewayRouteTableRouteBuilder? _transitGatewayRouteTableRoute;
  _i8.TransitGatewayRouteTableRouteBuilder get transitGatewayRouteTableRoute =>
      _$this._transitGatewayRouteTableRoute ??=
          new _i8.TransitGatewayRouteTableRouteBuilder();
  set transitGatewayRouteTableRoute(
          _i8.TransitGatewayRouteTableRouteBuilder?
              transitGatewayRouteTableRoute) =>
      _$this._transitGatewayRouteTableRoute = transitGatewayRouteTableRoute;

  _i10.ListBuilder<_i9.Explanation>? _explanations;
  _i10.ListBuilder<_i9.Explanation> get explanations =>
      _$this._explanations ??= new _i10.ListBuilder<_i9.Explanation>();
  set explanations(_i10.ListBuilder<_i9.Explanation>? explanations) =>
      _$this._explanations = explanations;

  _i3.AnalysisComponentBuilder? _elasticLoadBalancerListener;
  _i3.AnalysisComponentBuilder get elasticLoadBalancerListener =>
      _$this._elasticLoadBalancerListener ??=
          new _i3.AnalysisComponentBuilder();
  set elasticLoadBalancerListener(
          _i3.AnalysisComponentBuilder? elasticLoadBalancerListener) =>
      _$this._elasticLoadBalancerListener = elasticLoadBalancerListener;

  PathComponentBuilder() {
    PathComponent._init(this);
  }

  PathComponentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sequenceNumber = $v.sequenceNumber;
      _aclRule = $v.aclRule?.toBuilder();
      _attachedTo = $v.attachedTo?.toBuilder();
      _component = $v.component?.toBuilder();
      _destinationVpc = $v.destinationVpc?.toBuilder();
      _outboundHeader = $v.outboundHeader?.toBuilder();
      _inboundHeader = $v.inboundHeader?.toBuilder();
      _routeTableRoute = $v.routeTableRoute?.toBuilder();
      _securityGroupRule = $v.securityGroupRule?.toBuilder();
      _sourceVpc = $v.sourceVpc?.toBuilder();
      _subnet = $v.subnet?.toBuilder();
      _vpc = $v.vpc?.toBuilder();
      _additionalDetails = $v.additionalDetails?.toBuilder();
      _transitGateway = $v.transitGateway?.toBuilder();
      _transitGatewayRouteTableRoute =
          $v.transitGatewayRouteTableRoute?.toBuilder();
      _explanations = $v.explanations?.toBuilder();
      _elasticLoadBalancerListener =
          $v.elasticLoadBalancerListener?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PathComponent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PathComponent;
  }

  @override
  void update(void Function(PathComponentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PathComponent build() => _build();

  _$PathComponent _build() {
    _$PathComponent _$result;
    try {
      _$result = _$v ??
          new _$PathComponent._(
              sequenceNumber: BuiltValueNullFieldError.checkNotNull(
                  sequenceNumber, r'PathComponent', 'sequenceNumber'),
              aclRule: _aclRule?.build(),
              attachedTo: _attachedTo?.build(),
              component: _component?.build(),
              destinationVpc: _destinationVpc?.build(),
              outboundHeader: _outboundHeader?.build(),
              inboundHeader: _inboundHeader?.build(),
              routeTableRoute: _routeTableRoute?.build(),
              securityGroupRule: _securityGroupRule?.build(),
              sourceVpc: _sourceVpc?.build(),
              subnet: _subnet?.build(),
              vpc: _vpc?.build(),
              additionalDetails: _additionalDetails?.build(),
              transitGateway: _transitGateway?.build(),
              transitGatewayRouteTableRoute:
                  _transitGatewayRouteTableRoute?.build(),
              explanations: _explanations?.build(),
              elasticLoadBalancerListener:
                  _elasticLoadBalancerListener?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'aclRule';
        _aclRule?.build();
        _$failedField = 'attachedTo';
        _attachedTo?.build();
        _$failedField = 'component';
        _component?.build();
        _$failedField = 'destinationVpc';
        _destinationVpc?.build();
        _$failedField = 'outboundHeader';
        _outboundHeader?.build();
        _$failedField = 'inboundHeader';
        _inboundHeader?.build();
        _$failedField = 'routeTableRoute';
        _routeTableRoute?.build();
        _$failedField = 'securityGroupRule';
        _securityGroupRule?.build();
        _$failedField = 'sourceVpc';
        _sourceVpc?.build();
        _$failedField = 'subnet';
        _subnet?.build();
        _$failedField = 'vpc';
        _vpc?.build();
        _$failedField = 'additionalDetails';
        _additionalDetails?.build();
        _$failedField = 'transitGateway';
        _transitGateway?.build();
        _$failedField = 'transitGatewayRouteTableRoute';
        _transitGatewayRouteTableRoute?.build();
        _$failedField = 'explanations';
        _explanations?.build();
        _$failedField = 'elasticLoadBalancerListener';
        _elasticLoadBalancerListener?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PathComponent', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
