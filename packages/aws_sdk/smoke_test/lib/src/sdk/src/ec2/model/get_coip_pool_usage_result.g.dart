// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.get_coip_pool_usage_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetCoipPoolUsageResult extends GetCoipPoolUsageResult {
  @override
  final String? coipPoolId;
  @override
  final _i3.BuiltList<_i2.CoipAddressUsage>? coipAddressUsages;
  @override
  final String? localGatewayRouteTableId;

  factory _$GetCoipPoolUsageResult(
          [void Function(GetCoipPoolUsageResultBuilder)? updates]) =>
      (new GetCoipPoolUsageResultBuilder()..update(updates))._build();

  _$GetCoipPoolUsageResult._(
      {this.coipPoolId, this.coipAddressUsages, this.localGatewayRouteTableId})
      : super._();

  @override
  GetCoipPoolUsageResult rebuild(
          void Function(GetCoipPoolUsageResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetCoipPoolUsageResultBuilder toBuilder() =>
      new GetCoipPoolUsageResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetCoipPoolUsageResult &&
        coipPoolId == other.coipPoolId &&
        coipAddressUsages == other.coipAddressUsages &&
        localGatewayRouteTableId == other.localGatewayRouteTableId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, coipPoolId.hashCode);
    _$hash = $jc(_$hash, coipAddressUsages.hashCode);
    _$hash = $jc(_$hash, localGatewayRouteTableId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetCoipPoolUsageResultBuilder
    implements Builder<GetCoipPoolUsageResult, GetCoipPoolUsageResultBuilder> {
  _$GetCoipPoolUsageResult? _$v;

  String? _coipPoolId;
  String? get coipPoolId => _$this._coipPoolId;
  set coipPoolId(String? coipPoolId) => _$this._coipPoolId = coipPoolId;

  _i3.ListBuilder<_i2.CoipAddressUsage>? _coipAddressUsages;
  _i3.ListBuilder<_i2.CoipAddressUsage> get coipAddressUsages =>
      _$this._coipAddressUsages ??= new _i3.ListBuilder<_i2.CoipAddressUsage>();
  set coipAddressUsages(
          _i3.ListBuilder<_i2.CoipAddressUsage>? coipAddressUsages) =>
      _$this._coipAddressUsages = coipAddressUsages;

  String? _localGatewayRouteTableId;
  String? get localGatewayRouteTableId => _$this._localGatewayRouteTableId;
  set localGatewayRouteTableId(String? localGatewayRouteTableId) =>
      _$this._localGatewayRouteTableId = localGatewayRouteTableId;

  GetCoipPoolUsageResultBuilder() {
    GetCoipPoolUsageResult._init(this);
  }

  GetCoipPoolUsageResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _coipPoolId = $v.coipPoolId;
      _coipAddressUsages = $v.coipAddressUsages?.toBuilder();
      _localGatewayRouteTableId = $v.localGatewayRouteTableId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetCoipPoolUsageResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetCoipPoolUsageResult;
  }

  @override
  void update(void Function(GetCoipPoolUsageResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetCoipPoolUsageResult build() => _build();

  _$GetCoipPoolUsageResult _build() {
    _$GetCoipPoolUsageResult _$result;
    try {
      _$result = _$v ??
          new _$GetCoipPoolUsageResult._(
              coipPoolId: coipPoolId,
              coipAddressUsages: _coipAddressUsages?.build(),
              localGatewayRouteTableId: localGatewayRouteTableId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'coipAddressUsages';
        _coipAddressUsages?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetCoipPoolUsageResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
