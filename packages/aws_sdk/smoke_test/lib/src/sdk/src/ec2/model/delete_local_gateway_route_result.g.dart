// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.delete_local_gateway_route_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteLocalGatewayRouteResult extends DeleteLocalGatewayRouteResult {
  @override
  final _i2.LocalGatewayRoute? route;

  factory _$DeleteLocalGatewayRouteResult(
          [void Function(DeleteLocalGatewayRouteResultBuilder)? updates]) =>
      (new DeleteLocalGatewayRouteResultBuilder()..update(updates))._build();

  _$DeleteLocalGatewayRouteResult._({this.route}) : super._();

  @override
  DeleteLocalGatewayRouteResult rebuild(
          void Function(DeleteLocalGatewayRouteResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteLocalGatewayRouteResultBuilder toBuilder() =>
      new DeleteLocalGatewayRouteResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteLocalGatewayRouteResult && route == other.route;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, route.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteLocalGatewayRouteResultBuilder
    implements
        Builder<DeleteLocalGatewayRouteResult,
            DeleteLocalGatewayRouteResultBuilder> {
  _$DeleteLocalGatewayRouteResult? _$v;

  _i2.LocalGatewayRouteBuilder? _route;
  _i2.LocalGatewayRouteBuilder get route =>
      _$this._route ??= new _i2.LocalGatewayRouteBuilder();
  set route(_i2.LocalGatewayRouteBuilder? route) => _$this._route = route;

  DeleteLocalGatewayRouteResultBuilder() {
    DeleteLocalGatewayRouteResult._init(this);
  }

  DeleteLocalGatewayRouteResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _route = $v.route?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteLocalGatewayRouteResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteLocalGatewayRouteResult;
  }

  @override
  void update(void Function(DeleteLocalGatewayRouteResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteLocalGatewayRouteResult build() => _build();

  _$DeleteLocalGatewayRouteResult _build() {
    _$DeleteLocalGatewayRouteResult _$result;
    try {
      _$result =
          _$v ?? new _$DeleteLocalGatewayRouteResult._(route: _route?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'route';
        _route?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteLocalGatewayRouteResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
