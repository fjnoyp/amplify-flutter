// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.create_volume_permission_modifications;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateVolumePermissionModifications
    extends CreateVolumePermissionModifications {
  @override
  final _i3.BuiltList<_i2.CreateVolumePermission>? add;
  @override
  final _i3.BuiltList<_i2.CreateVolumePermission>? remove;

  factory _$CreateVolumePermissionModifications(
          [void Function(CreateVolumePermissionModificationsBuilder)?
              updates]) =>
      (new CreateVolumePermissionModificationsBuilder()..update(updates))
          ._build();

  _$CreateVolumePermissionModifications._({this.add, this.remove}) : super._();

  @override
  CreateVolumePermissionModifications rebuild(
          void Function(CreateVolumePermissionModificationsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateVolumePermissionModificationsBuilder toBuilder() =>
      new CreateVolumePermissionModificationsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateVolumePermissionModifications &&
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

class CreateVolumePermissionModificationsBuilder
    implements
        Builder<CreateVolumePermissionModifications,
            CreateVolumePermissionModificationsBuilder> {
  _$CreateVolumePermissionModifications? _$v;

  _i3.ListBuilder<_i2.CreateVolumePermission>? _add;
  _i3.ListBuilder<_i2.CreateVolumePermission> get add =>
      _$this._add ??= new _i3.ListBuilder<_i2.CreateVolumePermission>();
  set add(_i3.ListBuilder<_i2.CreateVolumePermission>? add) =>
      _$this._add = add;

  _i3.ListBuilder<_i2.CreateVolumePermission>? _remove;
  _i3.ListBuilder<_i2.CreateVolumePermission> get remove =>
      _$this._remove ??= new _i3.ListBuilder<_i2.CreateVolumePermission>();
  set remove(_i3.ListBuilder<_i2.CreateVolumePermission>? remove) =>
      _$this._remove = remove;

  CreateVolumePermissionModificationsBuilder() {
    CreateVolumePermissionModifications._init(this);
  }

  CreateVolumePermissionModificationsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _add = $v.add?.toBuilder();
      _remove = $v.remove?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateVolumePermissionModifications other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateVolumePermissionModifications;
  }

  @override
  void update(
      void Function(CreateVolumePermissionModificationsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateVolumePermissionModifications build() => _build();

  _$CreateVolumePermissionModifications _build() {
    _$CreateVolumePermissionModifications _$result;
    try {
      _$result = _$v ??
          new _$CreateVolumePermissionModifications._(
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
            r'CreateVolumePermissionModifications',
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
