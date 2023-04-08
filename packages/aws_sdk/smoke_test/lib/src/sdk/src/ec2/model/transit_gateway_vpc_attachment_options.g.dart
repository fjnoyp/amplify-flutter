// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.transit_gateway_vpc_attachment_options;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransitGatewayVpcAttachmentOptions
    extends TransitGatewayVpcAttachmentOptions {
  @override
  final _i2.DnsSupportValue? dnsSupport;
  @override
  final _i3.Ipv6SupportValue? ipv6Support;
  @override
  final _i4.ApplianceModeSupportValue? applianceModeSupport;

  factory _$TransitGatewayVpcAttachmentOptions(
          [void Function(TransitGatewayVpcAttachmentOptionsBuilder)?
              updates]) =>
      (new TransitGatewayVpcAttachmentOptionsBuilder()..update(updates))
          ._build();

  _$TransitGatewayVpcAttachmentOptions._(
      {this.dnsSupport, this.ipv6Support, this.applianceModeSupport})
      : super._();

  @override
  TransitGatewayVpcAttachmentOptions rebuild(
          void Function(TransitGatewayVpcAttachmentOptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransitGatewayVpcAttachmentOptionsBuilder toBuilder() =>
      new TransitGatewayVpcAttachmentOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransitGatewayVpcAttachmentOptions &&
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

class TransitGatewayVpcAttachmentOptionsBuilder
    implements
        Builder<TransitGatewayVpcAttachmentOptions,
            TransitGatewayVpcAttachmentOptionsBuilder> {
  _$TransitGatewayVpcAttachmentOptions? _$v;

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

  TransitGatewayVpcAttachmentOptionsBuilder() {
    TransitGatewayVpcAttachmentOptions._init(this);
  }

  TransitGatewayVpcAttachmentOptionsBuilder get _$this {
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
  void replace(TransitGatewayVpcAttachmentOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransitGatewayVpcAttachmentOptions;
  }

  @override
  void update(
      void Function(TransitGatewayVpcAttachmentOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransitGatewayVpcAttachmentOptions build() => _build();

  _$TransitGatewayVpcAttachmentOptions _build() {
    final _$result = _$v ??
        new _$TransitGatewayVpcAttachmentOptions._(
            dnsSupport: dnsSupport,
            ipv6Support: ipv6Support,
            applianceModeSupport: applianceModeSupport);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
