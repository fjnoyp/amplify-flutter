// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.instance_market_options_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceMarketOptionsRequest extends InstanceMarketOptionsRequest {
  @override
  final _i2.MarketType? marketType;
  @override
  final _i3.SpotMarketOptions? spotOptions;

  factory _$InstanceMarketOptionsRequest(
          [void Function(InstanceMarketOptionsRequestBuilder)? updates]) =>
      (new InstanceMarketOptionsRequestBuilder()..update(updates))._build();

  _$InstanceMarketOptionsRequest._({this.marketType, this.spotOptions})
      : super._();

  @override
  InstanceMarketOptionsRequest rebuild(
          void Function(InstanceMarketOptionsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceMarketOptionsRequestBuilder toBuilder() =>
      new InstanceMarketOptionsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceMarketOptionsRequest &&
        marketType == other.marketType &&
        spotOptions == other.spotOptions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, marketType.hashCode);
    _$hash = $jc(_$hash, spotOptions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InstanceMarketOptionsRequestBuilder
    implements
        Builder<InstanceMarketOptionsRequest,
            InstanceMarketOptionsRequestBuilder> {
  _$InstanceMarketOptionsRequest? _$v;

  _i2.MarketType? _marketType;
  _i2.MarketType? get marketType => _$this._marketType;
  set marketType(_i2.MarketType? marketType) => _$this._marketType = marketType;

  _i3.SpotMarketOptionsBuilder? _spotOptions;
  _i3.SpotMarketOptionsBuilder get spotOptions =>
      _$this._spotOptions ??= new _i3.SpotMarketOptionsBuilder();
  set spotOptions(_i3.SpotMarketOptionsBuilder? spotOptions) =>
      _$this._spotOptions = spotOptions;

  InstanceMarketOptionsRequestBuilder() {
    InstanceMarketOptionsRequest._init(this);
  }

  InstanceMarketOptionsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _marketType = $v.marketType;
      _spotOptions = $v.spotOptions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceMarketOptionsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InstanceMarketOptionsRequest;
  }

  @override
  void update(void Function(InstanceMarketOptionsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceMarketOptionsRequest build() => _build();

  _$InstanceMarketOptionsRequest _build() {
    _$InstanceMarketOptionsRequest _$result;
    try {
      _$result = _$v ??
          new _$InstanceMarketOptionsRequest._(
              marketType: marketType, spotOptions: _spotOptions?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'spotOptions';
        _spotOptions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'InstanceMarketOptionsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
