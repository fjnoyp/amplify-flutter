// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.modify_local_gateway_route_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyLocalGatewayRouteResult extends ModifyLocalGatewayRouteResult {
  @override
  final _i2.LocalGatewayRoute? route;

  factory _$ModifyLocalGatewayRouteResult(
          [void Function(ModifyLocalGatewayRouteResultBuilder)? updates]) =>
      (new ModifyLocalGatewayRouteResultBuilder()..update(updates))._build();

  _$ModifyLocalGatewayRouteResult._({this.route}) : super._();

  @override
  ModifyLocalGatewayRouteResult rebuild(
          void Function(ModifyLocalGatewayRouteResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyLocalGatewayRouteResultBuilder toBuilder() =>
      new ModifyLocalGatewayRouteResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyLocalGatewayRouteResult && route == other.route;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, route.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyLocalGatewayRouteResultBuilder
    implements
        Builder<ModifyLocalGatewayRouteResult,
            ModifyLocalGatewayRouteResultBuilder> {
  _$ModifyLocalGatewayRouteResult? _$v;

  _i2.LocalGatewayRouteBuilder? _route;
  _i2.LocalGatewayRouteBuilder get route =>
      _$this._route ??= new _i2.LocalGatewayRouteBuilder();
  set route(_i2.LocalGatewayRouteBuilder? route) => _$this._route = route;

  ModifyLocalGatewayRouteResultBuilder() {
    ModifyLocalGatewayRouteResult._init(this);
  }

  ModifyLocalGatewayRouteResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _route = $v.route?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyLocalGatewayRouteResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyLocalGatewayRouteResult;
  }

  @override
  void update(void Function(ModifyLocalGatewayRouteResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyLocalGatewayRouteResult build() => _build();

  _$ModifyLocalGatewayRouteResult _build() {
    _$ModifyLocalGatewayRouteResult _$result;
    try {
      _$result =
          _$v ?? new _$ModifyLocalGatewayRouteResult._(route: _route?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'route';
        _route?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyLocalGatewayRouteResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
