// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.create_replace_root_volume_task_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateReplaceRootVolumeTaskRequest
    extends CreateReplaceRootVolumeTaskRequest {
  @override
  final String instanceId;
  @override
  final String? snapshotId;
  @override
  final String? clientToken;
  @override
  final bool dryRun;
  @override
  final _i4.BuiltList<_i3.TagSpecification>? tagSpecifications;

  factory _$CreateReplaceRootVolumeTaskRequest(
          [void Function(CreateReplaceRootVolumeTaskRequestBuilder)?
              updates]) =>
      (new CreateReplaceRootVolumeTaskRequestBuilder()..update(updates))
          ._build();

  _$CreateReplaceRootVolumeTaskRequest._(
      {required this.instanceId,
      this.snapshotId,
      this.clientToken,
      required this.dryRun,
      this.tagSpecifications})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        instanceId, r'CreateReplaceRootVolumeTaskRequest', 'instanceId');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateReplaceRootVolumeTaskRequest', 'dryRun');
  }

  @override
  CreateReplaceRootVolumeTaskRequest rebuild(
          void Function(CreateReplaceRootVolumeTaskRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateReplaceRootVolumeTaskRequestBuilder toBuilder() =>
      new CreateReplaceRootVolumeTaskRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateReplaceRootVolumeTaskRequest &&
        instanceId == other.instanceId &&
        snapshotId == other.snapshotId &&
        clientToken == other.clientToken &&
        dryRun == other.dryRun &&
        tagSpecifications == other.tagSpecifications;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, snapshotId.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateReplaceRootVolumeTaskRequestBuilder
    implements
        Builder<CreateReplaceRootVolumeTaskRequest,
            CreateReplaceRootVolumeTaskRequestBuilder> {
  _$CreateReplaceRootVolumeTaskRequest? _$v;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  String? _snapshotId;
  String? get snapshotId => _$this._snapshotId;
  set snapshotId(String? snapshotId) => _$this._snapshotId = snapshotId;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i4.ListBuilder<_i3.TagSpecification>? _tagSpecifications;
  _i4.ListBuilder<_i3.TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i4.ListBuilder<_i3.TagSpecification>();
  set tagSpecifications(
          _i4.ListBuilder<_i3.TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  CreateReplaceRootVolumeTaskRequestBuilder() {
    CreateReplaceRootVolumeTaskRequest._init(this);
  }

  CreateReplaceRootVolumeTaskRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceId = $v.instanceId;
      _snapshotId = $v.snapshotId;
      _clientToken = $v.clientToken;
      _dryRun = $v.dryRun;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateReplaceRootVolumeTaskRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateReplaceRootVolumeTaskRequest;
  }

  @override
  void update(
      void Function(CreateReplaceRootVolumeTaskRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateReplaceRootVolumeTaskRequest build() => _build();

  _$CreateReplaceRootVolumeTaskRequest _build() {
    _$CreateReplaceRootVolumeTaskRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateReplaceRootVolumeTaskRequest._(
              instanceId: BuiltValueNullFieldError.checkNotNull(instanceId,
                  r'CreateReplaceRootVolumeTaskRequest', 'instanceId'),
              snapshotId: snapshotId,
              clientToken: clientToken,
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreateReplaceRootVolumeTaskRequest', 'dryRun'),
              tagSpecifications: _tagSpecifications?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateReplaceRootVolumeTaskRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
