// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.modify_transit_gateway_options;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyTransitGatewayOptions extends ModifyTransitGatewayOptions {
  @override
  final _i8.BuiltList<String>? addTransitGatewayCidrBlocks;
  @override
  final _i8.BuiltList<String>? removeTransitGatewayCidrBlocks;
  @override
  final _i2.VpnEcmpSupportValue? vpnEcmpSupport;
  @override
  final _i3.DnsSupportValue? dnsSupport;
  @override
  final _i4.AutoAcceptSharedAttachmentsValue? autoAcceptSharedAttachments;
  @override
  final _i5.DefaultRouteTableAssociationValue? defaultRouteTableAssociation;
  @override
  final String? associationDefaultRouteTableId;
  @override
  final _i6.DefaultRouteTablePropagationValue? defaultRouteTablePropagation;
  @override
  final String? propagationDefaultRouteTableId;
  @override
  final _i7.Int64 amazonSideAsn;

  factory _$ModifyTransitGatewayOptions(
          [void Function(ModifyTransitGatewayOptionsBuilder)? updates]) =>
      (new ModifyTransitGatewayOptionsBuilder()..update(updates))._build();

  _$ModifyTransitGatewayOptions._(
      {this.addTransitGatewayCidrBlocks,
      this.removeTransitGatewayCidrBlocks,
      this.vpnEcmpSupport,
      this.dnsSupport,
      this.autoAcceptSharedAttachments,
      this.defaultRouteTableAssociation,
      this.associationDefaultRouteTableId,
      this.defaultRouteTablePropagation,
      this.propagationDefaultRouteTableId,
      required this.amazonSideAsn})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        amazonSideAsn, r'ModifyTransitGatewayOptions', 'amazonSideAsn');
  }

  @override
  ModifyTransitGatewayOptions rebuild(
          void Function(ModifyTransitGatewayOptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyTransitGatewayOptionsBuilder toBuilder() =>
      new ModifyTransitGatewayOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyTransitGatewayOptions &&
        addTransitGatewayCidrBlocks == other.addTransitGatewayCidrBlocks &&
        removeTransitGatewayCidrBlocks ==
            other.removeTransitGatewayCidrBlocks &&
        vpnEcmpSupport == other.vpnEcmpSupport &&
        dnsSupport == other.dnsSupport &&
        autoAcceptSharedAttachments == other.autoAcceptSharedAttachments &&
        defaultRouteTableAssociation == other.defaultRouteTableAssociation &&
        associationDefaultRouteTableId ==
            other.associationDefaultRouteTableId &&
        defaultRouteTablePropagation == other.defaultRouteTablePropagation &&
        propagationDefaultRouteTableId ==
            other.propagationDefaultRouteTableId &&
        amazonSideAsn == other.amazonSideAsn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, addTransitGatewayCidrBlocks.hashCode);
    _$hash = $jc(_$hash, removeTransitGatewayCidrBlocks.hashCode);
    _$hash = $jc(_$hash, vpnEcmpSupport.hashCode);
    _$hash = $jc(_$hash, dnsSupport.hashCode);
    _$hash = $jc(_$hash, autoAcceptSharedAttachments.hashCode);
    _$hash = $jc(_$hash, defaultRouteTableAssociation.hashCode);
    _$hash = $jc(_$hash, associationDefaultRouteTableId.hashCode);
    _$hash = $jc(_$hash, defaultRouteTablePropagation.hashCode);
    _$hash = $jc(_$hash, propagationDefaultRouteTableId.hashCode);
    _$hash = $jc(_$hash, amazonSideAsn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyTransitGatewayOptionsBuilder
    implements
        Builder<ModifyTransitGatewayOptions,
            ModifyTransitGatewayOptionsBuilder> {
  _$ModifyTransitGatewayOptions? _$v;

  _i8.ListBuilder<String>? _addTransitGatewayCidrBlocks;
  _i8.ListBuilder<String> get addTransitGatewayCidrBlocks =>
      _$this._addTransitGatewayCidrBlocks ??= new _i8.ListBuilder<String>();
  set addTransitGatewayCidrBlocks(
          _i8.ListBuilder<String>? addTransitGatewayCidrBlocks) =>
      _$this._addTransitGatewayCidrBlocks = addTransitGatewayCidrBlocks;

  _i8.ListBuilder<String>? _removeTransitGatewayCidrBlocks;
  _i8.ListBuilder<String> get removeTransitGatewayCidrBlocks =>
      _$this._removeTransitGatewayCidrBlocks ??= new _i8.ListBuilder<String>();
  set removeTransitGatewayCidrBlocks(
          _i8.ListBuilder<String>? removeTransitGatewayCidrBlocks) =>
      _$this._removeTransitGatewayCidrBlocks = removeTransitGatewayCidrBlocks;

  _i2.VpnEcmpSupportValue? _vpnEcmpSupport;
  _i2.VpnEcmpSupportValue? get vpnEcmpSupport => _$this._vpnEcmpSupport;
  set vpnEcmpSupport(_i2.VpnEcmpSupportValue? vpnEcmpSupport) =>
      _$this._vpnEcmpSupport = vpnEcmpSupport;

  _i3.DnsSupportValue? _dnsSupport;
  _i3.DnsSupportValue? get dnsSupport => _$this._dnsSupport;
  set dnsSupport(_i3.DnsSupportValue? dnsSupport) =>
      _$this._dnsSupport = dnsSupport;

  _i4.AutoAcceptSharedAttachmentsValue? _autoAcceptSharedAttachments;
  _i4.AutoAcceptSharedAttachmentsValue? get autoAcceptSharedAttachments =>
      _$this._autoAcceptSharedAttachments;
  set autoAcceptSharedAttachments(
          _i4.AutoAcceptSharedAttachmentsValue? autoAcceptSharedAttachments) =>
      _$this._autoAcceptSharedAttachments = autoAcceptSharedAttachments;

  _i5.DefaultRouteTableAssociationValue? _defaultRouteTableAssociation;
  _i5.DefaultRouteTableAssociationValue? get defaultRouteTableAssociation =>
      _$this._defaultRouteTableAssociation;
  set defaultRouteTableAssociation(
          _i5.DefaultRouteTableAssociationValue?
              defaultRouteTableAssociation) =>
      _$this._defaultRouteTableAssociation = defaultRouteTableAssociation;

  String? _associationDefaultRouteTableId;
  String? get associationDefaultRouteTableId =>
      _$this._associationDefaultRouteTableId;
  set associationDefaultRouteTableId(String? associationDefaultRouteTableId) =>
      _$this._associationDefaultRouteTableId = associationDefaultRouteTableId;

  _i6.DefaultRouteTablePropagationValue? _defaultRouteTablePropagation;
  _i6.DefaultRouteTablePropagationValue? get defaultRouteTablePropagation =>
      _$this._defaultRouteTablePropagation;
  set defaultRouteTablePropagation(
          _i6.DefaultRouteTablePropagationValue?
              defaultRouteTablePropagation) =>
      _$this._defaultRouteTablePropagation = defaultRouteTablePropagation;

  String? _propagationDefaultRouteTableId;
  String? get propagationDefaultRouteTableId =>
      _$this._propagationDefaultRouteTableId;
  set propagationDefaultRouteTableId(String? propagationDefaultRouteTableId) =>
      _$this._propagationDefaultRouteTableId = propagationDefaultRouteTableId;

  _i7.Int64? _amazonSideAsn;
  _i7.Int64? get amazonSideAsn => _$this._amazonSideAsn;
  set amazonSideAsn(_i7.Int64? amazonSideAsn) =>
      _$this._amazonSideAsn = amazonSideAsn;

  ModifyTransitGatewayOptionsBuilder() {
    ModifyTransitGatewayOptions._init(this);
  }

  ModifyTransitGatewayOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _addTransitGatewayCidrBlocks =
          $v.addTransitGatewayCidrBlocks?.toBuilder();
      _removeTransitGatewayCidrBlocks =
          $v.removeTransitGatewayCidrBlocks?.toBuilder();
      _vpnEcmpSupport = $v.vpnEcmpSupport;
      _dnsSupport = $v.dnsSupport;
      _autoAcceptSharedAttachments = $v.autoAcceptSharedAttachments;
      _defaultRouteTableAssociation = $v.defaultRouteTableAssociation;
      _associationDefaultRouteTableId = $v.associationDefaultRouteTableId;
      _defaultRouteTablePropagation = $v.defaultRouteTablePropagation;
      _propagationDefaultRouteTableId = $v.propagationDefaultRouteTableId;
      _amazonSideAsn = $v.amazonSideAsn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyTransitGatewayOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyTransitGatewayOptions;
  }

  @override
  void update(void Function(ModifyTransitGatewayOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyTransitGatewayOptions build() => _build();

  _$ModifyTransitGatewayOptions _build() {
    _$ModifyTransitGatewayOptions _$result;
    try {
      _$result = _$v ??
          new _$ModifyTransitGatewayOptions._(
              addTransitGatewayCidrBlocks:
                  _addTransitGatewayCidrBlocks?.build(),
              removeTransitGatewayCidrBlocks:
                  _removeTransitGatewayCidrBlocks?.build(),
              vpnEcmpSupport: vpnEcmpSupport,
              dnsSupport: dnsSupport,
              autoAcceptSharedAttachments: autoAcceptSharedAttachments,
              defaultRouteTableAssociation: defaultRouteTableAssociation,
              associationDefaultRouteTableId: associationDefaultRouteTableId,
              defaultRouteTablePropagation: defaultRouteTablePropagation,
              propagationDefaultRouteTableId: propagationDefaultRouteTableId,
              amazonSideAsn: BuiltValueNullFieldError.checkNotNull(
                  amazonSideAsn,
                  r'ModifyTransitGatewayOptions',
                  'amazonSideAsn'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'addTransitGatewayCidrBlocks';
        _addTransitGatewayCidrBlocks?.build();
        _$failedField = 'removeTransitGatewayCidrBlocks';
        _removeTransitGatewayCidrBlocks?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyTransitGatewayOptions', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
