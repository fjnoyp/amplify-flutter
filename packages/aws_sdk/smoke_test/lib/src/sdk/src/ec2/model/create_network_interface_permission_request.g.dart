// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.create_network_interface_permission_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateNetworkInterfacePermissionRequest
    extends CreateNetworkInterfacePermissionRequest {
  @override
  final String networkInterfaceId;
  @override
  final String? awsAccountId;
  @override
  final String? awsService;
  @override
  final _i3.InterfacePermissionType permission;
  @override
  final bool dryRun;

  factory _$CreateNetworkInterfacePermissionRequest(
          [void Function(CreateNetworkInterfacePermissionRequestBuilder)?
              updates]) =>
      (new CreateNetworkInterfacePermissionRequestBuilder()..update(updates))
          ._build();

  _$CreateNetworkInterfacePermissionRequest._(
      {required this.networkInterfaceId,
      this.awsAccountId,
      this.awsService,
      required this.permission,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(networkInterfaceId,
        r'CreateNetworkInterfacePermissionRequest', 'networkInterfaceId');
    BuiltValueNullFieldError.checkNotNull(
        permission, r'CreateNetworkInterfacePermissionRequest', 'permission');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateNetworkInterfacePermissionRequest', 'dryRun');
  }

  @override
  CreateNetworkInterfacePermissionRequest rebuild(
          void Function(CreateNetworkInterfacePermissionRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateNetworkInterfacePermissionRequestBuilder toBuilder() =>
      new CreateNetworkInterfacePermissionRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateNetworkInterfacePermissionRequest &&
        networkInterfaceId == other.networkInterfaceId &&
        awsAccountId == other.awsAccountId &&
        awsService == other.awsService &&
        permission == other.permission &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, networkInterfaceId.hashCode);
    _$hash = $jc(_$hash, awsAccountId.hashCode);
    _$hash = $jc(_$hash, awsService.hashCode);
    _$hash = $jc(_$hash, permission.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateNetworkInterfacePermissionRequestBuilder
    implements
        Builder<CreateNetworkInterfacePermissionRequest,
            CreateNetworkInterfacePermissionRequestBuilder> {
  _$CreateNetworkInterfacePermissionRequest? _$v;

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

  _i3.InterfacePermissionType? _permission;
  _i3.InterfacePermissionType? get permission => _$this._permission;
  set permission(_i3.InterfacePermissionType? permission) =>
      _$this._permission = permission;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  CreateNetworkInterfacePermissionRequestBuilder() {
    CreateNetworkInterfacePermissionRequest._init(this);
  }

  CreateNetworkInterfacePermissionRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _networkInterfaceId = $v.networkInterfaceId;
      _awsAccountId = $v.awsAccountId;
      _awsService = $v.awsService;
      _permission = $v.permission;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateNetworkInterfacePermissionRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateNetworkInterfacePermissionRequest;
  }

  @override
  void update(
      void Function(CreateNetworkInterfacePermissionRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateNetworkInterfacePermissionRequest build() => _build();

  _$CreateNetworkInterfacePermissionRequest _build() {
    final _$result = _$v ??
        new _$CreateNetworkInterfacePermissionRequest._(
            networkInterfaceId: BuiltValueNullFieldError.checkNotNull(
                networkInterfaceId,
                r'CreateNetworkInterfacePermissionRequest',
                'networkInterfaceId'),
            awsAccountId: awsAccountId,
            awsService: awsService,
            permission: BuiltValueNullFieldError.checkNotNull(permission,
                r'CreateNetworkInterfacePermissionRequest', 'permission'),
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'CreateNetworkInterfacePermissionRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
