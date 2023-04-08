// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.stale_security_group;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StaleSecurityGroup extends StaleSecurityGroup {
  @override
  final String? description;
  @override
  final String? groupId;
  @override
  final String? groupName;
  @override
  final _i3.BuiltList<_i2.StaleIpPermission>? staleIpPermissions;
  @override
  final _i3.BuiltList<_i2.StaleIpPermission>? staleIpPermissionsEgress;
  @override
  final String? vpcId;

  factory _$StaleSecurityGroup(
          [void Function(StaleSecurityGroupBuilder)? updates]) =>
      (new StaleSecurityGroupBuilder()..update(updates))._build();

  _$StaleSecurityGroup._(
      {this.description,
      this.groupId,
      this.groupName,
      this.staleIpPermissions,
      this.staleIpPermissionsEgress,
      this.vpcId})
      : super._();

  @override
  StaleSecurityGroup rebuild(
          void Function(StaleSecurityGroupBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StaleSecurityGroupBuilder toBuilder() =>
      new StaleSecurityGroupBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StaleSecurityGroup &&
        description == other.description &&
        groupId == other.groupId &&
        groupName == other.groupName &&
        staleIpPermissions == other.staleIpPermissions &&
        staleIpPermissionsEgress == other.staleIpPermissionsEgress &&
        vpcId == other.vpcId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, groupId.hashCode);
    _$hash = $jc(_$hash, groupName.hashCode);
    _$hash = $jc(_$hash, staleIpPermissions.hashCode);
    _$hash = $jc(_$hash, staleIpPermissionsEgress.hashCode);
    _$hash = $jc(_$hash, vpcId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StaleSecurityGroupBuilder
    implements Builder<StaleSecurityGroup, StaleSecurityGroupBuilder> {
  _$StaleSecurityGroup? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _groupId;
  String? get groupId => _$this._groupId;
  set groupId(String? groupId) => _$this._groupId = groupId;

  String? _groupName;
  String? get groupName => _$this._groupName;
  set groupName(String? groupName) => _$this._groupName = groupName;

  _i3.ListBuilder<_i2.StaleIpPermission>? _staleIpPermissions;
  _i3.ListBuilder<_i2.StaleIpPermission> get staleIpPermissions =>
      _$this._staleIpPermissions ??=
          new _i3.ListBuilder<_i2.StaleIpPermission>();
  set staleIpPermissions(
          _i3.ListBuilder<_i2.StaleIpPermission>? staleIpPermissions) =>
      _$this._staleIpPermissions = staleIpPermissions;

  _i3.ListBuilder<_i2.StaleIpPermission>? _staleIpPermissionsEgress;
  _i3.ListBuilder<_i2.StaleIpPermission> get staleIpPermissionsEgress =>
      _$this._staleIpPermissionsEgress ??=
          new _i3.ListBuilder<_i2.StaleIpPermission>();
  set staleIpPermissionsEgress(
          _i3.ListBuilder<_i2.StaleIpPermission>? staleIpPermissionsEgress) =>
      _$this._staleIpPermissionsEgress = staleIpPermissionsEgress;

  String? _vpcId;
  String? get vpcId => _$this._vpcId;
  set vpcId(String? vpcId) => _$this._vpcId = vpcId;

  StaleSecurityGroupBuilder() {
    StaleSecurityGroup._init(this);
  }

  StaleSecurityGroupBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _groupId = $v.groupId;
      _groupName = $v.groupName;
      _staleIpPermissions = $v.staleIpPermissions?.toBuilder();
      _staleIpPermissionsEgress = $v.staleIpPermissionsEgress?.toBuilder();
      _vpcId = $v.vpcId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StaleSecurityGroup other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StaleSecurityGroup;
  }

  @override
  void update(void Function(StaleSecurityGroupBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StaleSecurityGroup build() => _build();

  _$StaleSecurityGroup _build() {
    _$StaleSecurityGroup _$result;
    try {
      _$result = _$v ??
          new _$StaleSecurityGroup._(
              description: description,
              groupId: groupId,
              groupName: groupName,
              staleIpPermissions: _staleIpPermissions?.build(),
              staleIpPermissionsEgress: _staleIpPermissionsEgress?.build(),
              vpcId: vpcId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'staleIpPermissions';
        _staleIpPermissions?.build();
        _$failedField = 'staleIpPermissionsEgress';
        _staleIpPermissionsEgress?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'StaleSecurityGroup', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
