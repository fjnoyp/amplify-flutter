// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.create_local_gateway_route_table_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateLocalGatewayRouteTableResult
    extends CreateLocalGatewayRouteTableResult {
  @override
  final _i2.LocalGatewayRouteTable? localGatewayRouteTable;

  factory _$CreateLocalGatewayRouteTableResult(
          [void Function(CreateLocalGatewayRouteTableResultBuilder)?
              updates]) =>
      (new CreateLocalGatewayRouteTableResultBuilder()..update(updates))
          ._build();

  _$CreateLocalGatewayRouteTableResult._({this.localGatewayRouteTable})
      : super._();

  @override
  CreateLocalGatewayRouteTableResult rebuild(
          void Function(CreateLocalGatewayRouteTableResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateLocalGatewayRouteTableResultBuilder toBuilder() =>
      new CreateLocalGatewayRouteTableResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateLocalGatewayRouteTableResult &&
        localGatewayRouteTable == other.localGatewayRouteTable;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, localGatewayRouteTable.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateLocalGatewayRouteTableResultBuilder
    implements
        Builder<CreateLocalGatewayRouteTableResult,
            CreateLocalGatewayRouteTableResultBuilder> {
  _$CreateLocalGatewayRouteTableResult? _$v;

  _i2.LocalGatewayRouteTableBuilder? _localGatewayRouteTable;
  _i2.LocalGatewayRouteTableBuilder get localGatewayRouteTable =>
      _$this._localGatewayRouteTable ??=
          new _i2.LocalGatewayRouteTableBuilder();
  set localGatewayRouteTable(
          _i2.LocalGatewayRouteTableBuilder? localGatewayRouteTable) =>
      _$this._localGatewayRouteTable = localGatewayRouteTable;

  CreateLocalGatewayRouteTableResultBuilder() {
    CreateLocalGatewayRouteTableResult._init(this);
  }

  CreateLocalGatewayRouteTableResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _localGatewayRouteTable = $v.localGatewayRouteTable?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateLocalGatewayRouteTableResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateLocalGatewayRouteTableResult;
  }

  @override
  void update(
      void Function(CreateLocalGatewayRouteTableResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateLocalGatewayRouteTableResult build() => _build();

  _$CreateLocalGatewayRouteTableResult _build() {
    _$CreateLocalGatewayRouteTableResult _$result;
    try {
      _$result = _$v ??
          new _$CreateLocalGatewayRouteTableResult._(
              localGatewayRouteTable: _localGatewayRouteTable?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'localGatewayRouteTable';
        _localGatewayRouteTable?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateLocalGatewayRouteTableResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
