// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.modify_transit_gateway_vpc_attachment_request_options;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyTransitGatewayVpcAttachmentRequestOptions
    extends ModifyTransitGatewayVpcAttachmentRequestOptions {
  @override
  final _i2.DnsSupportValue? dnsSupport;
  @override
  final _i3.Ipv6SupportValue? ipv6Support;
  @override
  final _i4.ApplianceModeSupportValue? applianceModeSupport;

  factory _$ModifyTransitGatewayVpcAttachmentRequestOptions(
          [void Function(
                  ModifyTransitGatewayVpcAttachmentRequestOptionsBuilder)?
              updates]) =>
      (new ModifyTransitGatewayVpcAttachmentRequestOptionsBuilder()
            ..update(updates))
          ._build();

  _$ModifyTransitGatewayVpcAttachmentRequestOptions._(
      {this.dnsSupport, this.ipv6Support, this.applianceModeSupport})
      : super._();

  @override
  ModifyTransitGatewayVpcAttachmentRequestOptions rebuild(
          void Function(ModifyTransitGatewayVpcAttachmentRequestOptionsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyTransitGatewayVpcAttachmentRequestOptionsBuilder toBuilder() =>
      new ModifyTransitGatewayVpcAttachmentRequestOptionsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyTransitGatewayVpcAttachmentRequestOptions &&
        dnsSupport == other.dnsSupport &&
        ipv6Support == other.ipv6Support &&
        applianceModeSupport == other.applianceModeSupport;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dnsSupport.hashCode);
    _$hash = $jc(_$hash, ipv6Support.hashCode);
    _$hash = $jc(_$hash, applianceModeSupport.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyTransitGatewayVpcAttachmentRequestOptionsBuilder
    implements
        Builder<ModifyTransitGatewayVpcAttachmentRequestOptions,
            ModifyTransitGatewayVpcAttachmentRequestOptionsBuilder> {
  _$ModifyTransitGatewayVpcAttachmentRequestOptions? _$v;

  _i2.DnsSupportValue? _dnsSupport;
  _i2.DnsSupportValue? get dnsSupport => _$this._dnsSupport;
  set dnsSupport(_i2.DnsSupportValue? dnsSupport) =>
      _$this._dnsSupport = dnsSupport;

  _i3.Ipv6SupportValue? _ipv6Support;
  _i3.Ipv6SupportValue? get ipv6Support => _$this._ipv6Support;
  set ipv6Support(_i3.Ipv6SupportValue? ipv6Support) =>
      _$this._ipv6Support = ipv6Support;

  _i4.ApplianceModeSupportValue? _applianceModeSupport;
  _i4.ApplianceModeSupportValue? get applianceModeSupport =>
      _$this._applianceModeSupport;
  set applianceModeSupport(
          _i4.ApplianceModeSupportValue? applianceModeSupport) =>
      _$this._applianceModeSupport = applianceModeSupport;

  ModifyTransitGatewayVpcAttachmentRequestOptionsBuilder() {
    ModifyTransitGatewayVpcAttachmentRequestOptions._init(this);
  }

  ModifyTransitGatewayVpcAttachmentRequestOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dnsSupport = $v.dnsSupport;
      _ipv6Support = $v.ipv6Support;
      _applianceModeSupport = $v.applianceModeSupport;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyTransitGatewayVpcAttachmentRequestOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyTransitGatewayVpcAttachmentRequestOptions;
  }

  @override
  void update(
      void Function(ModifyTransitGatewayVpcAttachmentRequestOptionsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyTransitGatewayVpcAttachmentRequestOptions build() => _build();

  _$ModifyTransitGatewayVpcAttachmentRequestOptions _build() {
    final _$result = _$v ??
        new _$ModifyTransitGatewayVpcAttachmentRequestOptions._(
            dnsSupport: dnsSupport,
            ipv6Support: ipv6Support,
            applianceModeSupport: applianceModeSupport);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
