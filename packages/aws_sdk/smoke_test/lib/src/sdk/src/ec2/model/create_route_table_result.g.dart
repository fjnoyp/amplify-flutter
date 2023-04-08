// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.create_route_table_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateRouteTableResult extends CreateRouteTableResult {
  @override
  final _i2.RouteTable? routeTable;

  factory _$CreateRouteTableResult(
          [void Function(CreateRouteTableResultBuilder)? updates]) =>
      (new CreateRouteTableResultBuilder()..update(updates))._build();

  _$CreateRouteTableResult._({this.routeTable}) : super._();

  @override
  CreateRouteTableResult rebuild(
          void Function(CreateRouteTableResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateRouteTableResultBuilder toBuilder() =>
      new CreateRouteTableResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateRouteTableResult && routeTable == other.routeTable;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, routeTable.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateRouteTableResultBuilder
    implements Builder<CreateRouteTableResult, CreateRouteTableResultBuilder> {
  _$CreateRouteTableResult? _$v;

  _i2.RouteTableBuilder? _routeTable;
  _i2.RouteTableBuilder get routeTable =>
      _$this._routeTable ??= new _i2.RouteTableBuilder();
  set routeTable(_i2.RouteTableBuilder? routeTable) =>
      _$this._routeTable = routeTable;

  CreateRouteTableResultBuilder() {
    CreateRouteTableResult._init(this);
  }

  CreateRouteTableResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _routeTable = $v.routeTable?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateRouteTableResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateRouteTableResult;
  }

  @override
  void update(void Function(CreateRouteTableResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateRouteTableResult build() => _build();

  _$CreateRouteTableResult _build() {
    _$CreateRouteTableResult _$result;
    try {
      _$result = _$v ??
          new _$CreateRouteTableResult._(routeTable: _routeTable?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'routeTable';
        _routeTable?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateRouteTableResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
