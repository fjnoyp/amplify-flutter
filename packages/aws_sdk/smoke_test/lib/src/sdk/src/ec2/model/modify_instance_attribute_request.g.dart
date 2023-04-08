// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.modify_instance_attribute_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyInstanceAttributeRequest extends ModifyInstanceAttributeRequest {
  @override
  final _i3.AttributeBooleanValue? sourceDestCheck;
  @override
  final _i4.InstanceAttributeName? attribute;
  @override
  final _i8.BuiltList<_i5.InstanceBlockDeviceMappingSpecification>?
      blockDeviceMappings;
  @override
  final _i3.AttributeBooleanValue? disableApiTermination;
  @override
  final bool dryRun;
  @override
  final _i3.AttributeBooleanValue? ebsOptimized;
  @override
  final _i3.AttributeBooleanValue? enaSupport;
  @override
  final _i8.BuiltList<String>? groups;
  @override
  final String instanceId;
  @override
  final _i6.AttributeValue? instanceInitiatedShutdownBehavior;
  @override
  final _i6.AttributeValue? instanceType;
  @override
  final _i6.AttributeValue? kernel;
  @override
  final _i6.AttributeValue? ramdisk;
  @override
  final _i6.AttributeValue? sriovNetSupport;
  @override
  final _i7.BlobAttributeValue? userData;
  @override
  final String? value;
  @override
  final _i3.AttributeBooleanValue? disableApiStop;

  factory _$ModifyInstanceAttributeRequest(
          [void Function(ModifyInstanceAttributeRequestBuilder)? updates]) =>
      (new ModifyInstanceAttributeRequestBuilder()..update(updates))._build();

  _$ModifyInstanceAttributeRequest._(
      {this.sourceDestCheck,
      this.attribute,
      this.blockDeviceMappings,
      this.disableApiTermination,
      required this.dryRun,
      this.ebsOptimized,
      this.enaSupport,
      this.groups,
      required this.instanceId,
      this.instanceInitiatedShutdownBehavior,
      this.instanceType,
      this.kernel,
      this.ramdisk,
      this.sriovNetSupport,
      this.userData,
      this.value,
      this.disableApiStop})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ModifyInstanceAttributeRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        instanceId, r'ModifyInstanceAttributeRequest', 'instanceId');
  }

  @override
  ModifyInstanceAttributeRequest rebuild(
          void Function(ModifyInstanceAttributeRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyInstanceAttributeRequestBuilder toBuilder() =>
      new ModifyInstanceAttributeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyInstanceAttributeRequest &&
        sourceDestCheck == other.sourceDestCheck &&
        attribute == other.attribute &&
        blockDeviceMappings == other.blockDeviceMappings &&
        disableApiTermination == other.disableApiTermination &&
        dryRun == other.dryRun &&
        ebsOptimized == other.ebsOptimized &&
        enaSupport == other.enaSupport &&
        groups == other.groups &&
        instanceId == other.instanceId &&
        instanceInitiatedShutdownBehavior ==
            other.instanceInitiatedShutdownBehavior &&
        instanceType == other.instanceType &&
        kernel == other.kernel &&
        ramdisk == other.ramdisk &&
        sriovNetSupport == other.sriovNetSupport &&
        userData == other.userData &&
        value == other.value &&
        disableApiStop == other.disableApiStop;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sourceDestCheck.hashCode);
    _$hash = $jc(_$hash, attribute.hashCode);
    _$hash = $jc(_$hash, blockDeviceMappings.hashCode);
    _$hash = $jc(_$hash, disableApiTermination.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, ebsOptimized.hashCode);
    _$hash = $jc(_$hash, enaSupport.hashCode);
    _$hash = $jc(_$hash, groups.hashCode);
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, instanceInitiatedShutdownBehavior.hashCode);
    _$hash = $jc(_$hash, instanceType.hashCode);
    _$hash = $jc(_$hash, kernel.hashCode);
    _$hash = $jc(_$hash, ramdisk.hashCode);
    _$hash = $jc(_$hash, sriovNetSupport.hashCode);
    _$hash = $jc(_$hash, userData.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, disableApiStop.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyInstanceAttributeRequestBuilder
    implements
        Builder<ModifyInstanceAttributeRequest,
            ModifyInstanceAttributeRequestBuilder> {
  _$ModifyInstanceAttributeRequest? _$v;

  _i3.AttributeBooleanValueBuilder? _sourceDestCheck;
  _i3.AttributeBooleanValueBuilder get sourceDestCheck =>
      _$this._sourceDestCheck ??= new _i3.AttributeBooleanValueBuilder();
  set sourceDestCheck(_i3.AttributeBooleanValueBuilder? sourceDestCheck) =>
      _$this._sourceDestCheck = sourceDestCheck;

  _i4.InstanceAttributeName? _attribute;
  _i4.InstanceAttributeName? get attribute => _$this._attribute;
  set attribute(_i4.InstanceAttributeName? attribute) =>
      _$this._attribute = attribute;

  _i8.ListBuilder<_i5.InstanceBlockDeviceMappingSpecification>?
      _blockDeviceMappings;
  _i8.ListBuilder<_i5.InstanceBlockDeviceMappingSpecification>
      get blockDeviceMappings => _$this._blockDeviceMappings ??=
          new _i8.ListBuilder<_i5.InstanceBlockDeviceMappingSpecification>();
  set blockDeviceMappings(
          _i8.ListBuilder<_i5.InstanceBlockDeviceMappingSpecification>?
              blockDeviceMappings) =>
      _$this._blockDeviceMappings = blockDeviceMappings;

  _i3.AttributeBooleanValueBuilder? _disableApiTermination;
  _i3.AttributeBooleanValueBuilder get disableApiTermination =>
      _$this._disableApiTermination ??= new _i3.AttributeBooleanValueBuilder();
  set disableApiTermination(
          _i3.AttributeBooleanValueBuilder? disableApiTermination) =>
      _$this._disableApiTermination = disableApiTermination;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i3.AttributeBooleanValueBuilder? _ebsOptimized;
  _i3.AttributeBooleanValueBuilder get ebsOptimized =>
      _$this._ebsOptimized ??= new _i3.AttributeBooleanValueBuilder();
  set ebsOptimized(_i3.AttributeBooleanValueBuilder? ebsOptimized) =>
      _$this._ebsOptimized = ebsOptimized;

  _i3.AttributeBooleanValueBuilder? _enaSupport;
  _i3.AttributeBooleanValueBuilder get enaSupport =>
      _$this._enaSupport ??= new _i3.AttributeBooleanValueBuilder();
  set enaSupport(_i3.AttributeBooleanValueBuilder? enaSupport) =>
      _$this._enaSupport = enaSupport;

  _i8.ListBuilder<String>? _groups;
  _i8.ListBuilder<String> get groups =>
      _$this._groups ??= new _i8.ListBuilder<String>();
  set groups(_i8.ListBuilder<String>? groups) => _$this._groups = groups;

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

  _i6.AttributeValueBuilder? _kernel;
  _i6.AttributeValueBuilder get kernel =>
      _$this._kernel ??= new _i6.AttributeValueBuilder();
  set kernel(_i6.AttributeValueBuilder? kernel) => _$this._kernel = kernel;

  _i6.AttributeValueBuilder? _ramdisk;
  _i6.AttributeValueBuilder get ramdisk =>
      _$this._ramdisk ??= new _i6.AttributeValueBuilder();
  set ramdisk(_i6.AttributeValueBuilder? ramdisk) => _$this._ramdisk = ramdisk;

  _i6.AttributeValueBuilder? _sriovNetSupport;
  _i6.AttributeValueBuilder get sriovNetSupport =>
      _$this._sriovNetSupport ??= new _i6.AttributeValueBuilder();
  set sriovNetSupport(_i6.AttributeValueBuilder? sriovNetSupport) =>
      _$this._sriovNetSupport = sriovNetSupport;

  _i7.BlobAttributeValueBuilder? _userData;
  _i7.BlobAttributeValueBuilder get userData =>
      _$this._userData ??= new _i7.BlobAttributeValueBuilder();
  set userData(_i7.BlobAttributeValueBuilder? userData) =>
      _$this._userData = userData;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  _i3.AttributeBooleanValueBuilder? _disableApiStop;
  _i3.AttributeBooleanValueBuilder get disableApiStop =>
      _$this._disableApiStop ??= new _i3.AttributeBooleanValueBuilder();
  set disableApiStop(_i3.AttributeBooleanValueBuilder? disableApiStop) =>
      _$this._disableApiStop = disableApiStop;

  ModifyInstanceAttributeRequestBuilder() {
    ModifyInstanceAttributeRequest._init(this);
  }

  ModifyInstanceAttributeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sourceDestCheck = $v.sourceDestCheck?.toBuilder();
      _attribute = $v.attribute;
      _blockDeviceMappings = $v.blockDeviceMappings?.toBuilder();
      _disableApiTermination = $v.disableApiTermination?.toBuilder();
      _dryRun = $v.dryRun;
      _ebsOptimized = $v.ebsOptimized?.toBuilder();
      _enaSupport = $v.enaSupport?.toBuilder();
      _groups = $v.groups?.toBuilder();
      _instanceId = $v.instanceId;
      _instanceInitiatedShutdownBehavior =
          $v.instanceInitiatedShutdownBehavior?.toBuilder();
      _instanceType = $v.instanceType?.toBuilder();
      _kernel = $v.kernel?.toBuilder();
      _ramdisk = $v.ramdisk?.toBuilder();
      _sriovNetSupport = $v.sriovNetSupport?.toBuilder();
      _userData = $v.userData?.toBuilder();
      _value = $v.value;
      _disableApiStop = $v.disableApiStop?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyInstanceAttributeRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyInstanceAttributeRequest;
  }

  @override
  void update(void Function(ModifyInstanceAttributeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyInstanceAttributeRequest build() => _build();

  _$ModifyInstanceAttributeRequest _build() {
    _$ModifyInstanceAttributeRequest _$result;
    try {
      _$result = _$v ??
          new _$ModifyInstanceAttributeRequest._(
              sourceDestCheck: _sourceDestCheck?.build(),
              attribute: attribute,
              blockDeviceMappings: _blockDeviceMappings?.build(),
              disableApiTermination: _disableApiTermination?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'ModifyInstanceAttributeRequest', 'dryRun'),
              ebsOptimized: _ebsOptimized?.build(),
              enaSupport: _enaSupport?.build(),
              groups: _groups?.build(),
              instanceId: BuiltValueNullFieldError.checkNotNull(
                  instanceId, r'ModifyInstanceAttributeRequest', 'instanceId'),
              instanceInitiatedShutdownBehavior:
                  _instanceInitiatedShutdownBehavior?.build(),
              instanceType: _instanceType?.build(),
              kernel: _kernel?.build(),
              ramdisk: _ramdisk?.build(),
              sriovNetSupport: _sriovNetSupport?.build(),
              userData: _userData?.build(),
              value: value,
              disableApiStop: _disableApiStop?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sourceDestCheck';
        _sourceDestCheck?.build();

        _$failedField = 'blockDeviceMappings';
        _blockDeviceMappings?.build();
        _$failedField = 'disableApiTermination';
        _disableApiTermination?.build();

        _$failedField = 'ebsOptimized';
        _ebsOptimized?.build();
        _$failedField = 'enaSupport';
        _enaSupport?.build();
        _$failedField = 'groups';
        _groups?.build();

        _$failedField = 'instanceInitiatedShutdownBehavior';
        _instanceInitiatedShutdownBehavior?.build();
        _$failedField = 'instanceType';
        _instanceType?.build();
        _$failedField = 'kernel';
        _kernel?.build();
        _$failedField = 'ramdisk';
        _ramdisk?.build();
        _$failedField = 'sriovNetSupport';
        _sriovNetSupport?.build();
        _$failedField = 'userData';
        _userData?.build();

        _$failedField = 'disableApiStop';
        _disableApiStop?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyInstanceAttributeRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
