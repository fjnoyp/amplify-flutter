// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.instance_attribute;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceAttribute extends InstanceAttribute {
  @override
  final _i8.BuiltList<_i2.GroupIdentifier>? groups;
  @override
  final _i8.BuiltList<_i3.InstanceBlockDeviceMapping>? blockDeviceMappings;
  @override
  final _i4.AttributeBooleanValue? disableApiTermination;
  @override
  final _i4.AttributeBooleanValue? enaSupport;
  @override
  final _i5.EnclaveOptions? enclaveOptions;
  @override
  final _i4.AttributeBooleanValue? ebsOptimized;
  @override
  final String? instanceId;
  @override
  final _i6.AttributeValue? instanceInitiatedShutdownBehavior;
  @override
  final _i6.AttributeValue? instanceType;
  @override
  final _i6.AttributeValue? kernelId;
  @override
  final _i8.BuiltList<_i7.ProductCode>? productCodes;
  @override
  final _i6.AttributeValue? ramdiskId;
  @override
  final _i6.AttributeValue? rootDeviceName;
  @override
  final _i4.AttributeBooleanValue? sourceDestCheck;
  @override
  final _i6.AttributeValue? sriovNetSupport;
  @override
  final _i6.AttributeValue? userData;
  @override
  final _i4.AttributeBooleanValue? disableApiStop;

  factory _$InstanceAttribute(
          [void Function(InstanceAttributeBuilder)? updates]) =>
      (new InstanceAttributeBuilder()..update(updates))._build();

  _$InstanceAttribute._(
      {this.groups,
      this.blockDeviceMappings,
      this.disableApiTermination,
      this.enaSupport,
      this.enclaveOptions,
      this.ebsOptimized,
      this.instanceId,
      this.instanceInitiatedShutdownBehavior,
      this.instanceType,
      this.kernelId,
      this.productCodes,
      this.ramdiskId,
      this.rootDeviceName,
      this.sourceDestCheck,
      this.sriovNetSupport,
      this.userData,
      this.disableApiStop})
      : super._();

  @override
  InstanceAttribute rebuild(void Function(InstanceAttributeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceAttributeBuilder toBuilder() =>
      new InstanceAttributeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceAttribute &&
        groups == other.groups &&
        blockDeviceMappings == other.blockDeviceMappings &&
        disableApiTermination == other.disableApiTermination &&
        enaSupport == other.enaSupport &&
        enclaveOptions == other.enclaveOptions &&
        ebsOptimized == other.ebsOptimized &&
        instanceId == other.instanceId &&
        instanceInitiatedShutdownBehavior ==
            other.instanceInitiatedShutdownBehavior &&
        instanceType == other.instanceType &&
        kernelId == other.kernelId &&
        productCodes == other.productCodes &&
        ramdiskId == other.ramdiskId &&
        rootDeviceName == other.rootDeviceName &&
        sourceDestCheck == other.sourceDestCheck &&
        sriovNetSupport == other.sriovNetSupport &&
        userData == other.userData &&
        disableApiStop == other.disableApiStop;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, groups.hashCode);
    _$hash = $jc(_$hash, blockDeviceMappings.hashCode);
    _$hash = $jc(_$hash, disableApiTermination.hashCode);
    _$hash = $jc(_$hash, enaSupport.hashCode);
    _$hash = $jc(_$hash, enclaveOptions.hashCode);
    _$hash = $jc(_$hash, ebsOptimized.hashCode);
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, instanceInitiatedShutdownBehavior.hashCode);
    _$hash = $jc(_$hash, instanceType.hashCode);
    _$hash = $jc(_$hash, kernelId.hashCode);
    _$hash = $jc(_$hash, productCodes.hashCode);
    _$hash = $jc(_$hash, ramdiskId.hashCode);
    _$hash = $jc(_$hash, rootDeviceName.hashCode);
    _$hash = $jc(_$hash, sourceDestCheck.hashCode);
    _$hash = $jc(_$hash, sriovNetSupport.hashCode);
    _$hash = $jc(_$hash, userData.hashCode);
    _$hash = $jc(_$hash, disableApiStop.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InstanceAttributeBuilder
    implements Builder<InstanceAttribute, InstanceAttributeBuilder> {
  _$InstanceAttribute? _$v;

  _i8.ListBuilder<_i2.GroupIdentifier>? _groups;
  _i8.ListBuilder<_i2.GroupIdentifier> get groups =>
      _$this._groups ??= new _i8.ListBuilder<_i2.GroupIdentifier>();
  set groups(_i8.ListBuilder<_i2.GroupIdentifier>? groups) =>
      _$this._groups = groups;

  _i8.ListBuilder<_i3.InstanceBlockDeviceMapping>? _blockDeviceMappings;
  _i8.ListBuilder<_i3.InstanceBlockDeviceMapping> get blockDeviceMappings =>
      _$this._blockDeviceMappings ??=
          new _i8.ListBuilder<_i3.InstanceBlockDeviceMapping>();
  set blockDeviceMappings(
          _i8.ListBuilder<_i3.InstanceBlockDeviceMapping>?
              blockDeviceMappings) =>
      _$this._blockDeviceMappings = blockDeviceMappings;

  _i4.AttributeBooleanValueBuilder? _disableApiTermination;
  _i4.AttributeBooleanValueBuilder get disableApiTermination =>
      _$this._disableApiTermination ??= new _i4.AttributeBooleanValueBuilder();
  set disableApiTermination(
          _i4.AttributeBooleanValueBuilder? disableApiTermination) =>
      _$this._disableApiTermination = disableApiTermination;

  _i4.AttributeBooleanValueBuilder? _enaSupport;
  _i4.AttributeBooleanValueBuilder get enaSupport =>
      _$this._enaSupport ??= new _i4.AttributeBooleanValueBuilder();
  set enaSupport(_i4.AttributeBooleanValueBuilder? enaSupport) =>
      _$this._enaSupport = enaSupport;

  _i5.EnclaveOptionsBuilder? _enclaveOptions;
  _i5.EnclaveOptionsBuilder get enclaveOptions =>
      _$this._enclaveOptions ??= new _i5.EnclaveOptionsBuilder();
  set enclaveOptions(_i5.EnclaveOptionsBuilder? enclaveOptions) =>
      _$this._enclaveOptions = enclaveOptions;

  _i4.AttributeBooleanValueBuilder? _ebsOptimized;
  _i4.AttributeBooleanValueBuilder get ebsOptimized =>
      _$this._ebsOptimized ??= new _i4.AttributeBooleanValueBuilder();
  set ebsOptimized(_i4.AttributeBooleanValueBuilder? ebsOptimized) =>
      _$this._ebsOptimized = ebsOptimized;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  _i6.AttributeValueBuilder? _instanceInitiatedShutdownBehavior;
  _i6.AttributeValueBuilder get instanceInitiatedShutdownBehavior =>
      _$this._instanceInitiatedShutdownBehavior ??=
          new _i6.AttributeValueBuilder();
  set instanceInitiatedShutdownBehavior(
          _i6.AttributeValueBuilder? instanceInitiatedShutdownBehavior) =>
      _$this._instanceInitiatedShutdownBehavior =
          instanceInitiatedShutdownBehavior;

  _i6.AttributeValueBuilder? _instanceType;
  _i6.AttributeValueBuilder get instanceType =>
      _$this._instanceType ??= new _i6.AttributeValueBuilder();
  set instanceType(_i6.AttributeValueBuilder? instanceType) =>
      _$this._instanceType = instanceType;

  _i6.AttributeValueBuilder? _kernelId;
  _i6.AttributeValueBuilder get kernelId =>
      _$this._kernelId ??= new _i6.AttributeValueBuilder();
  set kernelId(_i6.AttributeValueBuilder? kernelId) =>
      _$this._kernelId = kernelId;

  _i8.ListBuilder<_i7.ProductCode>? _productCodes;
  _i8.ListBuilder<_i7.ProductCode> get productCodes =>
      _$this._productCodes ??= new _i8.ListBuilder<_i7.ProductCode>();
  set productCodes(_i8.ListBuilder<_i7.ProductCode>? productCodes) =>
      _$this._productCodes = productCodes;

  _i6.AttributeValueBuilder? _ramdiskId;
  _i6.AttributeValueBuilder get ramdiskId =>
      _$this._ramdiskId ??= new _i6.AttributeValueBuilder();
  set ramdiskId(_i6.AttributeValueBuilder? ramdiskId) =>
      _$this._ramdiskId = ramdiskId;

  _i6.AttributeValueBuilder? _rootDeviceName;
  _i6.AttributeValueBuilder get rootDeviceName =>
      _$this._rootDeviceName ??= new _i6.AttributeValueBuilder();
  set rootDeviceName(_i6.AttributeValueBuilder? rootDeviceName) =>
      _$this._rootDeviceName = rootDeviceName;

  _i4.AttributeBooleanValueBuilder? _sourceDestCheck;
  _i4.AttributeBooleanValueBuilder get sourceDestCheck =>
      _$this._sourceDestCheck ??= new _i4.AttributeBooleanValueBuilder();
  set sourceDestCheck(_i4.AttributeBooleanValueBuilder? sourceDestCheck) =>
      _$this._sourceDestCheck = sourceDestCheck;

  _i6.AttributeValueBuilder? _sriovNetSupport;
  _i6.AttributeValueBuilder get sriovNetSupport =>
      _$this._sriovNetSupport ??= new _i6.AttributeValueBuilder();
  set sriovNetSupport(_i6.AttributeValueBuilder? sriovNetSupport) =>
      _$this._sriovNetSupport = sriovNetSupport;

  _i6.AttributeValueBuilder? _userData;
  _i6.AttributeValueBuilder get userData =>
      _$this._userData ??= new _i6.AttributeValueBuilder();
  set userData(_i6.AttributeValueBuilder? userData) =>
      _$this._userData = userData;

  _i4.AttributeBooleanValueBuilder? _disableApiStop;
  _i4.AttributeBooleanValueBuilder get disableApiStop =>
      _$this._disableApiStop ??= new _i4.AttributeBooleanValueBuilder();
  set disableApiStop(_i4.AttributeBooleanValueBuilder? disableApiStop) =>
      _$this._disableApiStop = disableApiStop;

  InstanceAttributeBuilder() {
    InstanceAttribute._init(this);
  }

  InstanceAttributeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _groups = $v.groups?.toBuilder();
      _blockDeviceMappings = $v.blockDeviceMappings?.toBuilder();
      _disableApiTermination = $v.disableApiTermination?.toBuilder();
      _enaSupport = $v.enaSupport?.toBuilder();
      _enclaveOptions = $v.enclaveOptions?.toBuilder();
      _ebsOptimized = $v.ebsOptimized?.toBuilder();
      _instanceId = $v.instanceId;
      _instanceInitiatedShutdownBehavior =
          $v.instanceInitiatedShutdownBehavior?.toBuilder();
      _instanceType = $v.instanceType?.toBuilder();
      _kernelId = $v.kernelId?.toBuilder();
      _productCodes = $v.productCodes?.toBuilder();
      _ramdiskId = $v.ramdiskId?.toBuilder();
      _rootDeviceName = $v.rootDeviceName?.toBuilder();
      _sourceDestCheck = $v.sourceDestCheck?.toBuilder();
      _sriovNetSupport = $v.sriovNetSupport?.toBuilder();
      _userData = $v.userData?.toBuilder();
      _disableApiStop = $v.disableApiStop?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceAttribute other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InstanceAttribute;
  }

  @override
  void update(void Function(InstanceAttributeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceAttribute build() => _build();

  _$InstanceAttribute _build() {
    _$InstanceAttribute _$result;
    try {
      _$result = _$v ??
          new _$InstanceAttribute._(
              groups: _groups?.build(),
              blockDeviceMappings: _blockDeviceMappings?.build(),
              disableApiTermination: _disableApiTermination?.build(),
              enaSupport: _enaSupport?.build(),
              enclaveOptions: _enclaveOptions?.build(),
              ebsOptimized: _ebsOptimized?.build(),
              instanceId: instanceId,
              instanceInitiatedShutdownBehavior:
                  _instanceInitiatedShutdownBehavior?.build(),
              instanceType: _instanceType?.build(),
              kernelId: _kernelId?.build(),
              productCodes: _productCodes?.build(),
              ramdiskId: _ramdiskId?.build(),
              rootDeviceName: _rootDeviceName?.build(),
              sourceDestCheck: _sourceDestCheck?.build(),
              sriovNetSupport: _sriovNetSupport?.build(),
              userData: _userData?.build(),
              disableApiStop: _disableApiStop?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'groups';
        _groups?.build();
        _$failedField = 'blockDeviceMappings';
        _blockDeviceMappings?.build();
        _$failedField = 'disableApiTermination';
        _disableApiTermination?.build();
        _$failedField = 'enaSupport';
        _enaSupport?.build();
        _$failedField = 'enclaveOptions';
        _enclaveOptions?.build();
        _$failedField = 'ebsOptimized';
        _ebsOptimized?.build();

        _$failedField = 'instanceInitiatedShutdownBehavior';
        _instanceInitiatedShutdownBehavior?.build();
        _$failedField = 'instanceType';
        _instanceType?.build();
        _$failedField = 'kernelId';
        _kernelId?.build();
        _$failedField = 'productCodes';
        _productCodes?.build();
        _$failedField = 'ramdiskId';
        _ramdiskId?.build();
        _$failedField = 'rootDeviceName';
        _rootDeviceName?.build();
        _$failedField = 'sourceDestCheck';
        _sourceDestCheck?.build();
        _$failedField = 'sriovNetSupport';
        _sriovNetSupport?.build();
        _$failedField = 'userData';
        _userData?.build();
        _$failedField = 'disableApiStop';
        _disableApiStop?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'InstanceAttribute', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
