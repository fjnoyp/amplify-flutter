// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.transit_gateway_request_options;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransitGatewayRequestOptions extends TransitGatewayRequestOptions {
  @override
  final _i2.Int64 amazonSideAsn;
  @override
  final _i3.AutoAcceptSharedAttachmentsValue? autoAcceptSharedAttachments;
  @override
  final _i4.DefaultRouteTableAssociationValue? defaultRouteTableAssociation;
  @override
  final _i5.DefaultRouteTablePropagationValue? defaultRouteTablePropagation;
  @override
  final _i6.VpnEcmpSupportValue? vpnEcmpSupport;
  @override
  final _i7.DnsSupportValue? dnsSupport;
  @override
  final _i8.MulticastSupportValue? multicastSupport;
  @override
  final _i9.BuiltList<String>? transitGatewayCidrBlocks;

  factory _$TransitGatewayRequestOptions(
          [void Function(TransitGatewayRequestOptionsBuilder)? updates]) =>
      (new TransitGatewayRequestOptionsBuilder()..update(updates))._build();

  _$TransitGatewayRequestOptions._(
      {required this.amazonSideAsn,
      this.autoAcceptSharedAttachments,
      this.defaultRouteTableAssociation,
      this.defaultRouteTablePropagation,
      this.vpnEcmpSupport,
      this.dnsSupport,
      this.multicastSupport,
      this.transitGatewayCidrBlocks})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        amazonSideAsn, r'TransitGatewayRequestOptions', 'amazonSideAsn');
  }

  @override
  TransitGatewayRequestOptions rebuild(
          void Function(TransitGatewayRequestOptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransitGatewayRequestOptionsBuilder toBuilder() =>
      new TransitGatewayRequestOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransitGatewayRequestOptions &&
        amazonSideAsn == other.amazonSideAsn &&
        autoAcceptSharedAttachments == other.autoAcceptSharedAttachments &&
        defaultRouteTableAssociation == other.defaultRouteTableAssociation &&
        defaultRouteTablePropagation == other.defaultRouteTablePropagation &&
        vpnEcmpSupport == other.vpnEcmpSupport &&
        dnsSupport == other.dnsSupport &&
        multicastSupport == other.multicastSupport &&
        transitGatewayCidrBlocks == other.transitGatewayCidrBlocks;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, amazonSideAsn.hashCode);
    _$hash = $jc(_$hash, autoAcceptSharedAttachments.hashCode);
    _$hash = $jc(_$hash, defaultRouteTableAssociation.hashCode);
    _$hash = $jc(_$hash, defaultRouteTablePropagation.hashCode);
    _$hash = $jc(_$hash, vpnEcmpSupport.hashCode);
    _$hash = $jc(_$hash, dnsSupport.hashCode);
    _$hash = $jc(_$hash, multicastSupport.hashCode);
    _$hash = $jc(_$hash, transitGatewayCidrBlocks.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TransitGatewayRequestOptionsBuilder
    implements
        Builder<TransitGatewayRequestOptions,
            TransitGatewayRequestOptionsBuilder> {
  _$TransitGatewayRequestOptions? _$v;

  _i2.Int64? _amazonSideAsn;
  _i2.Int64? get amazonSideAsn => _$this._amazonSideAsn;
  set amazonSideAsn(_i2.Int64? amazonSideAsn) =>
      _$this._amazonSideAsn = amazonSideAsn;

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

  _i5.DefaultRouteTablePropagationValue? _defaultRouteTablePropagation;
  _i5.DefaultRouteTablePropagationValue? get defaultRouteTablePropagation =>
      _$this._defaultRouteTablePropagation;
  set defaultRouteTablePropagation(
          _i5.DefaultRouteTablePropagationValue?
              defaultRouteTablePropagation) =>
      _$this._defaultRouteTablePropagation = defaultRouteTablePropagation;

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

  _i9.ListBuilder<String>? _transitGatewayCidrBlocks;
  _i9.ListBuilder<String> get transitGatewayCidrBlocks =>
      _$this._transitGatewayCidrBlocks ??= new _i9.ListBuilder<String>();
  set transitGatewayCidrBlocks(
          _i9.ListBuilder<String>? transitGatewayCidrBlocks) =>
      _$this._transitGatewayCidrBlocks = transitGatewayCidrBlocks;

  TransitGatewayRequestOptionsBuilder() {
    TransitGatewayRequestOptions._init(this);
  }

  TransitGatewayRequestOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _amazonSideAsn = $v.amazonSideAsn;
      _autoAcceptSharedAttachments = $v.autoAcceptSharedAttachments;
      _defaultRouteTableAssociation = $v.defaultRouteTableAssociation;
      _defaultRouteTablePropagation = $v.defaultRouteTablePropagation;
      _vpnEcmpSupport = $v.vpnEcmpSupport;
      _dnsSupport = $v.dnsSupport;
      _multicastSupport = $v.multicastSupport;
      _transitGatewayCidrBlocks = $v.transitGatewayCidrBlocks?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransitGatewayRequestOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransitGatewayRequestOptions;
  }

  @override
  void update(void Function(TransitGatewayRequestOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransitGatewayRequestOptions build() => _build();

  _$TransitGatewayRequestOptions _build() {
    _$TransitGatewayRequestOptions _$result;
    try {
      _$result = _$v ??
          new _$TransitGatewayRequestOptions._(
              amazonSideAsn: BuiltValueNullFieldError.checkNotNull(
                  amazonSideAsn,
                  r'TransitGatewayRequestOptions',
                  'amazonSideAsn'),
              autoAcceptSharedAttachments: autoAcceptSharedAttachments,
              defaultRouteTableAssociation: defaultRouteTableAssociation,
              defaultRouteTablePropagation: defaultRouteTablePropagation,
              vpnEcmpSupport: vpnEcmpSupport,
              dnsSupport: dnsSupport,
              multicastSupport: multicastSupport,
              transitGatewayCidrBlocks: _transitGatewayCidrBlocks?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transitGatewayCidrBlocks';
        _transitGatewayCidrBlocks?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TransitGatewayRequestOptions', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
