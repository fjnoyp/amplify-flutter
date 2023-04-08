// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.instance_requirements;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceRequirements extends InstanceRequirements {
  @override
  final _i2.VCpuCountRange? vCpuCount;
  @override
  final _i3.MemoryMib? memoryMib;
  @override
  final _i19.BuiltList<_i4.CpuManufacturer>? cpuManufacturers;
  @override
  final _i5.MemoryGiBPerVCpu? memoryGiBPerVCpu;
  @override
  final _i19.BuiltList<String>? excludedInstanceTypes;
  @override
  final _i19.BuiltList<_i6.InstanceGeneration>? instanceGenerations;
  @override
  final int spotMaxPricePercentageOverLowestPrice;
  @override
  final int onDemandMaxPricePercentageOverLowestPrice;
  @override
  final _i7.BareMetal? bareMetal;
  @override
  final _i8.BurstablePerformance? burstablePerformance;
  @override
  final bool requireHibernateSupport;
  @override
  final _i9.NetworkInterfaceCount? networkInterfaceCount;
  @override
  final _i10.LocalStorage? localStorage;
  @override
  final _i19.BuiltList<_i11.LocalStorageType>? localStorageTypes;
  @override
  final _i12.TotalLocalStorageGb? totalLocalStorageGb;
  @override
  final _i13.BaselineEbsBandwidthMbps? baselineEbsBandwidthMbps;
  @override
  final _i19.BuiltList<_i14.AcceleratorType>? acceleratorTypes;
  @override
  final _i15.AcceleratorCount? acceleratorCount;
  @override
  final _i19.BuiltList<_i16.AcceleratorManufacturer>? acceleratorManufacturers;
  @override
  final _i19.BuiltList<_i17.AcceleratorName>? acceleratorNames;
  @override
  final _i18.AcceleratorTotalMemoryMib? acceleratorTotalMemoryMib;

  factory _$InstanceRequirements(
          [void Function(InstanceRequirementsBuilder)? updates]) =>
      (new InstanceRequirementsBuilder()..update(updates))._build();

  _$InstanceRequirements._(
      {this.vCpuCount,
      this.memoryMib,
      this.cpuManufacturers,
      this.memoryGiBPerVCpu,
      this.excludedInstanceTypes,
      this.instanceGenerations,
      required this.spotMaxPricePercentageOverLowestPrice,
      required this.onDemandMaxPricePercentageOverLowestPrice,
      this.bareMetal,
      this.burstablePerformance,
      required this.requireHibernateSupport,
      this.networkInterfaceCount,
      this.localStorage,
      this.localStorageTypes,
      this.totalLocalStorageGb,
      this.baselineEbsBandwidthMbps,
      this.acceleratorTypes,
      this.acceleratorCount,
      this.acceleratorManufacturers,
      this.acceleratorNames,
      this.acceleratorTotalMemoryMib})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(spotMaxPricePercentageOverLowestPrice,
        r'InstanceRequirements', 'spotMaxPricePercentageOverLowestPrice');
    BuiltValueNullFieldError.checkNotNull(
        onDemandMaxPricePercentageOverLowestPrice,
        r'InstanceRequirements',
        'onDemandMaxPricePercentageOverLowestPrice');
    BuiltValueNullFieldError.checkNotNull(requireHibernateSupport,
        r'InstanceRequirements', 'requireHibernateSupport');
  }

  @override
  InstanceRequirements rebuild(
          void Function(InstanceRequirementsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceRequirementsBuilder toBuilder() =>
      new InstanceRequirementsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceRequirements &&
        vCpuCount == other.vCpuCount &&
        memoryMib == other.memoryMib &&
        cpuManufacturers == other.cpuManufacturers &&
        memoryGiBPerVCpu == other.memoryGiBPerVCpu &&
        excludedInstanceTypes == other.excludedInstanceTypes &&
        instanceGenerations == other.instanceGenerations &&
        spotMaxPricePercentageOverLowestPrice ==
            other.spotMaxPricePercentageOverLowestPrice &&
        onDemandMaxPricePercentageOverLowestPrice ==
            other.onDemandMaxPricePercentageOverLowestPrice &&
        bareMetal == other.bareMetal &&
        burstablePerformance == other.burstablePerformance &&
        requireHibernateSupport == other.requireHibernateSupport &&
        networkInterfaceCount == other.networkInterfaceCount &&
        localStorage == other.localStorage &&
        localStorageTypes == other.localStorageTypes &&
        totalLocalStorageGb == other.totalLocalStorageGb &&
        baselineEbsBandwidthMbps == other.baselineEbsBandwidthMbps &&
        acceleratorTypes == other.acceleratorTypes &&
        acceleratorCount == other.acceleratorCount &&
        acceleratorManufacturers == other.acceleratorManufacturers &&
        acceleratorNames == other.acceleratorNames &&
        acceleratorTotalMemoryMib == other.acceleratorTotalMemoryMib;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vCpuCount.hashCode);
    _$hash = $jc(_$hash, memoryMib.hashCode);
    _$hash = $jc(_$hash, cpuManufacturers.hashCode);
    _$hash = $jc(_$hash, memoryGiBPerVCpu.hashCode);
    _$hash = $jc(_$hash, excludedInstanceTypes.hashCode);
    _$hash = $jc(_$hash, instanceGenerations.hashCode);
    _$hash = $jc(_$hash, spotMaxPricePercentageOverLowestPrice.hashCode);
    _$hash = $jc(_$hash, onDemandMaxPricePercentageOverLowestPrice.hashCode);
    _$hash = $jc(_$hash, bareMetal.hashCode);
    _$hash = $jc(_$hash, burstablePerformance.hashCode);
    _$hash = $jc(_$hash, requireHibernateSupport.hashCode);
    _$hash = $jc(_$hash, networkInterfaceCount.hashCode);
    _$hash = $jc(_$hash, localStorage.hashCode);
    _$hash = $jc(_$hash, localStorageTypes.hashCode);
    _$hash = $jc(_$hash, totalLocalStorageGb.hashCode);
    _$hash = $jc(_$hash, baselineEbsBandwidthMbps.hashCode);
    _$hash = $jc(_$hash, acceleratorTypes.hashCode);
    _$hash = $jc(_$hash, acceleratorCount.hashCode);
    _$hash = $jc(_$hash, acceleratorManufacturers.hashCode);
    _$hash = $jc(_$hash, acceleratorNames.hashCode);
    _$hash = $jc(_$hash, acceleratorTotalMemoryMib.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InstanceRequirementsBuilder
    implements Builder<InstanceRequirements, InstanceRequirementsBuilder> {
  _$InstanceRequirements? _$v;

  _i2.VCpuCountRangeBuilder? _vCpuCount;
  _i2.VCpuCountRangeBuilder get vCpuCount =>
      _$this._vCpuCount ??= new _i2.VCpuCountRangeBuilder();
  set vCpuCount(_i2.VCpuCountRangeBuilder? vCpuCount) =>
      _$this._vCpuCount = vCpuCount;

  _i3.MemoryMibBuilder? _memoryMib;
  _i3.MemoryMibBuilder get memoryMib =>
      _$this._memoryMib ??= new _i3.MemoryMibBuilder();
  set memoryMib(_i3.MemoryMibBuilder? memoryMib) =>
      _$this._memoryMib = memoryMib;

  _i19.ListBuilder<_i4.CpuManufacturer>? _cpuManufacturers;
  _i19.ListBuilder<_i4.CpuManufacturer> get cpuManufacturers =>
      _$this._cpuManufacturers ??= new _i19.ListBuilder<_i4.CpuManufacturer>();
  set cpuManufacturers(
          _i19.ListBuilder<_i4.CpuManufacturer>? cpuManufacturers) =>
      _$this._cpuManufacturers = cpuManufacturers;

  _i5.MemoryGiBPerVCpuBuilder? _memoryGiBPerVCpu;
  _i5.MemoryGiBPerVCpuBuilder get memoryGiBPerVCpu =>
      _$this._memoryGiBPerVCpu ??= new _i5.MemoryGiBPerVCpuBuilder();
  set memoryGiBPerVCpu(_i5.MemoryGiBPerVCpuBuilder? memoryGiBPerVCpu) =>
      _$this._memoryGiBPerVCpu = memoryGiBPerVCpu;

  _i19.ListBuilder<String>? _excludedInstanceTypes;
  _i19.ListBuilder<String> get excludedInstanceTypes =>
      _$this._excludedInstanceTypes ??= new _i19.ListBuilder<String>();
  set excludedInstanceTypes(_i19.ListBuilder<String>? excludedInstanceTypes) =>
      _$this._excludedInstanceTypes = excludedInstanceTypes;

  _i19.ListBuilder<_i6.InstanceGeneration>? _instanceGenerations;
  _i19.ListBuilder<_i6.InstanceGeneration> get instanceGenerations =>
      _$this._instanceGenerations ??=
          new _i19.ListBuilder<_i6.InstanceGeneration>();
  set instanceGenerations(
          _i19.ListBuilder<_i6.InstanceGeneration>? instanceGenerations) =>
      _$this._instanceGenerations = instanceGenerations;

  int? _spotMaxPricePercentageOverLowestPrice;
  int? get spotMaxPricePercentageOverLowestPrice =>
      _$this._spotMaxPricePercentageOverLowestPrice;
  set spotMaxPricePercentageOverLowestPrice(
          int? spotMaxPricePercentageOverLowestPrice) =>
      _$this._spotMaxPricePercentageOverLowestPrice =
          spotMaxPricePercentageOverLowestPrice;

  int? _onDemandMaxPricePercentageOverLowestPrice;
  int? get onDemandMaxPricePercentageOverLowestPrice =>
      _$this._onDemandMaxPricePercentageOverLowestPrice;
  set onDemandMaxPricePercentageOverLowestPrice(
          int? onDemandMaxPricePercentageOverLowestPrice) =>
      _$this._onDemandMaxPricePercentageOverLowestPrice =
          onDemandMaxPricePercentageOverLowestPrice;

  _i7.BareMetal? _bareMetal;
  _i7.BareMetal? get bareMetal => _$this._bareMetal;
  set bareMetal(_i7.BareMetal? bareMetal) => _$this._bareMetal = bareMetal;

  _i8.BurstablePerformance? _burstablePerformance;
  _i8.BurstablePerformance? get burstablePerformance =>
      _$this._burstablePerformance;
  set burstablePerformance(_i8.BurstablePerformance? burstablePerformance) =>
      _$this._burstablePerformance = burstablePerformance;

  bool? _requireHibernateSupport;
  bool? get requireHibernateSupport => _$this._requireHibernateSupport;
  set requireHibernateSupport(bool? requireHibernateSupport) =>
      _$this._requireHibernateSupport = requireHibernateSupport;

  _i9.NetworkInterfaceCountBuilder? _networkInterfaceCount;
  _i9.NetworkInterfaceCountBuilder get networkInterfaceCount =>
      _$this._networkInterfaceCount ??= new _i9.NetworkInterfaceCountBuilder();
  set networkInterfaceCount(
          _i9.NetworkInterfaceCountBuilder? networkInterfaceCount) =>
      _$this._networkInterfaceCount = networkInterfaceCount;

  _i10.LocalStorage? _localStorage;
  _i10.LocalStorage? get localStorage => _$this._localStorage;
  set localStorage(_i10.LocalStorage? localStorage) =>
      _$this._localStorage = localStorage;

  _i19.ListBuilder<_i11.LocalStorageType>? _localStorageTypes;
  _i19.ListBuilder<_i11.LocalStorageType> get localStorageTypes =>
      _$this._localStorageTypes ??=
          new _i19.ListBuilder<_i11.LocalStorageType>();
  set localStorageTypes(
          _i19.ListBuilder<_i11.LocalStorageType>? localStorageTypes) =>
      _$this._localStorageTypes = localStorageTypes;

  _i12.TotalLocalStorageGbBuilder? _totalLocalStorageGb;
  _i12.TotalLocalStorageGbBuilder get totalLocalStorageGb =>
      _$this._totalLocalStorageGb ??= new _i12.TotalLocalStorageGbBuilder();
  set totalLocalStorageGb(
          _i12.TotalLocalStorageGbBuilder? totalLocalStorageGb) =>
      _$this._totalLocalStorageGb = totalLocalStorageGb;

  _i13.BaselineEbsBandwidthMbpsBuilder? _baselineEbsBandwidthMbps;
  _i13.BaselineEbsBandwidthMbpsBuilder get baselineEbsBandwidthMbps =>
      _$this._baselineEbsBandwidthMbps ??=
          new _i13.BaselineEbsBandwidthMbpsBuilder();
  set baselineEbsBandwidthMbps(
          _i13.BaselineEbsBandwidthMbpsBuilder? baselineEbsBandwidthMbps) =>
      _$this._baselineEbsBandwidthMbps = baselineEbsBandwidthMbps;

  _i19.ListBuilder<_i14.AcceleratorType>? _acceleratorTypes;
  _i19.ListBuilder<_i14.AcceleratorType> get acceleratorTypes =>
      _$this._acceleratorTypes ??= new _i19.ListBuilder<_i14.AcceleratorType>();
  set acceleratorTypes(
          _i19.ListBuilder<_i14.AcceleratorType>? acceleratorTypes) =>
      _$this._acceleratorTypes = acceleratorTypes;

  _i15.AcceleratorCountBuilder? _acceleratorCount;
  _i15.AcceleratorCountBuilder get acceleratorCount =>
      _$this._acceleratorCount ??= new _i15.AcceleratorCountBuilder();
  set acceleratorCount(_i15.AcceleratorCountBuilder? acceleratorCount) =>
      _$this._acceleratorCount = acceleratorCount;

  _i19.ListBuilder<_i16.AcceleratorManufacturer>? _acceleratorManufacturers;
  _i19.ListBuilder<_i16.AcceleratorManufacturer> get acceleratorManufacturers =>
      _$this._acceleratorManufacturers ??=
          new _i19.ListBuilder<_i16.AcceleratorManufacturer>();
  set acceleratorManufacturers(
          _i19.ListBuilder<_i16.AcceleratorManufacturer>?
              acceleratorManufacturers) =>
      _$this._acceleratorManufacturers = acceleratorManufacturers;

  _i19.ListBuilder<_i17.AcceleratorName>? _acceleratorNames;
  _i19.ListBuilder<_i17.AcceleratorName> get acceleratorNames =>
      _$this._acceleratorNames ??= new _i19.ListBuilder<_i17.AcceleratorName>();
  set acceleratorNames(
          _i19.ListBuilder<_i17.AcceleratorName>? acceleratorNames) =>
      _$this._acceleratorNames = acceleratorNames;

  _i18.AcceleratorTotalMemoryMibBuilder? _acceleratorTotalMemoryMib;
  _i18.AcceleratorTotalMemoryMibBuilder get acceleratorTotalMemoryMib =>
      _$this._acceleratorTotalMemoryMib ??=
          new _i18.AcceleratorTotalMemoryMibBuilder();
  set acceleratorTotalMemoryMib(
          _i18.AcceleratorTotalMemoryMibBuilder? acceleratorTotalMemoryMib) =>
      _$this._acceleratorTotalMemoryMib = acceleratorTotalMemoryMib;

  InstanceRequirementsBuilder() {
    InstanceRequirements._init(this);
  }

  InstanceRequirementsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vCpuCount = $v.vCpuCount?.toBuilder();
      _memoryMib = $v.memoryMib?.toBuilder();
      _cpuManufacturers = $v.cpuManufacturers?.toBuilder();
      _memoryGiBPerVCpu = $v.memoryGiBPerVCpu?.toBuilder();
      _excludedInstanceTypes = $v.excludedInstanceTypes?.toBuilder();
      _instanceGenerations = $v.instanceGenerations?.toBuilder();
      _spotMaxPricePercentageOverLowestPrice =
          $v.spotMaxPricePercentageOverLowestPrice;
      _onDemandMaxPricePercentageOverLowestPrice =
          $v.onDemandMaxPricePercentageOverLowestPrice;
      _bareMetal = $v.bareMetal;
      _burstablePerformance = $v.burstablePerformance;
      _requireHibernateSupport = $v.requireHibernateSupport;
      _networkInterfaceCount = $v.networkInterfaceCount?.toBuilder();
      _localStorage = $v.localStorage;
      _localStorageTypes = $v.localStorageTypes?.toBuilder();
      _totalLocalStorageGb = $v.totalLocalStorageGb?.toBuilder();
      _baselineEbsBandwidthMbps = $v.baselineEbsBandwidthMbps?.toBuilder();
      _acceleratorTypes = $v.acceleratorTypes?.toBuilder();
      _acceleratorCount = $v.acceleratorCount?.toBuilder();
      _acceleratorManufacturers = $v.acceleratorManufacturers?.toBuilder();
      _acceleratorNames = $v.acceleratorNames?.toBuilder();
      _acceleratorTotalMemoryMib = $v.acceleratorTotalMemoryMib?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceRequirements other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InstanceRequirements;
  }

  @override
  void update(void Function(InstanceRequirementsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceRequirements build() => _build();

  _$InstanceRequirements _build() {
    _$InstanceRequirements _$result;
    try {
      _$result = _$v ??
          new _$InstanceRequirements._(
              vCpuCount: _vCpuCount?.build(),
              memoryMib: _memoryMib?.build(),
              cpuManufacturers: _cpuManufacturers?.build(),
              memoryGiBPerVCpu: _memoryGiBPerVCpu?.build(),
              excludedInstanceTypes: _excludedInstanceTypes?.build(),
              instanceGenerations: _instanceGenerations?.build(),
              spotMaxPricePercentageOverLowestPrice:
                  BuiltValueNullFieldError.checkNotNull(
                      spotMaxPricePercentageOverLowestPrice,
                      r'InstanceRequirements',
                      'spotMaxPricePercentageOverLowestPrice'),
              onDemandMaxPricePercentageOverLowestPrice:
                  BuiltValueNullFieldError.checkNotNull(
                      onDemandMaxPricePercentageOverLowestPrice,
                      r'InstanceRequirements',
                      'onDemandMaxPricePercentageOverLowestPrice'),
              bareMetal: bareMetal,
              burstablePerformance: burstablePerformance,
              requireHibernateSupport: BuiltValueNullFieldError.checkNotNull(
                  requireHibernateSupport,
                  r'InstanceRequirements',
                  'requireHibernateSupport'),
              networkInterfaceCount: _networkInterfaceCount?.build(),
              localStorage: localStorage,
              localStorageTypes: _localStorageTypes?.build(),
              totalLocalStorageGb: _totalLocalStorageGb?.build(),
              baselineEbsBandwidthMbps: _baselineEbsBandwidthMbps?.build(),
              acceleratorTypes: _acceleratorTypes?.build(),
              acceleratorCount: _acceleratorCount?.build(),
              acceleratorManufacturers: _acceleratorManufacturers?.build(),
              acceleratorNames: _acceleratorNames?.build(),
              acceleratorTotalMemoryMib: _acceleratorTotalMemoryMib?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vCpuCount';
        _vCpuCount?.build();
        _$failedField = 'memoryMib';
        _memoryMib?.build();
        _$failedField = 'cpuManufacturers';
        _cpuManufacturers?.build();
        _$failedField = 'memoryGiBPerVCpu';
        _memoryGiBPerVCpu?.build();
        _$failedField = 'excludedInstanceTypes';
        _excludedInstanceTypes?.build();
        _$failedField = 'instanceGenerations';
        _instanceGenerations?.build();

        _$failedField = 'networkInterfaceCount';
        _networkInterfaceCount?.build();

        _$failedField = 'localStorageTypes';
        _localStorageTypes?.build();
        _$failedField = 'totalLocalStorageGb';
        _totalLocalStorageGb?.build();
        _$failedField = 'baselineEbsBandwidthMbps';
        _baselineEbsBandwidthMbps?.build();
        _$failedField = 'acceleratorTypes';
        _acceleratorTypes?.build();
        _$failedField = 'acceleratorCount';
        _acceleratorCount?.build();
        _$failedField = 'acceleratorManufacturers';
        _acceleratorManufacturers?.build();
        _$failedField = 'acceleratorNames';
        _acceleratorNames?.build();
        _$failedField = 'acceleratorTotalMemoryMib';
        _acceleratorTotalMemoryMib?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'InstanceRequirements', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
