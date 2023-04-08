// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.create_transit_gateway_route_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateTransitGatewayRouteResult
    extends CreateTransitGatewayRouteResult {
  @override
  final _i2.TransitGatewayRoute? route;

  factory _$CreateTransitGatewayRouteResult(
          [void Function(CreateTransitGatewayRouteResultBuilder)? updates]) =>
      (new CreateTransitGatewayRouteResultBuilder()..update(updates))._build();

  _$CreateTransitGatewayRouteResult._({this.route}) : super._();

  @override
  CreateTransitGatewayRouteResult rebuild(
          void Function(CreateTransitGatewayRouteResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateTransitGatewayRouteResultBuilder toBuilder() =>
      new CreateTransitGatewayRouteResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateTransitGatewayRouteResult && route == other.route;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, route.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateTransitGatewayRouteResultBuilder
    implements
        Builder<CreateTransitGatewayRouteResult,
            CreateTransitGatewayRouteResultBuilder> {
  _$CreateTransitGatewayRouteResult? _$v;

  _i2.TransitGatewayRouteBuilder? _route;
  _i2.TransitGatewayRouteBuilder get route =>
      _$this._route ??= new _i2.TransitGatewayRouteBuilder();
  set route(_i2.TransitGatewayRouteBuilder? route) => _$this._route = route;

  CreateTransitGatewayRouteResultBuilder() {
    CreateTransitGatewayRouteResult._init(this);
  }

  CreateTransitGatewayRouteResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _route = $v.route?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateTransitGatewayRouteResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateTransitGatewayRouteResult;
  }

  @override
  void update(void Function(CreateTransitGatewayRouteResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateTransitGatewayRouteResult build() => _build();

  _$CreateTransitGatewayRouteResult _build() {
    _$CreateTransitGatewayRouteResult _$result;
    try {
      _$result = _$v ??
          new _$CreateTransitGatewayRouteResult._(route: _route?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'route';
        _route?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateTransitGatewayRouteResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
