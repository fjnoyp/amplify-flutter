// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.describe_vpn_gateways_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeVpnGatewaysRequest extends DescribeVpnGatewaysRequest {
  @override
  final _i4.BuiltList<_i3.Filter>? filters;
  @override
  final _i4.BuiltList<String>? vpnGatewayIds;
  @override
  final bool dryRun;

  factory _$DescribeVpnGatewaysRequest(
          [void Function(DescribeVpnGatewaysRequestBuilder)? updates]) =>
      (new DescribeVpnGatewaysRequestBuilder()..update(updates))._build();

  _$DescribeVpnGatewaysRequest._(
      {this.filters, this.vpnGatewayIds, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeVpnGatewaysRequest', 'dryRun');
  }

  @override
  DescribeVpnGatewaysRequest rebuild(
          void Function(DescribeVpnGatewaysRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeVpnGatewaysRequestBuilder toBuilder() =>
      new DescribeVpnGatewaysRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeVpnGatewaysRequest &&
        filters == other.filters &&
        vpnGatewayIds == other.vpnGatewayIds &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, vpnGatewayIds.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeVpnGatewaysRequestBuilder
    implements
        Builder<DescribeVpnGatewaysRequest, DescribeVpnGatewaysRequestBuilder> {
  _$DescribeVpnGatewaysRequest? _$v;

  _i4.ListBuilder<_i3.Filter>? _filters;
  _i4.ListBuilder<_i3.Filter> get filters =>
      _$this._filters ??= new _i4.ListBuilder<_i3.Filter>();
  set filters(_i4.ListBuilder<_i3.Filter>? filters) =>
      _$this._filters = filters;

  _i4.ListBuilder<String>? _vpnGatewayIds;
  _i4.ListBuilder<String> get vpnGatewayIds =>
      _$this._vpnGatewayIds ??= new _i4.ListBuilder<String>();
  set vpnGatewayIds(_i4.ListBuilder<String>? vpnGatewayIds) =>
      _$this._vpnGatewayIds = vpnGatewayIds;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DescribeVpnGatewaysRequestBuilder() {
    DescribeVpnGatewaysRequest._init(this);
  }

  DescribeVpnGatewaysRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filters = $v.filters?.toBuilder();
      _vpnGatewayIds = $v.vpnGatewayIds?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeVpnGatewaysRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeVpnGatewaysRequest;
  }

  @override
  void update(void Function(DescribeVpnGatewaysRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeVpnGatewaysRequest build() => _build();

  _$DescribeVpnGatewaysRequest _build() {
    _$DescribeVpnGatewaysRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeVpnGatewaysRequest._(
              filters: _filters?.build(),
              vpnGatewayIds: _vpnGatewayIds?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeVpnGatewaysRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
        _$failedField = 'vpnGatewayIds';
        _vpnGatewayIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeVpnGatewaysRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
