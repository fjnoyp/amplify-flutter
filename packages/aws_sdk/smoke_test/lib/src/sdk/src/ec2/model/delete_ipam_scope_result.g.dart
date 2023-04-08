// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.delete_ipam_scope_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteIpamScopeResult extends DeleteIpamScopeResult {
  @override
  final _i2.IpamScope? ipamScope;

  factory _$DeleteIpamScopeResult(
          [void Function(DeleteIpamScopeResultBuilder)? updates]) =>
      (new DeleteIpamScopeResultBuilder()..update(updates))._build();

  _$DeleteIpamScopeResult._({this.ipamScope}) : super._();

  @override
  DeleteIpamScopeResult rebuild(
          void Function(DeleteIpamScopeResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteIpamScopeResultBuilder toBuilder() =>
      new DeleteIpamScopeResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteIpamScopeResult && ipamScope == other.ipamScope;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ipamScope.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteIpamScopeResultBuilder
    implements Builder<DeleteIpamScopeResult, DeleteIpamScopeResultBuilder> {
  _$DeleteIpamScopeResult? _$v;

  _i2.IpamScopeBuilder? _ipamScope;
  _i2.IpamScopeBuilder get ipamScope =>
      _$this._ipamScope ??= new _i2.IpamScopeBuilder();
  set ipamScope(_i2.IpamScopeBuilder? ipamScope) =>
      _$this._ipamScope = ipamScope;

  DeleteIpamScopeResultBuilder() {
    DeleteIpamScopeResult._init(this);
  }

  DeleteIpamScopeResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ipamScope = $v.ipamScope?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteIpamScopeResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteIpamScopeResult;
  }

  @override
  void update(void Function(DeleteIpamScopeResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteIpamScopeResult build() => _build();

  _$DeleteIpamScopeResult _build() {
    _$DeleteIpamScopeResult _$result;
    try {
      _$result =
          _$v ?? new _$DeleteIpamScopeResult._(ipamScope: _ipamScope?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ipamScope';
        _ipamScope?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteIpamScopeResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
