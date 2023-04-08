// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.modify_vpn_tunnel_options_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyVpnTunnelOptionsRequest extends ModifyVpnTunnelOptionsRequest {
  @override
  final String vpnConnectionId;
  @override
  final String vpnTunnelOutsideIpAddress;
  @override
  final _i3.ModifyVpnTunnelOptionsSpecification tunnelOptions;
  @override
  final bool dryRun;

  factory _$ModifyVpnTunnelOptionsRequest(
          [void Function(ModifyVpnTunnelOptionsRequestBuilder)? updates]) =>
      (new ModifyVpnTunnelOptionsRequestBuilder()..update(updates))._build();

  _$ModifyVpnTunnelOptionsRequest._(
      {required this.vpnConnectionId,
      required this.vpnTunnelOutsideIpAddress,
      required this.tunnelOptions,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vpnConnectionId, r'ModifyVpnTunnelOptionsRequest', 'vpnConnectionId');
    BuiltValueNullFieldError.checkNotNull(vpnTunnelOutsideIpAddress,
        r'ModifyVpnTunnelOptionsRequest', 'vpnTunnelOutsideIpAddress');
    BuiltValueNullFieldError.checkNotNull(
        tunnelOptions, r'ModifyVpnTunnelOptionsRequest', 'tunnelOptions');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ModifyVpnTunnelOptionsRequest', 'dryRun');
  }

  @override
  ModifyVpnTunnelOptionsRequest rebuild(
          void Function(ModifyVpnTunnelOptionsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyVpnTunnelOptionsRequestBuilder toBuilder() =>
      new ModifyVpnTunnelOptionsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyVpnTunnelOptionsRequest &&
        vpnConnectionId == other.vpnConnectionId &&
        vpnTunnelOutsideIpAddress == other.vpnTunnelOutsideIpAddress &&
        tunnelOptions == other.tunnelOptions &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vpnConnectionId.hashCode);
    _$hash = $jc(_$hash, vpnTunnelOutsideIpAddress.hashCode);
    _$hash = $jc(_$hash, tunnelOptions.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyVpnTunnelOptionsRequestBuilder
    implements
        Builder<ModifyVpnTunnelOptionsRequest,
            ModifyVpnTunnelOptionsRequestBuilder> {
  _$ModifyVpnTunnelOptionsRequest? _$v;

  String? _vpnConnectionId;
  String? get vpnConnectionId => _$this._vpnConnectionId;
  set vpnConnectionId(String? vpnConnectionId) =>
      _$this._vpnConnectionId = vpnConnectionId;

  String? _vpnTunnelOutsideIpAddress;
  String? get vpnTunnelOutsideIpAddress => _$this._vpnTunnelOutsideIpAddress;
  set vpnTunnelOutsideIpAddress(String? vpnTunnelOutsideIpAddress) =>
      _$this._vpnTunnelOutsideIpAddress = vpnTunnelOutsideIpAddress;

  _i3.ModifyVpnTunnelOptionsSpecificationBuilder? _tunnelOptions;
  _i3.ModifyVpnTunnelOptionsSpecificationBuilder get tunnelOptions =>
      _$this._tunnelOptions ??=
          new _i3.ModifyVpnTunnelOptionsSpecificationBuilder();
  set tunnelOptions(
          _i3.ModifyVpnTunnelOptionsSpecificationBuilder? tunnelOptions) =>
      _$this._tunnelOptions = tunnelOptions;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  ModifyVpnTunnelOptionsRequestBuilder() {
    ModifyVpnTunnelOptionsRequest._init(this);
  }

  ModifyVpnTunnelOptionsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vpnConnectionId = $v.vpnConnectionId;
      _vpnTunnelOutsideIpAddress = $v.vpnTunnelOutsideIpAddress;
      _tunnelOptions = $v.tunnelOptions.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyVpnTunnelOptionsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyVpnTunnelOptionsRequest;
  }

  @override
  void update(void Function(ModifyVpnTunnelOptionsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyVpnTunnelOptionsRequest build() => _build();

  _$ModifyVpnTunnelOptionsRequest _build() {
    _$ModifyVpnTunnelOptionsRequest _$result;
    try {
      _$result = _$v ??
          new _$ModifyVpnTunnelOptionsRequest._(
              vpnConnectionId: BuiltValueNullFieldError.checkNotNull(
                  vpnConnectionId,
                  r'ModifyVpnTunnelOptionsRequest',
                  'vpnConnectionId'),
              vpnTunnelOutsideIpAddress: BuiltValueNullFieldError.checkNotNull(
                  vpnTunnelOutsideIpAddress,
                  r'ModifyVpnTunnelOptionsRequest',
                  'vpnTunnelOutsideIpAddress'),
              tunnelOptions: tunnelOptions.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'ModifyVpnTunnelOptionsRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tunnelOptions';
        tunnelOptions.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyVpnTunnelOptionsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
