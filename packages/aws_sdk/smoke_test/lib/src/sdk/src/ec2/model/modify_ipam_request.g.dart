// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.modify_ipam_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyIpamRequest extends ModifyIpamRequest {
  @override
  final bool dryRun;
  @override
  final String ipamId;
  @override
  final String? description;
  @override
  final _i5.BuiltList<_i3.AddIpamOperatingRegion>? addOperatingRegions;
  @override
  final _i5.BuiltList<_i4.RemoveIpamOperatingRegion>? removeOperatingRegions;

  factory _$ModifyIpamRequest(
          [void Function(ModifyIpamRequestBuilder)? updates]) =>
      (new ModifyIpamRequestBuilder()..update(updates))._build();

  _$ModifyIpamRequest._(
      {required this.dryRun,
      required this.ipamId,
      this.description,
      this.addOperatingRegions,
      this.removeOperatingRegions})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ModifyIpamRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        ipamId, r'ModifyIpamRequest', 'ipamId');
  }

  @override
  ModifyIpamRequest rebuild(void Function(ModifyIpamRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyIpamRequestBuilder toBuilder() =>
      new ModifyIpamRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyIpamRequest &&
        dryRun == other.dryRun &&
        ipamId == other.ipamId &&
        description == other.description &&
        addOperatingRegions == other.addOperatingRegions &&
        removeOperatingRegions == other.removeOperatingRegions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, ipamId.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, addOperatingRegions.hashCode);
    _$hash = $jc(_$hash, removeOperatingRegions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyIpamRequestBuilder
    implements Builder<ModifyIpamRequest, ModifyIpamRequestBuilder> {
  _$ModifyIpamRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _ipamId;
  String? get ipamId => _$this._ipamId;
  set ipamId(String? ipamId) => _$this._ipamId = ipamId;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  _i5.ListBuilder<_i3.AddIpamOperatingRegion>? _addOperatingRegions;
  _i5.ListBuilder<_i3.AddIpamOperatingRegion> get addOperatingRegions =>
      _$this._addOperatingRegions ??=
          new _i5.ListBuilder<_i3.AddIpamOperatingRegion>();
  set addOperatingRegions(
          _i5.ListBuilder<_i3.AddIpamOperatingRegion>? addOperatingRegions) =>
      _$this._addOperatingRegions = addOperatingRegions;

  _i5.ListBuilder<_i4.RemoveIpamOperatingRegion>? _removeOperatingRegions;
  _i5.ListBuilder<_i4.RemoveIpamOperatingRegion> get removeOperatingRegions =>
      _$this._removeOperatingRegions ??=
          new _i5.ListBuilder<_i4.RemoveIpamOperatingRegion>();
  set removeOperatingRegions(
          _i5.ListBuilder<_i4.RemoveIpamOperatingRegion>?
              removeOperatingRegions) =>
      _$this._removeOperatingRegions = removeOperatingRegions;

  ModifyIpamRequestBuilder() {
    ModifyIpamRequest._init(this);
  }

  ModifyIpamRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _ipamId = $v.ipamId;
      _description = $v.description;
      _addOperatingRegions = $v.addOperatingRegions?.toBuilder();
      _removeOperatingRegions = $v.removeOperatingRegions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyIpamRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyIpamRequest;
  }

  @override
  void update(void Function(ModifyIpamRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyIpamRequest build() => _build();

  _$ModifyIpamRequest _build() {
    _$ModifyIpamRequest _$result;
    try {
      _$result = _$v ??
          new _$ModifyIpamRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'ModifyIpamRequest', 'dryRun'),
              ipamId: BuiltValueNullFieldError.checkNotNull(
                  ipamId, r'ModifyIpamRequest', 'ipamId'),
              description: description,
              addOperatingRegions: _addOperatingRegions?.build(),
              removeOperatingRegions: _removeOperatingRegions?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'addOperatingRegions';
        _addOperatingRegions?.build();
        _$failedField = 'removeOperatingRegions';
        _removeOperatingRegions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyIpamRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
