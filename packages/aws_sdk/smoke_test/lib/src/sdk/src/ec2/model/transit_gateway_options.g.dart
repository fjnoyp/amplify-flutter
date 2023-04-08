// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.transit_gateway_options;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransitGatewayOptions extends TransitGatewayOptions {
  @override
  final _i2.Int64 amazonSideAsn;
  @override
  final _i9.BuiltList<String>? transitGatewayCidrBlocks;
  @override
  final _i3.AutoAcceptSharedAttachmentsValue? autoAcceptSharedAttachments;
  @override
  final _i4.DefaultRouteTableAssociationValue? defaultRouteTableAssociation;
  @override
  final String? associationDefaultRouteTableId;
  @override
  final _i5.DefaultRouteTablePropagationValue? defaultRouteTablePropagation;
  @override
  final String? propagationDefaultRouteTableId;
  @override
  final _i6.VpnEcmpSupportValue? vpnEcmpSupport;
  @override
  final _i7.DnsSupportValue? dnsSupport;
  @override
  final _i8.MulticastSupportValue? multicastSupport;

  factory _$TransitGatewayOptions(
          [void Function(TransitGatewayOptionsBuilder)? updates]) =>
      (new TransitGatewayOptionsBuilder()..update(updates))._build();

  _$TransitGatewayOptions._(
      {required this.amazonSideAsn,
      this.transitGatewayCidrBlocks,
      this.autoAcceptSharedAttachments,
      this.defaultRouteTableAssociation,
      this.associationDefaultRouteTableId,
      this.defaultRouteTablePropagation,
      this.propagationDefaultRouteTableId,
      this.vpnEcmpSupport,
      this.dnsSupport,
      this.multicastSupport})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        amazonSideAsn, r'TransitGatewayOptions', 'amazonSideAsn');
  }

  @override
  TransitGatewayOptions rebuild(
          void Function(TransitGatewayOptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransitGatewayOptionsBuilder toBuilder() =>
      new TransitGatewayOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransitGatewayOptions &&
        amazonSideAsn == other.amazonSideAsn &&
        transitGatewayCidrBlocks == other.transitGatewayCidrBlocks &&
        autoAcceptSharedAttachments == other.autoAcceptSharedAttachments &&
        defaultRouteTableAssociation == other.defaultRouteTableAssociation &&
        associationDefaultRouteTableId ==
            other.associationDefaultRouteTableId &&
        defaultRouteTablePropagation == other.defaultRouteTablePropagation &&
        propagationDefaultRouteTableId ==
            other.propagationDefaultRouteTableId &&
        vpnEcmpSupport == other.vpnEcmpSupport &&
        dnsSupport == other.dnsSupport &&
        multicastSupport == other.multicastSupport;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, amazonSideAsn.hashCode);
    _$hash = $jc(_$hash, transitGatewayCidrBlocks.hashCode);
    _$hash = $jc(_$hash, autoAcceptSharedAttachments.hashCode);
    _$hash = $jc(_$hash, defaultRouteTableAssociation.hashCode);
    _$hash = $jc(_$hash, associationDefaultRouteTableId.hashCode);
    _$hash = $jc(_$hash, defaultRouteTablePropagation.hashCode);
    _$hash = $jc(_$hash, propagationDefaultRouteTableId.hashCode);
    _$hash = $jc(_$hash, vpnEcmpSupport.hashCode);
    _$hash = $jc(_$hash, dnsSupport.hashCode);
    _$hash = $jc(_$hash, multicastSupport.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TransitGatewayOptionsBuilder
    implements Builder<TransitGatewayOptions, TransitGatewayOptionsBuilder> {
  _$TransitGatewayOptions? _$v;

  _i2.Int64? _amazonSideAsn;
  _i2.Int64? get amazonSideAsn => _$this._amazonSideAsn;
  set amazonSideAsn(_i2.Int64? amazonSideAsn) =>
      _$this._amazonSideAsn = amazonSideAsn;

  _i9.ListBuilder<String>? _transitGatewayCidrBlocks;
  _i9.ListBuilder<String> get transitGatewayCidrBlocks =>
      _$this._transitGatewayCidrBlocks ??= new _i9.ListBuilder<String>();
  set transitGatewayCidrBlocks(
          _i9.ListBuilder<String>? transitGatewayCidrBlocks) =>
      _$this._transitGatewayCidrBlocks = transitGatewayCidrBlocks;

  _i3.AutoAcceptSharedAttachmentsValue? _autoAcceptSharedAttachments;
  _i3.AutoAcceptSharedAttachmentsValue? get autoAcceptSharedAttachments =>
      _$this._autoAcceptSharedAttachments;
  set autoAcceptSharedAttachments(
          _i3.AutoAcceptSharedAttachmentsValue? autoAcceptSharedAttachments) =>
      _$this._autoAcceptSharedAttachments = autoAcceptSharedAttachments;

  _i4.DefaultRouteTableAssociationValue? _defaultRouteTableAssociation;
  _i4.DefaultRouteTableAssociationValue? get defaultRouteTableAssociation =>
      _$this._defaultRouteTableAssociation;
  set defaultRouteTableAssociation(
          _i4.DefaultRouteTableAssociationValue?
              defaultRouteTableAssociation) =>
      _$this._defaultRouteTableAssociation = defaultRouteTableAssociation;

  String? _associationDefaultRouteTableId;
  String? get associationDefaultRouteTableId =>
      _$this._associationDefaultRouteTableId;
  set associationDefaultRouteTableId(String? associationDefaultRouteTableId) =>
      _$this._associationDefaultRouteTableId = associationDefaultRouteTableId;

  _i5.DefaultRouteTablePropagationValue? _defaultRouteTablePropagation;
  _i5.DefaultRouteTablePropagationValue? get defaultRouteTablePropagation =>
      _$this._defaultRouteTablePropagation;
  set defaultRouteTablePropagation(
          _i5.DefaultRouteTablePropagationValue?
              defaultRouteTablePropagation) =>
      _$this._defaultRouteTablePropagation = defaultRouteTablePropagation;

  String? _propagationDefaultRouteTableId;
  String? get propagationDefaultRouteTableId =>
      _$this._propagationDefaultRouteTableId;
  set propagationDefaultRouteTableId(String? propagationDefaultRouteTableId) =>
      _$this._propagationDefaultRouteTableId = propagationDefaultRouteTableId;

  _i6.VpnEcmpSupportValue? _vpnEcmpSupport;
  _i6.VpnEcmpSupportValue? get vpnEcmpSupport => _$this._vpnEcmpSupport;
  set vpnEcmpSupport(_i6.VpnEcmpSupportValue? vpnEcmpSupport) =>
      _$this._vpnEcmpSupport = vpnEcmpSupport;

  _i7.DnsSupportValue? _dnsSupport;
  _i7.DnsSupportValue? get dnsSupport => _$this._dnsSupport;
  set dnsSupport(_i7.DnsSupportValue? dnsSupport) =>
      _$this._dnsSupport = dnsSupport;

  _i8.MulticastSupportValue? _multicastSupport;
  _i8.MulticastSupportValue? get multicastSupport => _$this._multicastSupport;
  set multicastSupport(_i8.MulticastSupportValue? multicastSupport) =>
      _$this._multicastSupport = multicastSupport;

  TransitGatewayOptionsBuilder() {
    TransitGatewayOptions._init(this);
  }

  TransitGatewayOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _amazonSideAsn = $v.amazonSideAsn;
      _transitGatewayCidrBlocks = $v.transitGatewayCidrBlocks?.toBuilder();
      _autoAcceptSharedAttachments = $v.autoAcceptSharedAttachments;
      _defaultRouteTableAssociation = $v.defaultRouteTableAssociation;
      _associationDefaultRouteTableId = $v.associationDefaultRouteTableId;
      _defaultRouteTablePropagation = $v.defaultRouteTablePropagation;
      _propagationDefaultRouteTableId = $v.propagationDefaultRouteTableId;
      _vpnEcmpSupport = $v.vpnEcmpSupport;
      _dnsSupport = $v.dnsSupport;
      _multicastSupport = $v.multicastSupport;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransitGatewayOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransitGatewayOptions;
  }

  @override
  void update(void Function(TransitGatewayOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransitGatewayOptions build() => _build();

  _$TransitGatewayOptions _build() {
    _$TransitGatewayOptions _$result;
    try {
      _$result = _$v ??
          new _$TransitGatewayOptions._(
              amazonSideAsn: BuiltValueNullFieldError.checkNotNull(
                  amazonSideAsn, r'TransitGatewayOptions', 'amazonSideAsn'),
              transitGatewayCidrBlocks: _transitGatewayCidrBlocks?.build(),
              autoAcceptSharedAttachments: autoAcceptSharedAttachments,
              defaultRouteTableAssociation: defaultRouteTableAssociation,
              associationDefaultRouteTableId: associationDefaultRouteTableId,
              defaultRouteTablePropagation: defaultRouteTablePropagation,
              propagationDefaultRouteTableId: propagationDefaultRouteTableId,
              vpnEcmpSupport: vpnEcmpSupport,
              dnsSupport: dnsSupport,
              multicastSupport: multicastSupport);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transitGatewayCidrBlocks';
        _transitGatewayCidrBlocks?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TransitGatewayOptions', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
