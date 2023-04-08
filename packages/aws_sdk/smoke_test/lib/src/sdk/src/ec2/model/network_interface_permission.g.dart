// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.network_interface_permission;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NetworkInterfacePermission extends NetworkInterfacePermission {
  @override
  final String? networkInterfacePermissionId;
  @override
  final String? networkInterfaceId;
  @override
  final String? awsAccountId;
  @override
  final String? awsService;
  @override
  final _i2.InterfacePermissionType? permission;
  @override
  final _i3.NetworkInterfacePermissionState? permissionState;

  factory _$NetworkInterfacePermission(
          [void Function(NetworkInterfacePermissionBuilder)? updates]) =>
      (new NetworkInterfacePermissionBuilder()..update(updates))._build();

  _$NetworkInterfacePermission._(
      {this.networkInterfacePermissionId,
      this.networkInterfaceId,
      this.awsAccountId,
      this.awsService,
      this.permission,
      this.permissionState})
      : super._();

  @override
  NetworkInterfacePermission rebuild(
          void Function(NetworkInterfacePermissionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NetworkInterfacePermissionBuilder toBuilder() =>
      new NetworkInterfacePermissionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NetworkInterfacePermission &&
        networkInterfacePermissionId == other.networkInterfacePermissionId &&
        networkInterfaceId == other.networkInterfaceId &&
        awsAccountId == other.awsAccountId &&
        awsService == other.awsService &&
        permission == other.permission &&
        permissionState == other.permissionState;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, networkInterfacePermissionId.hashCode);
    _$hash = $jc(_$hash, networkInterfaceId.hashCode);
    _$hash = $jc(_$hash, awsAccountId.hashCode);
    _$hash = $jc(_$hash, awsService.hashCode);
    _$hash = $jc(_$hash, permission.hashCode);
    _$hash = $jc(_$hash, permissionState.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class NetworkInterfacePermissionBuilder
    implements
        Builder<NetworkInterfacePermission, NetworkInterfacePermissionBuilder> {
  _$NetworkInterfacePermission? _$v;

  String? _networkInterfacePermissionId;
  String? get networkInterfacePermissionId =>
      _$this._networkInterfacePermissionId;
  set networkInterfacePermissionId(String? networkInterfacePermissionId) =>
      _$this._networkInterfacePermissionId = networkInterfacePermissionId;

  String? _networkInterfaceId;
  String? get networkInterfaceId => _$this._networkInterfaceId;
  set networkInterfaceId(String? networkInterfaceId) =>
      _$this._networkInterfaceId = networkInterfaceId;

  String? _awsAccountId;
  String? get awsAccountId => _$this._awsAccountId;
  set awsAccountId(String? awsAccountId) => _$this._awsAccountId = awsAccountId;

  String? _awsService;
  String? get awsService => _$this._awsService;
  set awsService(String? awsService) => _$this._awsService = awsService;

  _i2.InterfacePermissionType? _permission;
  _i2.InterfacePermissionType? get permission => _$this._permission;
  set permission(_i2.InterfacePermissionType? permission) =>
      _$this._permission = permission;

  _i3.NetworkInterfacePermissionStateBuilder? _permissionState;
  _i3.NetworkInterfacePermissionStateBuilder get permissionState =>
      _$this._permissionState ??=
          new _i3.NetworkInterfacePermissionStateBuilder();
  set permissionState(
          _i3.NetworkInterfacePermissionStateBuilder? permissionState) =>
      _$this._permissionState = permissionState;

  NetworkInterfacePermissionBuilder() {
    NetworkInterfacePermission._init(this);
  }

  NetworkInterfacePermissionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _networkInterfacePermissionId = $v.networkInterfacePermissionId;
      _networkInterfaceId = $v.networkInterfaceId;
      _awsAccountId = $v.awsAccountId;
      _awsService = $v.awsService;
      _permission = $v.permission;
      _permissionState = $v.permissionState?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NetworkInterfacePermission other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NetworkInterfacePermission;
  }

  @override
  void update(void Function(NetworkInterfacePermissionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NetworkInterfacePermission build() => _build();

  _$NetworkInterfacePermission _build() {
    _$NetworkInterfacePermission _$result;
    try {
      _$result = _$v ??
          new _$NetworkInterfacePermission._(
              networkInterfacePermissionId: networkInterfacePermissionId,
              networkInterfaceId: networkInterfaceId,
              awsAccountId: awsAccountId,
              awsService: awsService,
              permission: permission,
              permissionState: _permissionState?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'permissionState';
        _permissionState?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'NetworkInterfacePermission', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
