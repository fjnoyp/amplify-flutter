// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.create_key_pair_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateKeyPairRequest extends CreateKeyPairRequest {
  @override
  final String keyName;
  @override
  final bool dryRun;
  @override
  final _i3.KeyType? keyType;
  @override
  final _i6.BuiltList<_i4.TagSpecification>? tagSpecifications;
  @override
  final _i5.KeyFormat? keyFormat;

  factory _$CreateKeyPairRequest(
          [void Function(CreateKeyPairRequestBuilder)? updates]) =>
      (new CreateKeyPairRequestBuilder()..update(updates))._build();

  _$CreateKeyPairRequest._(
      {required this.keyName,
      required this.dryRun,
      this.keyType,
      this.tagSpecifications,
      this.keyFormat})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        keyName, r'CreateKeyPairRequest', 'keyName');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateKeyPairRequest', 'dryRun');
  }

  @override
  CreateKeyPairRequest rebuild(
          void Function(CreateKeyPairRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateKeyPairRequestBuilder toBuilder() =>
      new CreateKeyPairRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateKeyPairRequest &&
        keyName == other.keyName &&
        dryRun == other.dryRun &&
        keyType == other.keyType &&
        tagSpecifications == other.tagSpecifications &&
        keyFormat == other.keyFormat;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, keyName.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, keyType.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, keyFormat.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateKeyPairRequestBuilder
    implements Builder<CreateKeyPairRequest, CreateKeyPairRequestBuilder> {
  _$CreateKeyPairRequest? _$v;

  String? _keyName;
  String? get keyName => _$this._keyName;
  set keyName(String? keyName) => _$this._keyName = keyName;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i3.KeyType? _keyType;
  _i3.KeyType? get keyType => _$this._keyType;
  set keyType(_i3.KeyType? keyType) => _$this._keyType = keyType;

  _i6.ListBuilder<_i4.TagSpecification>? _tagSpecifications;
  _i6.ListBuilder<_i4.TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i6.ListBuilder<_i4.TagSpecification>();
  set tagSpecifications(
          _i6.ListBuilder<_i4.TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  _i5.KeyFormat? _keyFormat;
  _i5.KeyFormat? get keyFormat => _$this._keyFormat;
  set keyFormat(_i5.KeyFormat? keyFormat) => _$this._keyFormat = keyFormat;

  CreateKeyPairRequestBuilder() {
    CreateKeyPairRequest._init(this);
  }

  CreateKeyPairRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _keyName = $v.keyName;
      _dryRun = $v.dryRun;
      _keyType = $v.keyType;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _keyFormat = $v.keyFormat;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateKeyPairRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateKeyPairRequest;
  }

  @override
  void update(void Function(CreateKeyPairRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateKeyPairRequest build() => _build();

  _$CreateKeyPairRequest _build() {
    _$CreateKeyPairRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateKeyPairRequest._(
              keyName: BuiltValueNullFieldError.checkNotNull(
                  keyName, r'CreateKeyPairRequest', 'keyName'),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreateKeyPairRequest', 'dryRun'),
              keyType: keyType,
              tagSpecifications: _tagSpecifications?.build(),
              keyFormat: keyFormat);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateKeyPairRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
