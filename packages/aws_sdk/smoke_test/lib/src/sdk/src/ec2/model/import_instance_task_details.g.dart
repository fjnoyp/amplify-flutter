// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.import_instance_task_details;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImportInstanceTaskDetails extends ImportInstanceTaskDetails {
  @override
  final String? description;
  @override
  final String? instanceId;
  @override
  final _i2.PlatformValues? platform;
  @override
  final _i4.BuiltList<_i3.ImportInstanceVolumeDetailItem>? volumes;

  factory _$ImportInstanceTaskDetails(
          [void Function(ImportInstanceTaskDetailsBuilder)? updates]) =>
      (new ImportInstanceTaskDetailsBuilder()..update(updates))._build();

  _$ImportInstanceTaskDetails._(
      {this.description, this.instanceId, this.platform, this.volumes})
      : super._();

  @override
  ImportInstanceTaskDetails rebuild(
          void Function(ImportInstanceTaskDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImportInstanceTaskDetailsBuilder toBuilder() =>
      new ImportInstanceTaskDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImportInstanceTaskDetails &&
        description == other.description &&
        instanceId == other.instanceId &&
        platform == other.platform &&
        volumes == other.volumes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, platform.hashCode);
    _$hash = $jc(_$hash, volumes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ImportInstanceTaskDetailsBuilder
    implements
        Builder<ImportInstanceTaskDetails, ImportInstanceTaskDetailsBuilder> {
  _$ImportInstanceTaskDetails? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  _i2.PlatformValues? _platform;
  _i2.PlatformValues? get platform => _$this._platform;
  set platform(_i2.PlatformValues? platform) => _$this._platform = platform;

  _i4.ListBuilder<_i3.ImportInstanceVolumeDetailItem>? _volumes;
  _i4.ListBuilder<_i3.ImportInstanceVolumeDetailItem> get volumes =>
      _$this._volumes ??=
          new _i4.ListBuilder<_i3.ImportInstanceVolumeDetailItem>();
  set volumes(_i4.ListBuilder<_i3.ImportInstanceVolumeDetailItem>? volumes) =>
      _$this._volumes = volumes;

  ImportInstanceTaskDetailsBuilder() {
    ImportInstanceTaskDetails._init(this);
  }

  ImportInstanceTaskDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _instanceId = $v.instanceId;
      _platform = $v.platform;
      _volumes = $v.volumes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImportInstanceTaskDetails other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImportInstanceTaskDetails;
  }

  @override
  void update(void Function(ImportInstanceTaskDetailsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImportInstanceTaskDetails build() => _build();

  _$ImportInstanceTaskDetails _build() {
    _$ImportInstanceTaskDetails _$result;
    try {
      _$result = _$v ??
          new _$ImportInstanceTaskDetails._(
              description: description,
              instanceId: instanceId,
              platform: platform,
              volumes: _volumes?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'volumes';
        _volumes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ImportInstanceTaskDetails', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
