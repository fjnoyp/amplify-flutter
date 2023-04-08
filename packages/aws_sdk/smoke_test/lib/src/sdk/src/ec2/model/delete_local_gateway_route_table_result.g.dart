// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.delete_local_gateway_route_table_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteLocalGatewayRouteTableResult
    extends DeleteLocalGatewayRouteTableResult {
  @override
  final _i2.LocalGatewayRouteTable? localGatewayRouteTable;

  factory _$DeleteLocalGatewayRouteTableResult(
          [void Function(DeleteLocalGatewayRouteTableResultBuilder)?
              updates]) =>
      (new DeleteLocalGatewayRouteTableResultBuilder()..update(updates))
          ._build();

  _$DeleteLocalGatewayRouteTableResult._({this.localGatewayRouteTable})
      : super._();

  @override
  DeleteLocalGatewayRouteTableResult rebuild(
          void Function(DeleteLocalGatewayRouteTableResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteLocalGatewayRouteTableResultBuilder toBuilder() =>
      new DeleteLocalGatewayRouteTableResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteLocalGatewayRouteTableResult &&
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

class DeleteLocalGatewayRouteTableResultBuilder
    implements
        Builder<DeleteLocalGatewayRouteTableResult,
            DeleteLocalGatewayRouteTableResultBuilder> {
  _$DeleteLocalGatewayRouteTableResult? _$v;

  _i2.LocalGatewayRouteTableBuilder? _localGatewayRouteTable;
  _i2.LocalGatewayRouteTableBuilder get localGatewayRouteTable =>
      _$this._localGatewayRouteTable ??=
          new _i2.LocalGatewayRouteTableBuilder();
  set localGatewayRouteTable(
          _i2.LocalGatewayRouteTableBuilder? localGatewayRouteTable) =>
      _$this._localGatewayRouteTable = localGatewayRouteTable;

  DeleteLocalGatewayRouteTableResultBuilder() {
    DeleteLocalGatewayRouteTableResult._init(this);
  }

  DeleteLocalGatewayRouteTableResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _localGatewayRouteTable = $v.localGatewayRouteTable?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteLocalGatewayRouteTableResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteLocalGatewayRouteTableResult;
  }

  @override
  void update(
      void Function(DeleteLocalGatewayRouteTableResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteLocalGatewayRouteTableResult build() => _build();

  _$DeleteLocalGatewayRouteTableResult _build() {
    _$DeleteLocalGatewayRouteTableResult _$result;
    try {
      _$result = _$v ??
          new _$DeleteLocalGatewayRouteTableResult._(
              localGatewayRouteTable: _localGatewayRouteTable?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'localGatewayRouteTable';
        _localGatewayRouteTable?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteLocalGatewayRouteTableResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
