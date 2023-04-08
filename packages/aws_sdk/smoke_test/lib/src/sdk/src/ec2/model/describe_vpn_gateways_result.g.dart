// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.describe_vpn_gateways_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeVpnGatewaysResult extends DescribeVpnGatewaysResult {
  @override
  final _i3.BuiltList<_i2.VpnGateway>? vpnGateways;

  factory _$DescribeVpnGatewaysResult(
          [void Function(DescribeVpnGatewaysResultBuilder)? updates]) =>
      (new DescribeVpnGatewaysResultBuilder()..update(updates))._build();

  _$DescribeVpnGatewaysResult._({this.vpnGateways}) : super._();

  @override
  DescribeVpnGatewaysResult rebuild(
          void Function(DescribeVpnGatewaysResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeVpnGatewaysResultBuilder toBuilder() =>
      new DescribeVpnGatewaysResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeVpnGatewaysResult &&
        vpnGateways == other.vpnGateways;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vpnGateways.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeVpnGatewaysResultBuilder
    implements
        Builder<DescribeVpnGatewaysResult, DescribeVpnGatewaysResultBuilder> {
  _$DescribeVpnGatewaysResult? _$v;

  _i3.ListBuilder<_i2.VpnGateway>? _vpnGateways;
  _i3.ListBuilder<_i2.VpnGateway> get vpnGateways =>
      _$this._vpnGateways ??= new _i3.ListBuilder<_i2.VpnGateway>();
  set vpnGateways(_i3.ListBuilder<_i2.VpnGateway>? vpnGateways) =>
      _$this._vpnGateways = vpnGateways;

  DescribeVpnGatewaysResultBuilder() {
    DescribeVpnGatewaysResult._init(this);
  }

  DescribeVpnGatewaysResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vpnGateways = $v.vpnGateways?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeVpnGatewaysResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeVpnGatewaysResult;
  }

  @override
  void update(void Function(DescribeVpnGatewaysResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeVpnGatewaysResult build() => _build();

  _$DescribeVpnGatewaysResult _build() {
    _$DescribeVpnGatewaysResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeVpnGatewaysResult._(vpnGateways: _vpnGateways?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vpnGateways';
        _vpnGateways?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeVpnGatewaysResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
