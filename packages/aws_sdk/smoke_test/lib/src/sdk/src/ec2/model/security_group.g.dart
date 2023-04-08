// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.security_group;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SecurityGroup extends SecurityGroup {
  @override
  final String? description;
  @override
  final String? groupName;
  @override
  final _i4.BuiltList<_i2.IpPermission>? ipPermissions;
  @override
  final String? ownerId;
  @override
  final String? groupId;
  @override
  final _i4.BuiltList<_i2.IpPermission>? ipPermissionsEgress;
  @override
  final _i4.BuiltList<_i3.Tag>? tags;
  @override
  final String? vpcId;

  factory _$SecurityGroup([void Function(SecurityGroupBuilder)? updates]) =>
      (new SecurityGroupBuilder()..update(updates))._build();

  _$SecurityGroup._(
      {this.description,
      this.groupName,
      this.ipPermissions,
      this.ownerId,
      this.groupId,
      this.ipPermissionsEgress,
      this.tags,
      this.vpcId})
      : super._();

  @override
  SecurityGroup rebuild(void Function(SecurityGroupBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SecurityGroupBuilder toBuilder() => new SecurityGroupBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SecurityGroup &&
        description == other.description &&
        groupName == other.groupName &&
        ipPermissions == other.ipPermissions &&
        ownerId == other.ownerId &&
        groupId == other.groupId &&
        ipPermissionsEgress == other.ipPermissionsEgress &&
        tags == other.tags &&
        vpcId == other.vpcId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, groupName.hashCode);
    _$hash = $jc(_$hash, ipPermissions.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jc(_$hash, groupId.hashCode);
    _$hash = $jc(_$hash, ipPermissionsEgress.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, vpcId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SecurityGroupBuilder
    implements Builder<SecurityGroup, SecurityGroupBuilder> {
  _$SecurityGroup? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _groupName;
  String? get groupName => _$this._groupName;
  set groupName(String? groupName) => _$this._groupName = groupName;

  _i4.ListBuilder<_i2.IpPermission>? _ipPermissions;
  _i4.ListBuilder<_i2.IpPermission> get ipPermissions =>
      _$this._ipPermissions ??= new _i4.ListBuilder<_i2.IpPermission>();
  set ipPermissions(_i4.ListBuilder<_i2.IpPermission>? ipPermissions) =>
      _$this._ipPermissions = ipPermissions;

  String? _ownerId;
  String? get ownerId => _$this._ownerId;
  set ownerId(String? ownerId) => _$this._ownerId = ownerId;

  String? _groupId;
  String? get groupId => _$this._groupId;
  set groupId(String? groupId) => _$this._groupId = groupId;

  _i4.ListBuilder<_i2.IpPermission>? _ipPermissionsEgress;
  _i4.ListBuilder<_i2.IpPermission> get ipPermissionsEgress =>
      _$this._ipPermissionsEgress ??= new _i4.ListBuilder<_i2.IpPermission>();
  set ipPermissionsEgress(
          _i4.ListBuilder<_i2.IpPermission>? ipPermissionsEgress) =>
      _$this._ipPermissionsEgress = ipPermissionsEgress;

  _i4.ListBuilder<_i3.Tag>? _tags;
  _i4.ListBuilder<_i3.Tag> get tags =>
      _$this._tags ??= new _i4.ListBuilder<_i3.Tag>();
  set tags(_i4.ListBuilder<_i3.Tag>? tags) => _$this._tags = tags;

  String? _vpcId;
  String? get vpcId => _$this._vpcId;
  set vpcId(String? vpcId) => _$this._vpcId = vpcId;

  SecurityGroupBuilder() {
    SecurityGroup._init(this);
  }

  SecurityGroupBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _groupName = $v.groupName;
      _ipPermissions = $v.ipPermissions?.toBuilder();
      _ownerId = $v.ownerId;
      _groupId = $v.groupId;
      _ipPermissionsEgress = $v.ipPermissionsEgress?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _vpcId = $v.vpcId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SecurityGroup other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SecurityGroup;
  }

  @override
  void update(void Function(SecurityGroupBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SecurityGroup build() => _build();

  _$SecurityGroup _build() {
    _$SecurityGroup _$result;
    try {
      _$result = _$v ??
          new _$SecurityGroup._(
              description: description,
              groupName: groupName,
              ipPermissions: _ipPermissions?.build(),
              ownerId: ownerId,
              groupId: groupId,
              ipPermissionsEgress: _ipPermissionsEgress?.build(),
              tags: _tags?.build(),
              vpcId: vpcId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ipPermissions';
        _ipPermissions?.build();

        _$failedField = 'ipPermissionsEgress';
        _ipPermissionsEgress?.build();
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SecurityGroup', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
