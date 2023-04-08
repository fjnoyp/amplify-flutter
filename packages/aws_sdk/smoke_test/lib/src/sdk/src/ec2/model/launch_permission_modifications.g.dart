// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.launch_permission_modifications;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LaunchPermissionModifications extends LaunchPermissionModifications {
  @override
  final _i3.BuiltList<_i2.LaunchPermission>? add;
  @override
  final _i3.BuiltList<_i2.LaunchPermission>? remove;

  factory _$LaunchPermissionModifications(
          [void Function(LaunchPermissionModificationsBuilder)? updates]) =>
      (new LaunchPermissionModificationsBuilder()..update(updates))._build();

  _$LaunchPermissionModifications._({this.add, this.remove}) : super._();

  @override
  LaunchPermissionModifications rebuild(
          void Function(LaunchPermissionModificationsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LaunchPermissionModificationsBuilder toBuilder() =>
      new LaunchPermissionModificationsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LaunchPermissionModifications &&
        add == other.add &&
        remove == other.remove;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, add.hashCode);
    _$hash = $jc(_$hash, remove.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class LaunchPermissionModificationsBuilder
    implements
        Builder<LaunchPermissionModifications,
            LaunchPermissionModificationsBuilder> {
  _$LaunchPermissionModifications? _$v;

  _i3.ListBuilder<_i2.LaunchPermission>? _add;
  _i3.ListBuilder<_i2.LaunchPermission> get add =>
      _$this._add ??= new _i3.ListBuilder<_i2.LaunchPermission>();
  set add(_i3.ListBuilder<_i2.LaunchPermission>? add) => _$this._add = add;

  _i3.ListBuilder<_i2.LaunchPermission>? _remove;
  _i3.ListBuilder<_i2.LaunchPermission> get remove =>
      _$this._remove ??= new _i3.ListBuilder<_i2.LaunchPermission>();
  set remove(_i3.ListBuilder<_i2.LaunchPermission>? remove) =>
      _$this._remove = remove;

  LaunchPermissionModificationsBuilder() {
    LaunchPermissionModifications._init(this);
  }

  LaunchPermissionModificationsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _add = $v.add?.toBuilder();
      _remove = $v.remove?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LaunchPermissionModifications other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LaunchPermissionModifications;
  }

  @override
  void update(void Function(LaunchPermissionModificationsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LaunchPermissionModifications build() => _build();

  _$LaunchPermissionModifications _build() {
    _$LaunchPermissionModifications _$result;
    try {
      _$result = _$v ??
          new _$LaunchPermissionModifications._(
              add: _add?.build(), remove: _remove?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'add';
        _add?.build();
        _$failedField = 'remove';
        _remove?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LaunchPermissionModifications', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
