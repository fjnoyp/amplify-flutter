// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.image_attribute;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImageAttribute extends ImageAttribute {
  @override
  final _i6.BuiltList<_i2.BlockDeviceMapping>? blockDeviceMappings;
  @override
  final String? imageId;
  @override
  final _i6.BuiltList<_i3.LaunchPermission>? launchPermissions;
  @override
  final _i6.BuiltList<_i4.ProductCode>? productCodes;
  @override
  final _i5.AttributeValue? description;
  @override
  final _i5.AttributeValue? kernelId;
  @override
  final _i5.AttributeValue? ramdiskId;
  @override
  final _i5.AttributeValue? sriovNetSupport;
  @override
  final _i5.AttributeValue? bootMode;
  @override
  final _i5.AttributeValue? tpmSupport;
  @override
  final _i5.AttributeValue? uefiData;
  @override
  final _i5.AttributeValue? lastLaunchedTime;
  @override
  final _i5.AttributeValue? imdsSupport;

  factory _$ImageAttribute([void Function(ImageAttributeBuilder)? updates]) =>
      (new ImageAttributeBuilder()..update(updates))._build();

  _$ImageAttribute._(
      {this.blockDeviceMappings,
      this.imageId,
      this.launchPermissions,
      this.productCodes,
      this.description,
      this.kernelId,
      this.ramdiskId,
      this.sriovNetSupport,
      this.bootMode,
      this.tpmSupport,
      this.uefiData,
      this.lastLaunchedTime,
      this.imdsSupport})
      : super._();

  @override
  ImageAttribute rebuild(void Function(ImageAttributeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImageAttributeBuilder toBuilder() =>
      new ImageAttributeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImageAttribute &&
        blockDeviceMappings == other.blockDeviceMappings &&
        imageId == other.imageId &&
        launchPermissions == other.launchPermissions &&
        productCodes == other.productCodes &&
        description == other.description &&
        kernelId == other.kernelId &&
        ramdiskId == other.ramdiskId &&
        sriovNetSupport == other.sriovNetSupport &&
        bootMode == other.bootMode &&
        tpmSupport == other.tpmSupport &&
        uefiData == other.uefiData &&
        lastLaunchedTime == other.lastLaunchedTime &&
        imdsSupport == other.imdsSupport;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, blockDeviceMappings.hashCode);
    _$hash = $jc(_$hash, imageId.hashCode);
    _$hash = $jc(_$hash, launchPermissions.hashCode);
    _$hash = $jc(_$hash, productCodes.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, kernelId.hashCode);
    _$hash = $jc(_$hash, ramdiskId.hashCode);
    _$hash = $jc(_$hash, sriovNetSupport.hashCode);
    _$hash = $jc(_$hash, bootMode.hashCode);
    _$hash = $jc(_$hash, tpmSupport.hashCode);
    _$hash = $jc(_$hash, uefiData.hashCode);
    _$hash = $jc(_$hash, lastLaunchedTime.hashCode);
    _$hash = $jc(_$hash, imdsSupport.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ImageAttributeBuilder
    implements Builder<ImageAttribute, ImageAttributeBuilder> {
  _$ImageAttribute? _$v;

  _i6.ListBuilder<_i2.BlockDeviceMapping>? _blockDeviceMappings;
  _i6.ListBuilder<_i2.BlockDeviceMapping> get blockDeviceMappings =>
      _$this._blockDeviceMappings ??=
          new _i6.ListBuilder<_i2.BlockDeviceMapping>();
  set blockDeviceMappings(
          _i6.ListBuilder<_i2.BlockDeviceMapping>? blockDeviceMappings) =>
      _$this._blockDeviceMappings = blockDeviceMappings;

  String? _imageId;
  String? get imageId => _$this._imageId;
  set imageId(String? imageId) => _$this._imageId = imageId;

  _i6.ListBuilder<_i3.LaunchPermission>? _launchPermissions;
  _i6.ListBuilder<_i3.LaunchPermission> get launchPermissions =>
      _$this._launchPermissions ??= new _i6.ListBuilder<_i3.LaunchPermission>();
  set launchPermissions(
          _i6.ListBuilder<_i3.LaunchPermission>? launchPermissions) =>
      _$this._launchPermissions = launchPermissions;

  _i6.ListBuilder<_i4.ProductCode>? _productCodes;
  _i6.ListBuilder<_i4.ProductCode> get productCodes =>
      _$this._productCodes ??= new _i6.ListBuilder<_i4.ProductCode>();
  set productCodes(_i6.ListBuilder<_i4.ProductCode>? productCodes) =>
      _$this._productCodes = productCodes;

  _i5.AttributeValueBuilder? _description;
  _i5.AttributeValueBuilder get description =>
      _$this._description ??= new _i5.AttributeValueBuilder();
  set description(_i5.AttributeValueBuilder? description) =>
      _$this._description = description;

  _i5.AttributeValueBuilder? _kernelId;
  _i5.AttributeValueBuilder get kernelId =>
      _$this._kernelId ??= new _i5.AttributeValueBuilder();
  set kernelId(_i5.AttributeValueBuilder? kernelId) =>
      _$this._kernelId = kernelId;

  _i5.AttributeValueBuilder? _ramdiskId;
  _i5.AttributeValueBuilder get ramdiskId =>
      _$this._ramdiskId ??= new _i5.AttributeValueBuilder();
  set ramdiskId(_i5.AttributeValueBuilder? ramdiskId) =>
      _$this._ramdiskId = ramdiskId;

  _i5.AttributeValueBuilder? _sriovNetSupport;
  _i5.AttributeValueBuilder get sriovNetSupport =>
      _$this._sriovNetSupport ??= new _i5.AttributeValueBuilder();
  set sriovNetSupport(_i5.AttributeValueBuilder? sriovNetSupport) =>
      _$this._sriovNetSupport = sriovNetSupport;

  _i5.AttributeValueBuilder? _bootMode;
  _i5.AttributeValueBuilder get bootMode =>
      _$this._bootMode ??= new _i5.AttributeValueBuilder();
  set bootMode(_i5.AttributeValueBuilder? bootMode) =>
      _$this._bootMode = bootMode;

  _i5.AttributeValueBuilder? _tpmSupport;
  _i5.AttributeValueBuilder get tpmSupport =>
      _$this._tpmSupport ??= new _i5.AttributeValueBuilder();
  set tpmSupport(_i5.AttributeValueBuilder? tpmSupport) =>
      _$this._tpmSupport = tpmSupport;

  _i5.AttributeValueBuilder? _uefiData;
  _i5.AttributeValueBuilder get uefiData =>
      _$this._uefiData ??= new _i5.AttributeValueBuilder();
  set uefiData(_i5.AttributeValueBuilder? uefiData) =>
      _$this._uefiData = uefiData;

  _i5.AttributeValueBuilder? _lastLaunchedTime;
  _i5.AttributeValueBuilder get lastLaunchedTime =>
      _$this._lastLaunchedTime ??= new _i5.AttributeValueBuilder();
  set lastLaunchedTime(_i5.AttributeValueBuilder? lastLaunchedTime) =>
      _$this._lastLaunchedTime = lastLaunchedTime;

  _i5.AttributeValueBuilder? _imdsSupport;
  _i5.AttributeValueBuilder get imdsSupport =>
      _$this._imdsSupport ??= new _i5.AttributeValueBuilder();
  set imdsSupport(_i5.AttributeValueBuilder? imdsSupport) =>
      _$this._imdsSupport = imdsSupport;

  ImageAttributeBuilder() {
    ImageAttribute._init(this);
  }

  ImageAttributeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _blockDeviceMappings = $v.blockDeviceMappings?.toBuilder();
      _imageId = $v.imageId;
      _launchPermissions = $v.launchPermissions?.toBuilder();
      _productCodes = $v.productCodes?.toBuilder();
      _description = $v.description?.toBuilder();
      _kernelId = $v.kernelId?.toBuilder();
      _ramdiskId = $v.ramdiskId?.toBuilder();
      _sriovNetSupport = $v.sriovNetSupport?.toBuilder();
      _bootMode = $v.bootMode?.toBuilder();
      _tpmSupport = $v.tpmSupport?.toBuilder();
      _uefiData = $v.uefiData?.toBuilder();
      _lastLaunchedTime = $v.lastLaunchedTime?.toBuilder();
      _imdsSupport = $v.imdsSupport?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImageAttribute other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImageAttribute;
  }

  @override
  void update(void Function(ImageAttributeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImageAttribute build() => _build();

  _$ImageAttribute _build() {
    _$ImageAttribute _$result;
    try {
      _$result = _$v ??
          new _$ImageAttribute._(
              blockDeviceMappings: _blockDeviceMappings?.build(),
              imageId: imageId,
              launchPermissions: _launchPermissions?.build(),
              productCodes: _productCodes?.build(),
              description: _description?.build(),
              kernelId: _kernelId?.build(),
              ramdiskId: _ramdiskId?.build(),
              sriovNetSupport: _sriovNetSupport?.build(),
              bootMode: _bootMode?.build(),
              tpmSupport: _tpmSupport?.build(),
              uefiData: _uefiData?.build(),
              lastLaunchedTime: _lastLaunchedTime?.build(),
              imdsSupport: _imdsSupport?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'blockDeviceMappings';
        _blockDeviceMappings?.build();

        _$failedField = 'launchPermissions';
        _launchPermissions?.build();
        _$failedField = 'productCodes';
        _productCodes?.build();
        _$failedField = 'description';
        _description?.build();
        _$failedField = 'kernelId';
        _kernelId?.build();
        _$failedField = 'ramdiskId';
        _ramdiskId?.build();
        _$failedField = 'sriovNetSupport';
        _sriovNetSupport?.build();
        _$failedField = 'bootMode';
        _bootMode?.build();
        _$failedField = 'tpmSupport';
        _tpmSupport?.build();
        _$failedField = 'uefiData';
        _uefiData?.build();
        _$failedField = 'lastLaunchedTime';
        _lastLaunchedTime?.build();
        _$failedField = 'imdsSupport';
        _imdsSupport?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ImageAttribute', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
