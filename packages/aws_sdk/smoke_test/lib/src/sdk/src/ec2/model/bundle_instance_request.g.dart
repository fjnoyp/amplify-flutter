// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.bundle_instance_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BundleInstanceRequest extends BundleInstanceRequest {
  @override
  final String instanceId;
  @override
  final _i3.Storage storage;
  @override
  final bool dryRun;

  factory _$BundleInstanceRequest(
          [void Function(BundleInstanceRequestBuilder)? updates]) =>
      (new BundleInstanceRequestBuilder()..update(updates))._build();

  _$BundleInstanceRequest._(
      {required this.instanceId, required this.storage, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        instanceId, r'BundleInstanceRequest', 'instanceId');
    BuiltValueNullFieldError.checkNotNull(
        storage, r'BundleInstanceRequest', 'storage');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'BundleInstanceRequest', 'dryRun');
  }

  @override
  BundleInstanceRequest rebuild(
          void Function(BundleInstanceRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BundleInstanceRequestBuilder toBuilder() =>
      new BundleInstanceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BundleInstanceRequest &&
        instanceId == other.instanceId &&
        storage == other.storage &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, storage.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class BundleInstanceRequestBuilder
    implements Builder<BundleInstanceRequest, BundleInstanceRequestBuilder> {
  _$BundleInstanceRequest? _$v;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  _i3.StorageBuilder? _storage;
  _i3.StorageBuilder get storage =>
      _$this._storage ??= new _i3.StorageBuilder();
  set storage(_i3.StorageBuilder? storage) => _$this._storage = storage;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  BundleInstanceRequestBuilder() {
    BundleInstanceRequest._init(this);
  }

  BundleInstanceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceId = $v.instanceId;
      _storage = $v.storage.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BundleInstanceRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BundleInstanceRequest;
  }

  @override
  void update(void Function(BundleInstanceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BundleInstanceRequest build() => _build();

  _$BundleInstanceRequest _build() {
    _$BundleInstanceRequest _$result;
    try {
      _$result = _$v ??
          new _$BundleInstanceRequest._(
              instanceId: BuiltValueNullFieldError.checkNotNull(
                  instanceId, r'BundleInstanceRequest', 'instanceId'),
              storage: storage.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'BundleInstanceRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'storage';
        storage.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BundleInstanceRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
