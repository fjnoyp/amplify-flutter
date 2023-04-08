// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.import_key_pair_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImportKeyPairRequest extends ImportKeyPairRequest {
  @override
  final bool dryRun;
  @override
  final String keyName;
  @override
  final _i3.Uint8List publicKeyMaterial;
  @override
  final _i5.BuiltList<_i4.TagSpecification>? tagSpecifications;

  factory _$ImportKeyPairRequest(
          [void Function(ImportKeyPairRequestBuilder)? updates]) =>
      (new ImportKeyPairRequestBuilder()..update(updates))._build();

  _$ImportKeyPairRequest._(
      {required this.dryRun,
      required this.keyName,
      required this.publicKeyMaterial,
      this.tagSpecifications})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ImportKeyPairRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        keyName, r'ImportKeyPairRequest', 'keyName');
    BuiltValueNullFieldError.checkNotNull(
        publicKeyMaterial, r'ImportKeyPairRequest', 'publicKeyMaterial');
  }

  @override
  ImportKeyPairRequest rebuild(
          void Function(ImportKeyPairRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImportKeyPairRequestBuilder toBuilder() =>
      new ImportKeyPairRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImportKeyPairRequest &&
        dryRun == other.dryRun &&
        keyName == other.keyName &&
        publicKeyMaterial == other.publicKeyMaterial &&
        tagSpecifications == other.tagSpecifications;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, keyName.hashCode);
    _$hash = $jc(_$hash, publicKeyMaterial.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ImportKeyPairRequestBuilder
    implements Builder<ImportKeyPairRequest, ImportKeyPairRequestBuilder> {
  _$ImportKeyPairRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _keyName;
  String? get keyName => _$this._keyName;
  set keyName(String? keyName) => _$this._keyName = keyName;

  _i3.Uint8List? _publicKeyMaterial;
  _i3.Uint8List? get publicKeyMaterial => _$this._publicKeyMaterial;
  set publicKeyMaterial(_i3.Uint8List? publicKeyMaterial) =>
      _$this._publicKeyMaterial = publicKeyMaterial;

  _i5.ListBuilder<_i4.TagSpecification>? _tagSpecifications;
  _i5.ListBuilder<_i4.TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i5.ListBuilder<_i4.TagSpecification>();
  set tagSpecifications(
          _i5.ListBuilder<_i4.TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  ImportKeyPairRequestBuilder() {
    ImportKeyPairRequest._init(this);
  }

  ImportKeyPairRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _keyName = $v.keyName;
      _publicKeyMaterial = $v.publicKeyMaterial;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImportKeyPairRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImportKeyPairRequest;
  }

  @override
  void update(void Function(ImportKeyPairRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImportKeyPairRequest build() => _build();

  _$ImportKeyPairRequest _build() {
    _$ImportKeyPairRequest _$result;
    try {
      _$result = _$v ??
          new _$ImportKeyPairRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'ImportKeyPairRequest', 'dryRun'),
              keyName: BuiltValueNullFieldError.checkNotNull(
                  keyName, r'ImportKeyPairRequest', 'keyName'),
              publicKeyMaterial: BuiltValueNullFieldError.checkNotNull(
                  publicKeyMaterial,
                  r'ImportKeyPairRequest',
                  'publicKeyMaterial'),
              tagSpecifications: _tagSpecifications?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ImportKeyPairRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
