// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.fpga_image;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FpgaImage extends FpgaImage {
  @override
  final String? fpgaImageId;
  @override
  final String? fpgaImageGlobalId;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? shellVersion;
  @override
  final _i2.PciId? pciId;
  @override
  final _i3.FpgaImageState? state;
  @override
  final DateTime? createTime;
  @override
  final DateTime? updateTime;
  @override
  final String? ownerId;
  @override
  final String? ownerAlias;
  @override
  final _i6.BuiltList<_i4.ProductCode>? productCodes;
  @override
  final _i6.BuiltList<_i5.Tag>? tags;
  @override
  final bool public;
  @override
  final bool dataRetentionSupport;

  factory _$FpgaImage([void Function(FpgaImageBuilder)? updates]) =>
      (new FpgaImageBuilder()..update(updates))._build();

  _$FpgaImage._(
      {this.fpgaImageId,
      this.fpgaImageGlobalId,
      this.name,
      this.description,
      this.shellVersion,
      this.pciId,
      this.state,
      this.createTime,
      this.updateTime,
      this.ownerId,
      this.ownerAlias,
      this.productCodes,
      this.tags,
      required this.public,
      required this.dataRetentionSupport})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(public, r'FpgaImage', 'public');
    BuiltValueNullFieldError.checkNotNull(
        dataRetentionSupport, r'FpgaImage', 'dataRetentionSupport');
  }

  @override
  FpgaImage rebuild(void Function(FpgaImageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FpgaImageBuilder toBuilder() => new FpgaImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FpgaImage &&
        fpgaImageId == other.fpgaImageId &&
        fpgaImageGlobalId == other.fpgaImageGlobalId &&
        name == other.name &&
        description == other.description &&
        shellVersion == other.shellVersion &&
        pciId == other.pciId &&
        state == other.state &&
        createTime == other.createTime &&
        updateTime == other.updateTime &&
        ownerId == other.ownerId &&
        ownerAlias == other.ownerAlias &&
        productCodes == other.productCodes &&
        tags == other.tags &&
        public == other.public &&
        dataRetentionSupport == other.dataRetentionSupport;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fpgaImageId.hashCode);
    _$hash = $jc(_$hash, fpgaImageGlobalId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, shellVersion.hashCode);
    _$hash = $jc(_$hash, pciId.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, createTime.hashCode);
    _$hash = $jc(_$hash, updateTime.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jc(_$hash, ownerAlias.hashCode);
    _$hash = $jc(_$hash, productCodes.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, public.hashCode);
    _$hash = $jc(_$hash, dataRetentionSupport.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class FpgaImageBuilder implements Builder<FpgaImage, FpgaImageBuilder> {
  _$FpgaImage? _$v;

  String? _fpgaImageId;
  String? get fpgaImageId => _$this._fpgaImageId;
  set fpgaImageId(String? fpgaImageId) => _$this._fpgaImageId = fpgaImageId;

  String? _fpgaImageGlobalId;
  String? get fpgaImageGlobalId => _$this._fpgaImageGlobalId;
  set fpgaImageGlobalId(String? fpgaImageGlobalId) =>
      _$this._fpgaImageGlobalId = fpgaImageGlobalId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _shellVersion;
  String? get shellVersion => _$this._shellVersion;
  set shellVersion(String? shellVersion) => _$this._shellVersion = shellVersion;

  _i2.PciIdBuilder? _pciId;
  _i2.PciIdBuilder get pciId => _$this._pciId ??= new _i2.PciIdBuilder();
  set pciId(_i2.PciIdBuilder? pciId) => _$this._pciId = pciId;

  _i3.FpgaImageStateBuilder? _state;
  _i3.FpgaImageStateBuilder get state =>
      _$this._state ??= new _i3.FpgaImageStateBuilder();
  set state(_i3.FpgaImageStateBuilder? state) => _$this._state = state;

  DateTime? _createTime;
  DateTime? get createTime => _$this._createTime;
  set createTime(DateTime? createTime) => _$this._createTime = createTime;

  DateTime? _updateTime;
  DateTime? get updateTime => _$this._updateTime;
  set updateTime(DateTime? updateTime) => _$this._updateTime = updateTime;

  String? _ownerId;
  String? get ownerId => _$this._ownerId;
  set ownerId(String? ownerId) => _$this._ownerId = ownerId;

  String? _ownerAlias;
  String? get ownerAlias => _$this._ownerAlias;
  set ownerAlias(String? ownerAlias) => _$this._ownerAlias = ownerAlias;

  _i6.ListBuilder<_i4.ProductCode>? _productCodes;
  _i6.ListBuilder<_i4.ProductCode> get productCodes =>
      _$this._productCodes ??= new _i6.ListBuilder<_i4.ProductCode>();
  set productCodes(_i6.ListBuilder<_i4.ProductCode>? productCodes) =>
      _$this._productCodes = productCodes;

  _i6.ListBuilder<_i5.Tag>? _tags;
  _i6.ListBuilder<_i5.Tag> get tags =>
      _$this._tags ??= new _i6.ListBuilder<_i5.Tag>();
  set tags(_i6.ListBuilder<_i5.Tag>? tags) => _$this._tags = tags;

  bool? _public;
  bool? get public => _$this._public;
  set public(bool? public) => _$this._public = public;

  bool? _dataRetentionSupport;
  bool? get dataRetentionSupport => _$this._dataRetentionSupport;
  set dataRetentionSupport(bool? dataRetentionSupport) =>
      _$this._dataRetentionSupport = dataRetentionSupport;

  FpgaImageBuilder() {
    FpgaImage._init(this);
  }

  FpgaImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fpgaImageId = $v.fpgaImageId;
      _fpgaImageGlobalId = $v.fpgaImageGlobalId;
      _name = $v.name;
      _description = $v.description;
      _shellVersion = $v.shellVersion;
      _pciId = $v.pciId?.toBuilder();
      _state = $v.state?.toBuilder();
      _createTime = $v.createTime;
      _updateTime = $v.updateTime;
      _ownerId = $v.ownerId;
      _ownerAlias = $v.ownerAlias;
      _productCodes = $v.productCodes?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _public = $v.public;
      _dataRetentionSupport = $v.dataRetentionSupport;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FpgaImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FpgaImage;
  }

  @override
  void update(void Function(FpgaImageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FpgaImage build() => _build();

  _$FpgaImage _build() {
    _$FpgaImage _$result;
    try {
      _$result = _$v ??
          new _$FpgaImage._(
              fpgaImageId: fpgaImageId,
              fpgaImageGlobalId: fpgaImageGlobalId,
              name: name,
              description: description,
              shellVersion: shellVersion,
              pciId: _pciId?.build(),
              state: _state?.build(),
              createTime: createTime,
              updateTime: updateTime,
              ownerId: ownerId,
              ownerAlias: ownerAlias,
              productCodes: _productCodes?.build(),
              tags: _tags?.build(),
              public: BuiltValueNullFieldError.checkNotNull(
                  public, r'FpgaImage', 'public'),
              dataRetentionSupport: BuiltValueNullFieldError.checkNotNull(
                  dataRetentionSupport, r'FpgaImage', 'dataRetentionSupport'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pciId';
        _pciId?.build();
        _$failedField = 'state';
        _state?.build();

        _$failedField = 'productCodes';
        _productCodes?.build();
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'FpgaImage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
