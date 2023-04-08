// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.instance;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Instance extends Instance {
  @override
  final int amiLaunchIndex;
  @override
  final String? imageId;
  @override
  final String? instanceId;
  @override
  final _i2.InstanceType? instanceType;
  @override
  final String? kernelId;
  @override
  final String? keyName;
  @override
  final DateTime? launchTime;
  @override
  final _i3.Monitoring? monitoring;
  @override
  final _i4.Placement? placement;
  @override
  final _i5.PlatformValues? platform;
  @override
  final String? privateDnsName;
  @override
  final String? privateIpAddress;
  @override
  final _i30.BuiltList<_i6.ProductCode>? productCodes;
  @override
  final String? publicDnsName;
  @override
  final String? publicIpAddress;
  @override
  final String? ramdiskId;
  @override
  final _i7.InstanceState? state;
  @override
  final String? stateTransitionReason;
  @override
  final String? subnetId;
  @override
  final String? vpcId;
  @override
  final _i8.ArchitectureValues? architecture;
  @override
  final _i30.BuiltList<_i9.InstanceBlockDeviceMapping>? blockDeviceMappings;
  @override
  final String? clientToken;
  @override
  final bool ebsOptimized;
  @override
  final bool enaSupport;
  @override
  final _i10.HypervisorType? hypervisor;
  @override
  final _i11.IamInstanceProfile? iamInstanceProfile;
  @override
  final _i12.InstanceLifecycleType? instanceLifecycle;
  @override
  final _i30.BuiltList<_i13.ElasticGpuAssociation>? elasticGpuAssociations;
  @override
  final _i30.BuiltList<_i14.ElasticInferenceAcceleratorAssociation>?
      elasticInferenceAcceleratorAssociations;
  @override
  final _i30.BuiltList<_i15.InstanceNetworkInterface>? networkInterfaces;
  @override
  final String? outpostArn;
  @override
  final String? rootDeviceName;
  @override
  final _i16.DeviceType? rootDeviceType;
  @override
  final _i30.BuiltList<_i17.GroupIdentifier>? securityGroups;
  @override
  final bool sourceDestCheck;
  @override
  final String? spotInstanceRequestId;
  @override
  final String? sriovNetSupport;
  @override
  final _i18.StateReason? stateReason;
  @override
  final _i30.BuiltList<_i19.Tag>? tags;
  @override
  final _i20.VirtualizationType? virtualizationType;
  @override
  final _i21.CpuOptions? cpuOptions;
  @override
  final String? capacityReservationId;
  @override
  final _i22.CapacityReservationSpecificationResponse?
      capacityReservationSpecification;
  @override
  final _i23.HibernationOptions? hibernationOptions;
  @override
  final _i30.BuiltList<_i24.LicenseConfiguration>? licenses;
  @override
  final _i25.InstanceMetadataOptionsResponse? metadataOptions;
  @override
  final _i26.EnclaveOptions? enclaveOptions;
  @override
  final _i27.BootModeValues? bootMode;
  @override
  final String? platformDetails;
  @override
  final String? usageOperation;
  @override
  final DateTime? usageOperationUpdateTime;
  @override
  final _i28.PrivateDnsNameOptionsResponse? privateDnsNameOptions;
  @override
  final String? ipv6Address;
  @override
  final String? tpmSupport;
  @override
  final _i29.InstanceMaintenanceOptions? maintenanceOptions;

  factory _$Instance([void Function(InstanceBuilder)? updates]) =>
      (new InstanceBuilder()..update(updates))._build();

  _$Instance._(
      {required this.amiLaunchIndex,
      this.imageId,
      this.instanceId,
      this.instanceType,
      this.kernelId,
      this.keyName,
      this.launchTime,
      this.monitoring,
      this.placement,
      this.platform,
      this.privateDnsName,
      this.privateIpAddress,
      this.productCodes,
      this.publicDnsName,
      this.publicIpAddress,
      this.ramdiskId,
      this.state,
      this.stateTransitionReason,
      this.subnetId,
      this.vpcId,
      this.architecture,
      this.blockDeviceMappings,
      this.clientToken,
      required this.ebsOptimized,
      required this.enaSupport,
      this.hypervisor,
      this.iamInstanceProfile,
      this.instanceLifecycle,
      this.elasticGpuAssociations,
      this.elasticInferenceAcceleratorAssociations,
      this.networkInterfaces,
      this.outpostArn,
      this.rootDeviceName,
      this.rootDeviceType,
      this.securityGroups,
      required this.sourceDestCheck,
      this.spotInstanceRequestId,
      this.sriovNetSupport,
      this.stateReason,
      this.tags,
      this.virtualizationType,
      this.cpuOptions,
      this.capacityReservationId,
      this.capacityReservationSpecification,
      this.hibernationOptions,
      this.licenses,
      this.metadataOptions,
      this.enclaveOptions,
      this.bootMode,
      this.platformDetails,
      this.usageOperation,
      this.usageOperationUpdateTime,
      this.privateDnsNameOptions,
      this.ipv6Address,
      this.tpmSupport,
      this.maintenanceOptions})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        amiLaunchIndex, r'Instance', 'amiLaunchIndex');
    BuiltValueNullFieldError.checkNotNull(
        ebsOptimized, r'Instance', 'ebsOptimized');
    BuiltValueNullFieldError.checkNotNull(
        enaSupport, r'Instance', 'enaSupport');
    BuiltValueNullFieldError.checkNotNull(
        sourceDestCheck, r'Instance', 'sourceDestCheck');
  }

  @override
  Instance rebuild(void Function(InstanceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceBuilder toBuilder() => new InstanceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Instance &&
        amiLaunchIndex == other.amiLaunchIndex &&
        imageId == other.imageId &&
        instanceId == other.instanceId &&
        instanceType == other.instanceType &&
        kernelId == other.kernelId &&
        keyName == other.keyName &&
        launchTime == other.launchTime &&
        monitoring == other.monitoring &&
        placement == other.placement &&
        platform == other.platform &&
        privateDnsName == other.privateDnsName &&
        privateIpAddress == other.privateIpAddress &&
        productCodes == other.productCodes &&
        publicDnsName == other.publicDnsName &&
        publicIpAddress == other.publicIpAddress &&
        ramdiskId == other.ramdiskId &&
        state == other.state &&
        stateTransitionReason == other.stateTransitionReason &&
        subnetId == other.subnetId &&
        vpcId == other.vpcId &&
        architecture == other.architecture &&
        blockDeviceMappings == other.blockDeviceMappings &&
        clientToken == other.clientToken &&
        ebsOptimized == other.ebsOptimized &&
        enaSupport == other.enaSupport &&
        hypervisor == other.hypervisor &&
        iamInstanceProfile == other.iamInstanceProfile &&
        instanceLifecycle == other.instanceLifecycle &&
        elasticGpuAssociations == other.elasticGpuAssociations &&
        elasticInferenceAcceleratorAssociations ==
            other.elasticInferenceAcceleratorAssociations &&
        networkInterfaces == other.networkInterfaces &&
        outpostArn == other.outpostArn &&
        rootDeviceName == other.rootDeviceName &&
        rootDeviceType == other.rootDeviceType &&
        securityGroups == other.securityGroups &&
        sourceDestCheck == other.sourceDestCheck &&
        spotInstanceRequestId == other.spotInstanceRequestId &&
        sriovNetSupport == other.sriovNetSupport &&
        stateReason == other.stateReason &&
        tags == other.tags &&
        virtualizationType == other.virtualizationType &&
        cpuOptions == other.cpuOptions &&
        capacityReservationId == other.capacityReservationId &&
        capacityReservationSpecification ==
            other.capacityReservationSpecification &&
        hibernationOptions == other.hibernationOptions &&
        licenses == other.licenses &&
        metadataOptions == other.metadataOptions &&
        enclaveOptions == other.enclaveOptions &&
        bootMode == other.bootMode &&
        platformDetails == other.platformDetails &&
        usageOperation == other.usageOperation &&
        usageOperationUpdateTime == other.usageOperationUpdateTime &&
        privateDnsNameOptions == other.privateDnsNameOptions &&
        ipv6Address == other.ipv6Address &&
        tpmSupport == other.tpmSupport &&
        maintenanceOptions == other.maintenanceOptions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, amiLaunchIndex.hashCode);
    _$hash = $jc(_$hash, imageId.hashCode);
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, instanceType.hashCode);
    _$hash = $jc(_$hash, kernelId.hashCode);
    _$hash = $jc(_$hash, keyName.hashCode);
    _$hash = $jc(_$hash, launchTime.hashCode);
    _$hash = $jc(_$hash, monitoring.hashCode);
    _$hash = $jc(_$hash, placement.hashCode);
    _$hash = $jc(_$hash, platform.hashCode);
    _$hash = $jc(_$hash, privateDnsName.hashCode);
    _$hash = $jc(_$hash, privateIpAddress.hashCode);
    _$hash = $jc(_$hash, productCodes.hashCode);
    _$hash = $jc(_$hash, publicDnsName.hashCode);
    _$hash = $jc(_$hash, publicIpAddress.hashCode);
    _$hash = $jc(_$hash, ramdiskId.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, stateTransitionReason.hashCode);
    _$hash = $jc(_$hash, subnetId.hashCode);
    _$hash = $jc(_$hash, vpcId.hashCode);
    _$hash = $jc(_$hash, architecture.hashCode);
    _$hash = $jc(_$hash, blockDeviceMappings.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, ebsOptimized.hashCode);
    _$hash = $jc(_$hash, enaSupport.hashCode);
    _$hash = $jc(_$hash, hypervisor.hashCode);
    _$hash = $jc(_$hash, iamInstanceProfile.hashCode);
    _$hash = $jc(_$hash, instanceLifecycle.hashCode);
    _$hash = $jc(_$hash, elasticGpuAssociations.hashCode);
    _$hash = $jc(_$hash, elasticInferenceAcceleratorAssociations.hashCode);
    _$hash = $jc(_$hash, networkInterfaces.hashCode);
    _$hash = $jc(_$hash, outpostArn.hashCode);
    _$hash = $jc(_$hash, rootDeviceName.hashCode);
    _$hash = $jc(_$hash, rootDeviceType.hashCode);
    _$hash = $jc(_$hash, securityGroups.hashCode);
    _$hash = $jc(_$hash, sourceDestCheck.hashCode);
    _$hash = $jc(_$hash, spotInstanceRequestId.hashCode);
    _$hash = $jc(_$hash, sriovNetSupport.hashCode);
    _$hash = $jc(_$hash, stateReason.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, virtualizationType.hashCode);
    _$hash = $jc(_$hash, cpuOptions.hashCode);
    _$hash = $jc(_$hash, capacityReservationId.hashCode);
    _$hash = $jc(_$hash, capacityReservationSpecification.hashCode);
    _$hash = $jc(_$hash, hibernationOptions.hashCode);
    _$hash = $jc(_$hash, licenses.hashCode);
    _$hash = $jc(_$hash, metadataOptions.hashCode);
    _$hash = $jc(_$hash, enclaveOptions.hashCode);
    _$hash = $jc(_$hash, bootMode.hashCode);
    _$hash = $jc(_$hash, platformDetails.hashCode);
    _$hash = $jc(_$hash, usageOperation.hashCode);
    _$hash = $jc(_$hash, usageOperationUpdateTime.hashCode);
    _$hash = $jc(_$hash, privateDnsNameOptions.hashCode);
    _$hash = $jc(_$hash, ipv6Address.hashCode);
    _$hash = $jc(_$hash, tpmSupport.hashCode);
    _$hash = $jc(_$hash, maintenanceOptions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InstanceBuilder implements Builder<Instance, InstanceBuilder> {
  _$Instance? _$v;

  int? _amiLaunchIndex;
  int? get amiLaunchIndex => _$this._amiLaunchIndex;
  set amiLaunchIndex(int? amiLaunchIndex) =>
      _$this._amiLaunchIndex = amiLaunchIndex;

  String? _imageId;
  String? get imageId => _$this._imageId;
  set imageId(String? imageId) => _$this._imageId = imageId;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  _i2.InstanceType? _instanceType;
  _i2.InstanceType? get instanceType => _$this._instanceType;
  set instanceType(_i2.InstanceType? instanceType) =>
      _$this._instanceType = instanceType;

  String? _kernelId;
  String? get kernelId => _$this._kernelId;
  set kernelId(String? kernelId) => _$this._kernelId = kernelId;

  String? _keyName;
  String? get keyName => _$this._keyName;
  set keyName(String? keyName) => _$this._keyName = keyName;

  DateTime? _launchTime;
  DateTime? get launchTime => _$this._launchTime;
  set launchTime(DateTime? launchTime) => _$this._launchTime = launchTime;

  _i3.MonitoringBuilder? _monitoring;
  _i3.MonitoringBuilder get monitoring =>
      _$this._monitoring ??= new _i3.MonitoringBuilder();
  set monitoring(_i3.MonitoringBuilder? monitoring) =>
      _$this._monitoring = monitoring;

  _i4.PlacementBuilder? _placement;
  _i4.PlacementBuilder get placement =>
      _$this._placement ??= new _i4.PlacementBuilder();
  set placement(_i4.PlacementBuilder? placement) =>
      _$this._placement = placement;

  _i5.PlatformValues? _platform;
  _i5.PlatformValues? get platform => _$this._platform;
  set platform(_i5.PlatformValues? platform) => _$this._platform = platform;

  String? _privateDnsName;
  String? get privateDnsName => _$this._privateDnsName;
  set privateDnsName(String? privateDnsName) =>
      _$this._privateDnsName = privateDnsName;

  String? _privateIpAddress;
  String? get privateIpAddress => _$this._privateIpAddress;
  set privateIpAddress(String? privateIpAddress) =>
      _$this._privateIpAddress = privateIpAddress;

  _i30.ListBuilder<_i6.ProductCode>? _productCodes;
  _i30.ListBuilder<_i6.ProductCode> get productCodes =>
      _$this._productCodes ??= new _i30.ListBuilder<_i6.ProductCode>();
  set productCodes(_i30.ListBuilder<_i6.ProductCode>? productCodes) =>
      _$this._productCodes = productCodes;

  String? _publicDnsName;
  String? get publicDnsName => _$this._publicDnsName;
  set publicDnsName(String? publicDnsName) =>
      _$this._publicDnsName = publicDnsName;

  String? _publicIpAddress;
  String? get publicIpAddress => _$this._publicIpAddress;
  set publicIpAddress(String? publicIpAddress) =>
      _$this._publicIpAddress = publicIpAddress;

  String? _ramdiskId;
  String? get ramdiskId => _$this._ramdiskId;
  set ramdiskId(String? ramdiskId) => _$this._ramdiskId = ramdiskId;

  _i7.InstanceStateBuilder? _state;
  _i7.InstanceStateBuilder get state =>
      _$this._state ??= new _i7.InstanceStateBuilder();
  set state(_i7.InstanceStateBuilder? state) => _$this._state = state;

  String? _stateTransitionReason;
  String? get stateTransitionReason => _$this._stateTransitionReason;
  set stateTransitionReason(String? stateTransitionReason) =>
      _$this._stateTransitionReason = stateTransitionReason;

  String? _subnetId;
  String? get subnetId => _$this._subnetId;
  set subnetId(String? subnetId) => _$this._subnetId = subnetId;

  String? _vpcId;
  String? get vpcId => _$this._vpcId;
  set vpcId(String? vpcId) => _$this._vpcId = vpcId;

  _i8.ArchitectureValues? _architecture;
  _i8.ArchitectureValues? get architecture => _$this._architecture;
  set architecture(_i8.ArchitectureValues? architecture) =>
      _$this._architecture = architecture;

  _i30.ListBuilder<_i9.InstanceBlockDeviceMapping>? _blockDeviceMappings;
  _i30.ListBuilder<_i9.InstanceBlockDeviceMapping> get blockDeviceMappings =>
      _$this._blockDeviceMappings ??=
          new _i30.ListBuilder<_i9.InstanceBlockDeviceMapping>();
  set blockDeviceMappings(
          _i30.ListBuilder<_i9.InstanceBlockDeviceMapping>?
              blockDeviceMappings) =>
      _$this._blockDeviceMappings = blockDeviceMappings;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  bool? _ebsOptimized;
  bool? get ebsOptimized => _$this._ebsOptimized;
  set ebsOptimized(bool? ebsOptimized) => _$this._ebsOptimized = ebsOptimized;

  bool? _enaSupport;
  bool? get enaSupport => _$this._enaSupport;
  set enaSupport(bool? enaSupport) => _$this._enaSupport = enaSupport;

  _i10.HypervisorType? _hypervisor;
  _i10.HypervisorType? get hypervisor => _$this._hypervisor;
  set hypervisor(_i10.HypervisorType? hypervisor) =>
      _$this._hypervisor = hypervisor;

  _i11.IamInstanceProfileBuilder? _iamInstanceProfile;
  _i11.IamInstanceProfileBuilder get iamInstanceProfile =>
      _$this._iamInstanceProfile ??= new _i11.IamInstanceProfileBuilder();
  set iamInstanceProfile(_i11.IamInstanceProfileBuilder? iamInstanceProfile) =>
      _$this._iamInstanceProfile = iamInstanceProfile;

  _i12.InstanceLifecycleType? _instanceLifecycle;
  _i12.InstanceLifecycleType? get instanceLifecycle =>
      _$this._instanceLifecycle;
  set instanceLifecycle(_i12.InstanceLifecycleType? instanceLifecycle) =>
      _$this._instanceLifecycle = instanceLifecycle;

  _i30.ListBuilder<_i13.ElasticGpuAssociation>? _elasticGpuAssociations;
  _i30.ListBuilder<_i13.ElasticGpuAssociation> get elasticGpuAssociations =>
      _$this._elasticGpuAssociations ??=
          new _i30.ListBuilder<_i13.ElasticGpuAssociation>();
  set elasticGpuAssociations(
          _i30.ListBuilder<_i13.ElasticGpuAssociation>?
              elasticGpuAssociations) =>
      _$this._elasticGpuAssociations = elasticGpuAssociations;

  _i30.ListBuilder<_i14.ElasticInferenceAcceleratorAssociation>?
      _elasticInferenceAcceleratorAssociations;
  _i30.ListBuilder<_i14.ElasticInferenceAcceleratorAssociation>
      get elasticInferenceAcceleratorAssociations => _$this
              ._elasticInferenceAcceleratorAssociations ??=
          new _i30.ListBuilder<_i14.ElasticInferenceAcceleratorAssociation>();
  set elasticInferenceAcceleratorAssociations(
          _i30.ListBuilder<_i14.ElasticInferenceAcceleratorAssociation>?
              elasticInferenceAcceleratorAssociations) =>
      _$this._elasticInferenceAcceleratorAssociations =
          elasticInferenceAcceleratorAssociations;

  _i30.ListBuilder<_i15.InstanceNetworkInterface>? _networkInterfaces;
  _i30.ListBuilder<_i15.InstanceNetworkInterface> get networkInterfaces =>
      _$this._networkInterfaces ??=
          new _i30.ListBuilder<_i15.InstanceNetworkInterface>();
  set networkInterfaces(
          _i30.ListBuilder<_i15.InstanceNetworkInterface>? networkInterfaces) =>
      _$this._networkInterfaces = networkInterfaces;

  String? _outpostArn;
  String? get outpostArn => _$this._outpostArn;
  set outpostArn(String? outpostArn) => _$this._outpostArn = outpostArn;

  String? _rootDeviceName;
  String? get rootDeviceName => _$this._rootDeviceName;
  set rootDeviceName(String? rootDeviceName) =>
      _$this._rootDeviceName = rootDeviceName;

  _i16.DeviceType? _rootDeviceType;
  _i16.DeviceType? get rootDeviceType => _$this._rootDeviceType;
  set rootDeviceType(_i16.DeviceType? rootDeviceType) =>
      _$this._rootDeviceType = rootDeviceType;

  _i30.ListBuilder<_i17.GroupIdentifier>? _securityGroups;
  _i30.ListBuilder<_i17.GroupIdentifier> get securityGroups =>
      _$this._securityGroups ??= new _i30.ListBuilder<_i17.GroupIdentifier>();
  set securityGroups(_i30.ListBuilder<_i17.GroupIdentifier>? securityGroups) =>
      _$this._securityGroups = securityGroups;

  bool? _sourceDestCheck;
  bool? get sourceDestCheck => _$this._sourceDestCheck;
  set sourceDestCheck(bool? sourceDestCheck) =>
      _$this._sourceDestCheck = sourceDestCheck;

  String? _spotInstanceRequestId;
  String? get spotInstanceRequestId => _$this._spotInstanceRequestId;
  set spotInstanceRequestId(String? spotInstanceRequestId) =>
      _$this._spotInstanceRequestId = spotInstanceRequestId;

  String? _sriovNetSupport;
  String? get sriovNetSupport => _$this._sriovNetSupport;
  set sriovNetSupport(String? sriovNetSupport) =>
      _$this._sriovNetSupport = sriovNetSupport;

  _i18.StateReasonBuilder? _stateReason;
  _i18.StateReasonBuilder get stateReason =>
      _$this._stateReason ??= new _i18.StateReasonBuilder();
  set stateReason(_i18.StateReasonBuilder? stateReason) =>
      _$this._stateReason = stateReason;

  _i30.ListBuilder<_i19.Tag>? _tags;
  _i30.ListBuilder<_i19.Tag> get tags =>
      _$this._tags ??= new _i30.ListBuilder<_i19.Tag>();
  set tags(_i30.ListBuilder<_i19.Tag>? tags) => _$this._tags = tags;

  _i20.VirtualizationType? _virtualizationType;
  _i20.VirtualizationType? get virtualizationType => _$this._virtualizationType;
  set virtualizationType(_i20.VirtualizationType? virtualizationType) =>
      _$this._virtualizationType = virtualizationType;

  _i21.CpuOptionsBuilder? _cpuOptions;
  _i21.CpuOptionsBuilder get cpuOptions =>
      _$this._cpuOptions ??= new _i21.CpuOptionsBuilder();
  set cpuOptions(_i21.CpuOptionsBuilder? cpuOptions) =>
      _$this._cpuOptions = cpuOptions;

  String? _capacityReservationId;
  String? get capacityReservationId => _$this._capacityReservationId;
  set capacityReservationId(String? capacityReservationId) =>
      _$this._capacityReservationId = capacityReservationId;

  _i22.CapacityReservationSpecificationResponseBuilder?
      _capacityReservationSpecification;
  _i22.CapacityReservationSpecificationResponseBuilder
      get capacityReservationSpecification =>
          _$this._capacityReservationSpecification ??=
              new _i22.CapacityReservationSpecificationResponseBuilder();
  set capacityReservationSpecification(
          _i22.CapacityReservationSpecificationResponseBuilder?
              capacityReservationSpecification) =>
      _$this._capacityReservationSpecification =
          capacityReservationSpecification;

  _i23.HibernationOptionsBuilder? _hibernationOptions;
  _i23.HibernationOptionsBuilder get hibernationOptions =>
      _$this._hibernationOptions ??= new _i23.HibernationOptionsBuilder();
  set hibernationOptions(_i23.HibernationOptionsBuilder? hibernationOptions) =>
      _$this._hibernationOptions = hibernationOptions;

  _i30.ListBuilder<_i24.LicenseConfiguration>? _licenses;
  _i30.ListBuilder<_i24.LicenseConfiguration> get licenses =>
      _$this._licenses ??= new _i30.ListBuilder<_i24.LicenseConfiguration>();
  set licenses(_i30.ListBuilder<_i24.LicenseConfiguration>? licenses) =>
      _$this._licenses = licenses;

  _i25.InstanceMetadataOptionsResponseBuilder? _metadataOptions;
  _i25.InstanceMetadataOptionsResponseBuilder get metadataOptions =>
      _$this._metadataOptions ??=
          new _i25.InstanceMetadataOptionsResponseBuilder();
  set metadataOptions(
          _i25.InstanceMetadataOptionsResponseBuilder? metadataOptions) =>
      _$this._metadataOptions = metadataOptions;

  _i26.EnclaveOptionsBuilder? _enclaveOptions;
  _i26.EnclaveOptionsBuilder get enclaveOptions =>
      _$this._enclaveOptions ??= new _i26.EnclaveOptionsBuilder();
  set enclaveOptions(_i26.EnclaveOptionsBuilder? enclaveOptions) =>
      _$this._enclaveOptions = enclaveOptions;

  _i27.BootModeValues? _bootMode;
  _i27.BootModeValues? get bootMode => _$this._bootMode;
  set bootMode(_i27.BootModeValues? bootMode) => _$this._bootMode = bootMode;

  String? _platformDetails;
  String? get platformDetails => _$this._platformDetails;
  set platformDetails(String? platformDetails) =>
      _$this._platformDetails = platformDetails;

  String? _usageOperation;
  String? get usageOperation => _$this._usageOperation;
  set usageOperation(String? usageOperation) =>
      _$this._usageOperation = usageOperation;

  DateTime? _usageOperationUpdateTime;
  DateTime? get usageOperationUpdateTime => _$this._usageOperationUpdateTime;
  set usageOperationUpdateTime(DateTime? usageOperationUpdateTime) =>
      _$this._usageOperationUpdateTime = usageOperationUpdateTime;

  _i28.PrivateDnsNameOptionsResponseBuilder? _privateDnsNameOptions;
  _i28.PrivateDnsNameOptionsResponseBuilder get privateDnsNameOptions =>
      _$this._privateDnsNameOptions ??=
          new _i28.PrivateDnsNameOptionsResponseBuilder();
  set privateDnsNameOptions(
          _i28.PrivateDnsNameOptionsResponseBuilder? privateDnsNameOptions) =>
      _$this._privateDnsNameOptions = privateDnsNameOptions;

  String? _ipv6Address;
  String? get ipv6Address => _$this._ipv6Address;
  set ipv6Address(String? ipv6Address) => _$this._ipv6Address = ipv6Address;

  String? _tpmSupport;
  String? get tpmSupport => _$this._tpmSupport;
  set tpmSupport(String? tpmSupport) => _$this._tpmSupport = tpmSupport;

  _i29.InstanceMaintenanceOptionsBuilder? _maintenanceOptions;
  _i29.InstanceMaintenanceOptionsBuilder get maintenanceOptions =>
      _$this._maintenanceOptions ??=
          new _i29.InstanceMaintenanceOptionsBuilder();
  set maintenanceOptions(
          _i29.InstanceMaintenanceOptionsBuilder? maintenanceOptions) =>
      _$this._maintenanceOptions = maintenanceOptions;

  InstanceBuilder() {
    Instance._init(this);
  }

  InstanceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _amiLaunchIndex = $v.amiLaunchIndex;
      _imageId = $v.imageId;
      _instanceId = $v.instanceId;
      _instanceType = $v.instanceType;
      _kernelId = $v.kernelId;
      _keyName = $v.keyName;
      _launchTime = $v.launchTime;
      _monitoring = $v.monitoring?.toBuilder();
      _placement = $v.placement?.toBuilder();
      _platform = $v.platform;
      _privateDnsName = $v.privateDnsName;
      _privateIpAddress = $v.privateIpAddress;
      _productCodes = $v.productCodes?.toBuilder();
      _publicDnsName = $v.publicDnsName;
      _publicIpAddress = $v.publicIpAddress;
      _ramdiskId = $v.ramdiskId;
      _state = $v.state?.toBuilder();
      _stateTransitionReason = $v.stateTransitionReason;
      _subnetId = $v.subnetId;
      _vpcId = $v.vpcId;
      _architecture = $v.architecture;
      _blockDeviceMappings = $v.blockDeviceMappings?.toBuilder();
      _clientToken = $v.clientToken;
      _ebsOptimized = $v.ebsOptimized;
      _enaSupport = $v.enaSupport;
      _hypervisor = $v.hypervisor;
      _iamInstanceProfile = $v.iamInstanceProfile?.toBuilder();
      _instanceLifecycle = $v.instanceLifecycle;
      _elasticGpuAssociations = $v.elasticGpuAssociations?.toBuilder();
      _elasticInferenceAcceleratorAssociations =
          $v.elasticInferenceAcceleratorAssociations?.toBuilder();
      _networkInterfaces = $v.networkInterfaces?.toBuilder();
      _outpostArn = $v.outpostArn;
      _rootDeviceName = $v.rootDeviceName;
      _rootDeviceType = $v.rootDeviceType;
      _securityGroups = $v.securityGroups?.toBuilder();
      _sourceDestCheck = $v.sourceDestCheck;
      _spotInstanceRequestId = $v.spotInstanceRequestId;
      _sriovNetSupport = $v.sriovNetSupport;
      _stateReason = $v.stateReason?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _virtualizationType = $v.virtualizationType;
      _cpuOptions = $v.cpuOptions?.toBuilder();
      _capacityReservationId = $v.capacityReservationId;
      _capacityReservationSpecification =
          $v.capacityReservationSpecification?.toBuilder();
      _hibernationOptions = $v.hibernationOptions?.toBuilder();
      _licenses = $v.licenses?.toBuilder();
      _metadataOptions = $v.metadataOptions?.toBuilder();
      _enclaveOptions = $v.enclaveOptions?.toBuilder();
      _bootMode = $v.bootMode;
      _platformDetails = $v.platformDetails;
      _usageOperation = $v.usageOperation;
      _usageOperationUpdateTime = $v.usageOperationUpdateTime;
      _privateDnsNameOptions = $v.privateDnsNameOptions?.toBuilder();
      _ipv6Address = $v.ipv6Address;
      _tpmSupport = $v.tpmSupport;
      _maintenanceOptions = $v.maintenanceOptions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Instance other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Instance;
  }

  @override
  void update(void Function(InstanceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Instance build() => _build();

  _$Instance _build() {
    _$Instance _$result;
    try {
      _$result = _$v ??
          new _$Instance._(
              amiLaunchIndex: BuiltValueNullFieldError.checkNotNull(
                  amiLaunchIndex, r'Instance', 'amiLaunchIndex'),
              imageId: imageId,
              instanceId: instanceId,
              instanceType: instanceType,
              kernelId: kernelId,
              keyName: keyName,
              launchTime: launchTime,
              monitoring: _monitoring?.build(),
              placement: _placement?.build(),
              platform: platform,
              privateDnsName: privateDnsName,
              privateIpAddress: privateIpAddress,
              productCodes: _productCodes?.build(),
              publicDnsName: publicDnsName,
              publicIpAddress: publicIpAddress,
              ramdiskId: ramdiskId,
              state: _state?.build(),
              stateTransitionReason: stateTransitionReason,
              subnetId: subnetId,
              vpcId: vpcId,
              architecture: architecture,
              blockDeviceMappings: _blockDeviceMappings?.build(),
              clientToken: clientToken,
              ebsOptimized: BuiltValueNullFieldError.checkNotNull(
                  ebsOptimized, r'Instance', 'ebsOptimized'),
              enaSupport: BuiltValueNullFieldError.checkNotNull(
                  enaSupport, r'Instance', 'enaSupport'),
              hypervisor: hypervisor,
              iamInstanceProfile: _iamInstanceProfile?.build(),
              instanceLifecycle: instanceLifecycle,
              elasticGpuAssociations: _elasticGpuAssociations?.build(),
              elasticInferenceAcceleratorAssociations:
                  _elasticInferenceAcceleratorAssociations?.build(),
              networkInterfaces: _networkInterfaces?.build(),
              outpostArn: outpostArn,
              rootDeviceName: rootDeviceName,
              rootDeviceType: rootDeviceType,
              securityGroups: _securityGroups?.build(),
              sourceDestCheck: BuiltValueNullFieldError.checkNotNull(
                  sourceDestCheck, r'Instance', 'sourceDestCheck'),
              spotInstanceRequestId: spotInstanceRequestId,
              sriovNetSupport: sriovNetSupport,
              stateReason: _stateReason?.build(),
              tags: _tags?.build(),
              virtualizationType: virtualizationType,
              cpuOptions: _cpuOptions?.build(),
              capacityReservationId: capacityReservationId,
              capacityReservationSpecification:
                  _capacityReservationSpecification?.build(),
              hibernationOptions: _hibernationOptions?.build(),
              licenses: _licenses?.build(),
              metadataOptions: _metadataOptions?.build(),
              enclaveOptions: _enclaveOptions?.build(),
              bootMode: bootMode,
              platformDetails: platformDetails,
              usageOperation: usageOperation,
              usageOperationUpdateTime: usageOperationUpdateTime,
              privateDnsNameOptions: _privateDnsNameOptions?.build(),
              ipv6Address: ipv6Address,
              tpmSupport: tpmSupport,
              maintenanceOptions: _maintenanceOptions?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'monitoring';
        _monitoring?.build();
        _$failedField = 'placement';
        _placement?.build();

        _$failedField = 'productCodes';
        _productCodes?.build();

        _$failedField = 'state';
        _state?.build();

        _$failedField = 'blockDeviceMappings';
        _blockDeviceMappings?.build();

        _$failedField = 'iamInstanceProfile';
        _iamInstanceProfile?.build();

        _$failedField = 'elasticGpuAssociations';
        _elasticGpuAssociations?.build();
        _$failedField = 'elasticInferenceAcceleratorAssociations';
        _elasticInferenceAcceleratorAssociations?.build();
        _$failedField = 'networkInterfaces';
        _networkInterfaces?.build();

        _$failedField = 'securityGroups';
        _securityGroups?.build();

        _$failedField = 'stateReason';
        _stateReason?.build();
        _$failedField = 'tags';
        _tags?.build();

        _$failedField = 'cpuOptions';
        _cpuOptions?.build();

        _$failedField = 'capacityReservationSpecification';
        _capacityReservationSpecification?.build();
        _$failedField = 'hibernationOptions';
        _hibernationOptions?.build();
        _$failedField = 'licenses';
        _licenses?.build();
        _$failedField = 'metadataOptions';
        _metadataOptions?.build();
        _$failedField = 'enclaveOptions';
        _enclaveOptions?.build();

        _$failedField = 'privateDnsNameOptions';
        _privateDnsNameOptions?.build();

        _$failedField = 'maintenanceOptions';
        _maintenanceOptions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Instance', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
