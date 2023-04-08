// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.instance_type_info;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceTypeInfo extends InstanceTypeInfo {
  @override
  final _i2.InstanceType? instanceType;
  @override
  final bool? currentGeneration;
  @override
  final bool? freeTierEligible;
  @override
  final _i18.BuiltList<_i3.UsageClassType>? supportedUsageClasses;
  @override
  final _i18.BuiltList<_i4.RootDeviceType>? supportedRootDeviceTypes;
  @override
  final _i18.BuiltList<_i5.VirtualizationType>? supportedVirtualizationTypes;
  @override
  final bool? bareMetal;
  @override
  final _i6.InstanceTypeHypervisor? hypervisor;
  @override
  final _i7.ProcessorInfo? processorInfo;
  @override
  final _i8.VCpuInfo? vCpuInfo;
  @override
  final _i9.MemoryInfo? memoryInfo;
  @override
  final bool? instanceStorageSupported;
  @override
  final _i10.InstanceStorageInfo? instanceStorageInfo;
  @override
  final _i11.EbsInfo? ebsInfo;
  @override
  final _i12.NetworkInfo? networkInfo;
  @override
  final _i13.GpuInfo? gpuInfo;
  @override
  final _i14.FpgaInfo? fpgaInfo;
  @override
  final _i15.PlacementGroupInfo? placementGroupInfo;
  @override
  final _i16.InferenceAcceleratorInfo? inferenceAcceleratorInfo;
  @override
  final bool? hibernationSupported;
  @override
  final bool? burstablePerformanceSupported;
  @override
  final bool? dedicatedHostsSupported;
  @override
  final bool? autoRecoverySupported;
  @override
  final _i18.BuiltList<_i17.BootModeType>? supportedBootModes;

  factory _$InstanceTypeInfo(
          [void Function(InstanceTypeInfoBuilder)? updates]) =>
      (new InstanceTypeInfoBuilder()..update(updates))._build();

  _$InstanceTypeInfo._(
      {this.instanceType,
      this.currentGeneration,
      this.freeTierEligible,
      this.supportedUsageClasses,
      this.supportedRootDeviceTypes,
      this.supportedVirtualizationTypes,
      this.bareMetal,
      this.hypervisor,
      this.processorInfo,
      this.vCpuInfo,
      this.memoryInfo,
      this.instanceStorageSupported,
      this.instanceStorageInfo,
      this.ebsInfo,
      this.networkInfo,
      this.gpuInfo,
      this.fpgaInfo,
      this.placementGroupInfo,
      this.inferenceAcceleratorInfo,
      this.hibernationSupported,
      this.burstablePerformanceSupported,
      this.dedicatedHostsSupported,
      this.autoRecoverySupported,
      this.supportedBootModes})
      : super._();

  @override
  InstanceTypeInfo rebuild(void Function(InstanceTypeInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceTypeInfoBuilder toBuilder() =>
      new InstanceTypeInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceTypeInfo &&
        instanceType == other.instanceType &&
        currentGeneration == other.currentGeneration &&
        freeTierEligible == other.freeTierEligible &&
        supportedUsageClasses == other.supportedUsageClasses &&
        supportedRootDeviceTypes == other.supportedRootDeviceTypes &&
        supportedVirtualizationTypes == other.supportedVirtualizationTypes &&
        bareMetal == other.bareMetal &&
        hypervisor == other.hypervisor &&
        processorInfo == other.processorInfo &&
        vCpuInfo == other.vCpuInfo &&
        memoryInfo == other.memoryInfo &&
        instanceStorageSupported == other.instanceStorageSupported &&
        instanceStorageInfo == other.instanceStorageInfo &&
        ebsInfo == other.ebsInfo &&
        networkInfo == other.networkInfo &&
        gpuInfo == other.gpuInfo &&
        fpgaInfo == other.fpgaInfo &&
        placementGroupInfo == other.placementGroupInfo &&
        inferenceAcceleratorInfo == other.inferenceAcceleratorInfo &&
        hibernationSupported == other.hibernationSupported &&
        burstablePerformanceSupported == other.burstablePerformanceSupported &&
        dedicatedHostsSupported == other.dedicatedHostsSupported &&
        autoRecoverySupported == other.autoRecoverySupported &&
        supportedBootModes == other.supportedBootModes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceType.hashCode);
    _$hash = $jc(_$hash, currentGeneration.hashCode);
    _$hash = $jc(_$hash, freeTierEligible.hashCode);
    _$hash = $jc(_$hash, supportedUsageClasses.hashCode);
    _$hash = $jc(_$hash, supportedRootDeviceTypes.hashCode);
    _$hash = $jc(_$hash, supportedVirtualizationTypes.hashCode);
    _$hash = $jc(_$hash, bareMetal.hashCode);
    _$hash = $jc(_$hash, hypervisor.hashCode);
    _$hash = $jc(_$hash, processorInfo.hashCode);
    _$hash = $jc(_$hash, vCpuInfo.hashCode);
    _$hash = $jc(_$hash, memoryInfo.hashCode);
    _$hash = $jc(_$hash, instanceStorageSupported.hashCode);
    _$hash = $jc(_$hash, instanceStorageInfo.hashCode);
    _$hash = $jc(_$hash, ebsInfo.hashCode);
    _$hash = $jc(_$hash, networkInfo.hashCode);
    _$hash = $jc(_$hash, gpuInfo.hashCode);
    _$hash = $jc(_$hash, fpgaInfo.hashCode);
    _$hash = $jc(_$hash, placementGroupInfo.hashCode);
    _$hash = $jc(_$hash, inferenceAcceleratorInfo.hashCode);
    _$hash = $jc(_$hash, hibernationSupported.hashCode);
    _$hash = $jc(_$hash, burstablePerformanceSupported.hashCode);
    _$hash = $jc(_$hash, dedicatedHostsSupported.hashCode);
    _$hash = $jc(_$hash, autoRecoverySupported.hashCode);
    _$hash = $jc(_$hash, supportedBootModes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InstanceTypeInfoBuilder
    implements Builder<InstanceTypeInfo, InstanceTypeInfoBuilder> {
  _$InstanceTypeInfo? _$v;

  _i2.InstanceType? _instanceType;
  _i2.InstanceType? get instanceType => _$this._instanceType;
  set instanceType(_i2.InstanceType? instanceType) =>
      _$this._instanceType = instanceType;

  bool? _currentGeneration;
  bool? get currentGeneration => _$this._currentGeneration;
  set currentGeneration(bool? currentGeneration) =>
      _$this._currentGeneration = currentGeneration;

  bool? _freeTierEligible;
  bool? get freeTierEligible => _$this._freeTierEligible;
  set freeTierEligible(bool? freeTierEligible) =>
      _$this._freeTierEligible = freeTierEligible;

  _i18.ListBuilder<_i3.UsageClassType>? _supportedUsageClasses;
  _i18.ListBuilder<_i3.UsageClassType> get supportedUsageClasses =>
      _$this._supportedUsageClasses ??=
          new _i18.ListBuilder<_i3.UsageClassType>();
  set supportedUsageClasses(
          _i18.ListBuilder<_i3.UsageClassType>? supportedUsageClasses) =>
      _$this._supportedUsageClasses = supportedUsageClasses;

  _i18.ListBuilder<_i4.RootDeviceType>? _supportedRootDeviceTypes;
  _i18.ListBuilder<_i4.RootDeviceType> get supportedRootDeviceTypes =>
      _$this._supportedRootDeviceTypes ??=
          new _i18.ListBuilder<_i4.RootDeviceType>();
  set supportedRootDeviceTypes(
          _i18.ListBuilder<_i4.RootDeviceType>? supportedRootDeviceTypes) =>
      _$this._supportedRootDeviceTypes = supportedRootDeviceTypes;

  _i18.ListBuilder<_i5.VirtualizationType>? _supportedVirtualizationTypes;
  _i18.ListBuilder<_i5.VirtualizationType> get supportedVirtualizationTypes =>
      _$this._supportedVirtualizationTypes ??=
          new _i18.ListBuilder<_i5.VirtualizationType>();
  set supportedVirtualizationTypes(
          _i18.ListBuilder<_i5.VirtualizationType>?
              supportedVirtualizationTypes) =>
      _$this._supportedVirtualizationTypes = supportedVirtualizationTypes;

  bool? _bareMetal;
  bool? get bareMetal => _$this._bareMetal;
  set bareMetal(bool? bareMetal) => _$this._bareMetal = bareMetal;

  _i6.InstanceTypeHypervisor? _hypervisor;
  _i6.InstanceTypeHypervisor? get hypervisor => _$this._hypervisor;
  set hypervisor(_i6.InstanceTypeHypervisor? hypervisor) =>
      _$this._hypervisor = hypervisor;

  _i7.ProcessorInfoBuilder? _processorInfo;
  _i7.ProcessorInfoBuilder get processorInfo =>
      _$this._processorInfo ??= new _i7.ProcessorInfoBuilder();
  set processorInfo(_i7.ProcessorInfoBuilder? processorInfo) =>
      _$this._processorInfo = processorInfo;

  _i8.VCpuInfoBuilder? _vCpuInfo;
  _i8.VCpuInfoBuilder get vCpuInfo =>
      _$this._vCpuInfo ??= new _i8.VCpuInfoBuilder();
  set vCpuInfo(_i8.VCpuInfoBuilder? vCpuInfo) => _$this._vCpuInfo = vCpuInfo;

  _i9.MemoryInfoBuilder? _memoryInfo;
  _i9.MemoryInfoBuilder get memoryInfo =>
      _$this._memoryInfo ??= new _i9.MemoryInfoBuilder();
  set memoryInfo(_i9.MemoryInfoBuilder? memoryInfo) =>
      _$this._memoryInfo = memoryInfo;

  bool? _instanceStorageSupported;
  bool? get instanceStorageSupported => _$this._instanceStorageSupported;
  set instanceStorageSupported(bool? instanceStorageSupported) =>
      _$this._instanceStorageSupported = instanceStorageSupported;

  _i10.InstanceStorageInfoBuilder? _instanceStorageInfo;
  _i10.InstanceStorageInfoBuilder get instanceStorageInfo =>
      _$this._instanceStorageInfo ??= new _i10.InstanceStorageInfoBuilder();
  set instanceStorageInfo(
          _i10.InstanceStorageInfoBuilder? instanceStorageInfo) =>
      _$this._instanceStorageInfo = instanceStorageInfo;

  _i11.EbsInfoBuilder? _ebsInfo;
  _i11.EbsInfoBuilder get ebsInfo =>
      _$this._ebsInfo ??= new _i11.EbsInfoBuilder();
  set ebsInfo(_i11.EbsInfoBuilder? ebsInfo) => _$this._ebsInfo = ebsInfo;

  _i12.NetworkInfoBuilder? _networkInfo;
  _i12.NetworkInfoBuilder get networkInfo =>
      _$this._networkInfo ??= new _i12.NetworkInfoBuilder();
  set networkInfo(_i12.NetworkInfoBuilder? networkInfo) =>
      _$this._networkInfo = networkInfo;

  _i13.GpuInfoBuilder? _gpuInfo;
  _i13.GpuInfoBuilder get gpuInfo =>
      _$this._gpuInfo ??= new _i13.GpuInfoBuilder();
  set gpuInfo(_i13.GpuInfoBuilder? gpuInfo) => _$this._gpuInfo = gpuInfo;

  _i14.FpgaInfoBuilder? _fpgaInfo;
  _i14.FpgaInfoBuilder get fpgaInfo =>
      _$this._fpgaInfo ??= new _i14.FpgaInfoBuilder();
  set fpgaInfo(_i14.FpgaInfoBuilder? fpgaInfo) => _$this._fpgaInfo = fpgaInfo;

  _i15.PlacementGroupInfoBuilder? _placementGroupInfo;
  _i15.PlacementGroupInfoBuilder get placementGroupInfo =>
      _$this._placementGroupInfo ??= new _i15.PlacementGroupInfoBuilder();
  set placementGroupInfo(_i15.PlacementGroupInfoBuilder? placementGroupInfo) =>
      _$this._placementGroupInfo = placementGroupInfo;

  _i16.InferenceAcceleratorInfoBuilder? _inferenceAcceleratorInfo;
  _i16.InferenceAcceleratorInfoBuilder get inferenceAcceleratorInfo =>
      _$this._inferenceAcceleratorInfo ??=
          new _i16.InferenceAcceleratorInfoBuilder();
  set inferenceAcceleratorInfo(
          _i16.InferenceAcceleratorInfoBuilder? inferenceAcceleratorInfo) =>
      _$this._inferenceAcceleratorInfo = inferenceAcceleratorInfo;

  bool? _hibernationSupported;
  bool? get hibernationSupported => _$this._hibernationSupported;
  set hibernationSupported(bool? hibernationSupported) =>
      _$this._hibernationSupported = hibernationSupported;

  bool? _burstablePerformanceSupported;
  bool? get burstablePerformanceSupported =>
      _$this._burstablePerformanceSupported;
  set burstablePerformanceSupported(bool? burstablePerformanceSupported) =>
      _$this._burstablePerformanceSupported = burstablePerformanceSupported;

  bool? _dedicatedHostsSupported;
  bool? get dedicatedHostsSupported => _$this._dedicatedHostsSupported;
  set dedicatedHostsSupported(bool? dedicatedHostsSupported) =>
      _$this._dedicatedHostsSupported = dedicatedHostsSupported;

  bool? _autoRecoverySupported;
  bool? get autoRecoverySupported => _$this._autoRecoverySupported;
  set autoRecoverySupported(bool? autoRecoverySupported) =>
      _$this._autoRecoverySupported = autoRecoverySupported;

  _i18.ListBuilder<_i17.BootModeType>? _supportedBootModes;
  _i18.ListBuilder<_i17.BootModeType> get supportedBootModes =>
      _$this._supportedBootModes ??= new _i18.ListBuilder<_i17.BootModeType>();
  set supportedBootModes(
          _i18.ListBuilder<_i17.BootModeType>? supportedBootModes) =>
      _$this._supportedBootModes = supportedBootModes;

  InstanceTypeInfoBuilder() {
    InstanceTypeInfo._init(this);
  }

  InstanceTypeInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceType = $v.instanceType;
      _currentGeneration = $v.currentGeneration;
      _freeTierEligible = $v.freeTierEligible;
      _supportedUsageClasses = $v.supportedUsageClasses?.toBuilder();
      _supportedRootDeviceTypes = $v.supportedRootDeviceTypes?.toBuilder();
      _supportedVirtualizationTypes =
          $v.supportedVirtualizationTypes?.toBuilder();
      _bareMetal = $v.bareMetal;
      _hypervisor = $v.hypervisor;
      _processorInfo = $v.processorInfo?.toBuilder();
      _vCpuInfo = $v.vCpuInfo?.toBuilder();
      _memoryInfo = $v.memoryInfo?.toBuilder();
      _instanceStorageSupported = $v.instanceStorageSupported;
      _instanceStorageInfo = $v.instanceStorageInfo?.toBuilder();
      _ebsInfo = $v.ebsInfo?.toBuilder();
      _networkInfo = $v.networkInfo?.toBuilder();
      _gpuInfo = $v.gpuInfo?.toBuilder();
      _fpgaInfo = $v.fpgaInfo?.toBuilder();
      _placementGroupInfo = $v.placementGroupInfo?.toBuilder();
      _inferenceAcceleratorInfo = $v.inferenceAcceleratorInfo?.toBuilder();
      _hibernationSupported = $v.hibernationSupported;
      _burstablePerformanceSupported = $v.burstablePerformanceSupported;
      _dedicatedHostsSupported = $v.dedicatedHostsSupported;
      _autoRecoverySupported = $v.autoRecoverySupported;
      _supportedBootModes = $v.supportedBootModes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceTypeInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InstanceTypeInfo;
  }

  @override
  void update(void Function(InstanceTypeInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceTypeInfo build() => _build();

  _$InstanceTypeInfo _build() {
    _$InstanceTypeInfo _$result;
    try {
      _$result = _$v ??
          new _$InstanceTypeInfo._(
              instanceType: instanceType,
              currentGeneration: currentGeneration,
              freeTierEligible: freeTierEligible,
              supportedUsageClasses: _supportedUsageClasses?.build(),
              supportedRootDeviceTypes: _supportedRootDeviceTypes?.build(),
              supportedVirtualizationTypes:
                  _supportedVirtualizationTypes?.build(),
              bareMetal: bareMetal,
              hypervisor: hypervisor,
              processorInfo: _processorInfo?.build(),
              vCpuInfo: _vCpuInfo?.build(),
              memoryInfo: _memoryInfo?.build(),
              instanceStorageSupported: instanceStorageSupported,
              instanceStorageInfo: _instanceStorageInfo?.build(),
              ebsInfo: _ebsInfo?.build(),
              networkInfo: _networkInfo?.build(),
              gpuInfo: _gpuInfo?.build(),
              fpgaInfo: _fpgaInfo?.build(),
              placementGroupInfo: _placementGroupInfo?.build(),
              inferenceAcceleratorInfo: _inferenceAcceleratorInfo?.build(),
              hibernationSupported: hibernationSupported,
              burstablePerformanceSupported: burstablePerformanceSupported,
              dedicatedHostsSupported: dedicatedHostsSupported,
              autoRecoverySupported: autoRecoverySupported,
              supportedBootModes: _supportedBootModes?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'supportedUsageClasses';
        _supportedUsageClasses?.build();
        _$failedField = 'supportedRootDeviceTypes';
        _supportedRootDeviceTypes?.build();
        _$failedField = 'supportedVirtualizationTypes';
        _supportedVirtualizationTypes?.build();

        _$failedField = 'processorInfo';
        _processorInfo?.build();
        _$failedField = 'vCpuInfo';
        _vCpuInfo?.build();
        _$failedField = 'memoryInfo';
        _memoryInfo?.build();

        _$failedField = 'instanceStorageInfo';
        _instanceStorageInfo?.build();
        _$failedField = 'ebsInfo';
        _ebsInfo?.build();
        _$failedField = 'networkInfo';
        _networkInfo?.build();
        _$failedField = 'gpuInfo';
        _gpuInfo?.build();
        _$failedField = 'fpgaInfo';
        _fpgaInfo?.build();
        _$failedField = 'placementGroupInfo';
        _placementGroupInfo?.build();
        _$failedField = 'inferenceAcceleratorInfo';
        _inferenceAcceleratorInfo?.build();

        _$failedField = 'supportedBootModes';
        _supportedBootModes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'InstanceTypeInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
