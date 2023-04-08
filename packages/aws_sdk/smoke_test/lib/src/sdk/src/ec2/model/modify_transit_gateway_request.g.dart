// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.modify_transit_gateway_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyTransitGatewayRequest extends ModifyTransitGatewayRequest {
  @override
  final String transitGatewayId;
  @override
  final String? description;
  @override
  final _i3.ModifyTransitGatewayOptions? options;
  @override
  final bool dryRun;

  factory _$ModifyTransitGatewayRequest(
          [void Function(ModifyTransitGatewayRequestBuilder)? updates]) =>
      (new ModifyTransitGatewayRequestBuilder()..update(updates))._build();

  _$ModifyTransitGatewayRequest._(
      {required this.transitGatewayId,
      this.description,
      this.options,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        transitGatewayId, r'ModifyTransitGatewayRequest', 'transitGatewayId');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ModifyTransitGatewayRequest', 'dryRun');
  }

  @override
  ModifyTransitGatewayRequest rebuild(
          void Function(ModifyTransitGatewayRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyTransitGatewayRequestBuilder toBuilder() =>
      new ModifyTransitGatewayRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyTransitGatewayRequest &&
        transitGatewayId == other.transitGatewayId &&
        description == other.description &&
        options == other.options &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayId.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, options.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyTransitGatewayRequestBuilder
    implements
        Builder<ModifyTransitGatewayRequest,
            ModifyTransitGatewayRequestBuilder> {
  _$ModifyTransitGatewayRequest? _$v;

  String? _transitGatewayId;
  String? get transitGatewayId => _$this._transitGatewayId;
  set transitGatewayId(String? transitGatewayId) =>
      _$this._transitGatewayId = transitGatewayId;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  _i3.ModifyTransitGatewayOptionsBuilder? _options;
  _i3.ModifyTransitGatewayOptionsBuilder get options =>
      _$this._options ??= new _i3.ModifyTransitGatewayOptionsBuilder();
  set options(_i3.ModifyTransitGatewayOptionsBuilder? options) =>
      _$this._options = options;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  ModifyTransitGatewayRequestBuilder() {
    ModifyTransitGatewayRequest._init(this);
  }

  ModifyTransitGatewayRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayId = $v.transitGatewayId;
      _description = $v.description;
      _options = $v.options?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyTransitGatewayRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyTransitGatewayRequest;
  }

  @override
  void update(void Function(ModifyTransitGatewayRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyTransitGatewayRequest build() => _build();

  _$ModifyTransitGatewayRequest _build() {
    _$ModifyTransitGatewayRequest _$result;
    try {
      _$result = _$v ??
          new _$ModifyTransitGatewayRequest._(
              transitGatewayId: BuiltValueNullFieldError.checkNotNull(
                  transitGatewayId,
                  r'ModifyTransitGatewayRequest',
                  'transitGatewayId'),
              description: description,
              options: _options?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'ModifyTransitGatewayRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'options';
        _options?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyTransitGatewayRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
