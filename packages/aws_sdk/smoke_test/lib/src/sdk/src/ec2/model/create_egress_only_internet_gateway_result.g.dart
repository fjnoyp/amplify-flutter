// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.create_egress_only_internet_gateway_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateEgressOnlyInternetGatewayResult
    extends CreateEgressOnlyInternetGatewayResult {
  @override
  final String? clientToken;
  @override
  final _i2.EgressOnlyInternetGateway? egressOnlyInternetGateway;

  factory _$CreateEgressOnlyInternetGatewayResult(
          [void Function(CreateEgressOnlyInternetGatewayResultBuilder)?
              updates]) =>
      (new CreateEgressOnlyInternetGatewayResultBuilder()..update(updates))
          ._build();

  _$CreateEgressOnlyInternetGatewayResult._(
      {this.clientToken, this.egressOnlyInternetGateway})
      : super._();

  @override
  CreateEgressOnlyInternetGatewayResult rebuild(
          void Function(CreateEgressOnlyInternetGatewayResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateEgressOnlyInternetGatewayResultBuilder toBuilder() =>
      new CreateEgressOnlyInternetGatewayResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateEgressOnlyInternetGatewayResult &&
        clientToken == other.clientToken &&
        egressOnlyInternetGateway == other.egressOnlyInternetGateway;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, egressOnlyInternetGateway.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateEgressOnlyInternetGatewayResultBuilder
    implements
        Builder<CreateEgressOnlyInternetGatewayResult,
            CreateEgressOnlyInternetGatewayResultBuilder> {
  _$CreateEgressOnlyInternetGatewayResult? _$v;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  _i2.EgressOnlyInternetGatewayBuilder? _egressOnlyInternetGateway;
  _i2.EgressOnlyInternetGatewayBuilder get egressOnlyInternetGateway =>
      _$this._egressOnlyInternetGateway ??=
          new _i2.EgressOnlyInternetGatewayBuilder();
  set egressOnlyInternetGateway(
          _i2.EgressOnlyInternetGatewayBuilder? egressOnlyInternetGateway) =>
      _$this._egressOnlyInternetGateway = egressOnlyInternetGateway;

  CreateEgressOnlyInternetGatewayResultBuilder() {
    CreateEgressOnlyInternetGatewayResult._init(this);
  }

  CreateEgressOnlyInternetGatewayResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientToken = $v.clientToken;
      _egressOnlyInternetGateway = $v.egressOnlyInternetGateway?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateEgressOnlyInternetGatewayResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateEgressOnlyInternetGatewayResult;
  }

  @override
  void update(
      void Function(CreateEgressOnlyInternetGatewayResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateEgressOnlyInternetGatewayResult build() => _build();

  _$CreateEgressOnlyInternetGatewayResult _build() {
    _$CreateEgressOnlyInternetGatewayResult _$result;
    try {
      _$result = _$v ??
          new _$CreateEgressOnlyInternetGatewayResult._(
              clientToken: clientToken,
              egressOnlyInternetGateway: _egressOnlyInternetGateway?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'egressOnlyInternetGateway';
        _egressOnlyInternetGateway?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateEgressOnlyInternetGatewayResult',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
