// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.run_instances_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RunInstancesRequest extends RunInstancesRequest {
  @override
  final _i25.BuiltList<_i3.BlockDeviceMapping>? blockDeviceMappings;
  @override
  final String? imageId;
  @override
  final _i4.InstanceType? instanceType;
  @override
  final int ipv6AddressCount;
  @override
  final _i25.BuiltList<_i5.InstanceIpv6Address>? ipv6Addresses;
  @override
  final String? kernelId;
  @override
  final String? keyName;
  @override
  final int maxCount;
  @override
  final int minCount;
  @override
  final _i6.RunInstancesMonitoringEnabled? monitoring;
  @override
  final _i7.Placement? placement;
  @override
  final String? ramdiskId;
  @override
  final _i25.BuiltList<String>? securityGroupIds;
  @override
  final _i25.BuiltList<String>? securityGroups;
  @override
  final String? subnetId;
  @override
  final String? userData;
  @override
  final String? additionalInfo;
  @override
  final String? clientToken;
  @override
  final bool disableApiTermination;
  @override
  final bool dryRun;
  @override
  final bool ebsOptimized;
  @override
  final _i8.IamInstanceProfileSpecification? iamInstanceProfile;
  @override
  final _i9.ShutdownBehavior? instanceInitiatedShutdownBehavior;
  @override
  final _i25.BuiltList<_i10.InstanceNetworkInterfaceSpecification>?
      networkInterfaces;
  @override
  final String? privateIpAddress;
  @override
  final _i25.BuiltList<_i11.ElasticGpuSpecification>? elasticGpuSpecification;
  @override
  final _i25.BuiltList<_i12.ElasticInferenceAccelerator>?
      elasticInferenceAccelerators;
  @override
  final _i25.BuiltList<_i13.TagSpecification>? tagSpecifications;
  @override
  final _i14.LaunchTemplateSpecification? launchTemplate;
  @override
  final _i15.InstanceMarketOptionsRequest? instanceMarketOptions;
  @override
  final _i16.CreditSpecificationRequest? creditSpecification;
  @override
  final _i17.CpuOptionsRequest? cpuOptions;
  @override
  final _i18.CapacityReservationSpecification? capacityReservationSpecification;
  @override
  final _i19.HibernationOptionsRequest? hibernationOptions;
  @override
  final _i25.BuiltList<_i20.LicenseConfigurationRequest>? licenseSpecifications;
  @override
  final _i21.InstanceMetadataOptionsRequest? metadataOptions;
  @override
  final _i22.EnclaveOptionsRequest? enclaveOptions;
  @override
  final _i23.PrivateDnsNameOptionsRequest? privateDnsNameOptions;
  @override
  final _i24.InstanceMaintenanceOptionsRequest? maintenanceOptions;
  @override
  final bool disableApiStop;

  factory _$RunInstancesRequest(
          [void Function(RunInstancesRequestBuilder)? updates]) =>
      (new RunInstancesRequestBuilder()..update(updates))._build();

  _$RunInstancesRequest._(
      {this.blockDeviceMappings,
      this.imageId,
      this.instanceType,
      required this.ipv6AddressCount,
      this.ipv6Addresses,
      this.kernelId,
      this.keyName,
      required this.maxCount,
      required this.minCount,
      this.monitoring,
      this.placement,
      this.ramdiskId,
      this.securityGroupIds,
      this.securityGroups,
      this.subnetId,
      this.userData,
      this.additionalInfo,
      this.clientToken,
      required this.disableApiTermination,
      required this.dryRun,
      required this.ebsOptimized,
      this.iamInstanceProfile,
      this.instanceInitiatedShutdownBehavior,
      this.networkInterfaces,
      this.privateIpAddress,
      this.elasticGpuSpecification,
      this.elasticInferenceAccelerators,
      this.tagSpecifications,
      this.launchTemplate,
      this.instanceMarketOptions,
      this.creditSpecification,
      this.cpuOptions,
      this.capacityReservationSpecification,
      this.hibernationOptions,
      this.licenseSpecifications,
      this.metadataOptions,
      this.enclaveOptions,
      this.privateDnsNameOptions,
      this.maintenanceOptions,
      required this.disableApiStop})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        ipv6AddressCount, r'RunInstancesRequest', 'ipv6AddressCount');
    BuiltValueNullFieldError.checkNotNull(
        maxCount, r'RunInstancesRequest', 'maxCount');
    BuiltValueNullFieldError.checkNotNull(
        minCount, r'RunInstancesRequest', 'minCount');
    BuiltValueNullFieldError.checkNotNull(
        disableApiTermination, r'RunInstancesRequest', 'disableApiTermination');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'RunInstancesRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        ebsOptimized, r'RunInstancesRequest', 'ebsOptimized');
    BuiltValueNullFieldError.checkNotNull(
        disableApiStop, r'RunInstancesRequest', 'disableApiStop');
  }

  @override
  RunInstancesRequest rebuild(
          void Function(RunInstancesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RunInstancesRequestBuilder toBuilder() =>
      new RunInstancesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RunInstancesRequest &&
        blockDeviceMappings == other.blockDeviceMappings &&
        imageId == other.imageId &&
        instanceType == other.instanceType &&
        ipv6AddressCount == other.ipv6AddressCount &&
        ipv6Addresses == other.ipv6Addresses &&
        kernelId == other.kernelId &&
        keyName == other.keyName &&
        maxCount == other.maxCount &&
        minCount == other.minCount &&
        monitoring == other.monitoring &&
        placement == other.placement &&
        ramdiskId == other.ramdiskId &&
        securityGroupIds == other.securityGroupIds &&
        securityGroups == other.securityGroups &&
        subnetId == other.subnetId &&
        userData == other.userData &&
        additionalInfo == other.additionalInfo &&
        clientToken == other.clientToken &&
        disableApiTermination == other.disableApiTermination &&
        dryRun == other.dryRun &&
        ebsOptimized == other.ebsOptimized &&
        iamInstanceProfile == other.iamInstanceProfile &&
        instanceInitiatedShutdownBehavior ==
            other.instanceInitiatedShutdownBehavior &&
        networkInterfaces == other.networkInterfaces &&
        privateIpAddress == other.privateIpAddress &&
        elasticGpuSpecification == other.elasticGpuSpecification &&
        elasticInferenceAccelerators == other.elasticInferenceAccelerators &&
        tagSpecifications == other.tagSpecifications &&
        launchTemplate == other.launchTemplate &&
        instanceMarketOptions == other.instanceMarketOptions &&
        creditSpecification == other.creditSpecification &&
        cpuOptions == other.cpuOptions &&
        capacityReservationSpecification ==
            other.capacityReservationSpecification &&
        hibernationOptions == other.hibernationOptions &&
        licenseSpecifications == other.licenseSpecifications &&
        metadataOptions == other.metadataOptions &&
        enclaveOptions == other.enclaveOptions &&
        privateDnsNameOptions == other.privateDnsNameOptions &&
        maintenanceOptions == other.maintenanceOptions &&
        disableApiStop == other.disableApiStop;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, blockDeviceMappings.hashCode);
    _$hash = $jc(_$hash, imageId.hashCode);
    _$hash = $jc(_$hash, instanceType.hashCode);
    _$hash = $jc(_$hash, ipv6AddressCount.hashCode);
    _$hash = $jc(_$hash, ipv6Addresses.hashCode);
    _$hash = $jc(_$hash, kernelId.hashCode);
    _$hash = $jc(_$hash, keyName.hashCode);
    _$hash = $jc(_$hash, maxCount.hashCode);
    _$hash = $jc(_$hash, minCount.hashCode);
    _$hash = $jc(_$hash, monitoring.hashCode);
    _$hash = $jc(_$hash, placement.hashCode);
    _$hash = $jc(_$hash, ramdiskId.hashCode);
    _$hash = $jc(_$hash, securityGroupIds.hashCode);
    _$hash = $jc(_$hash, securityGroups.hashCode);
    _$hash = $jc(_$hash, subnetId.hashCode);
    _$hash = $jc(_$hash, userData.hashCode);
    _$hash = $jc(_$hash, additionalInfo.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, disableApiTermination.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, ebsOptimized.hashCode);
    _$hash = $jc(_$hash, iamInstanceProfile.hashCode);
    _$hash = $jc(_$hash, instanceInitiatedShutdownBehavior.hashCode);
    _$hash = $jc(_$hash, networkInterfaces.hashCode);
    _$hash = $jc(_$hash, privateIpAddress.hashCode);
    _$hash = $jc(_$hash, elasticGpuSpecification.hashCode);
    _$hash = $jc(_$hash, elasticInferenceAccelerators.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, launchTemplate.hashCode);
    _$hash = $jc(_$hash, instanceMarketOptions.hashCode);
    _$hash = $jc(_$hash, creditSpecification.hashCode);
    _$hash = $jc(_$hash, cpuOptions.hashCode);
    _$hash = $jc(_$hash, capacityReservationSpecification.hashCode);
    _$hash = $jc(_$hash, hibernationOptions.hashCode);
    _$hash = $jc(_$hash, licenseSpecifications.hashCode);
    _$hash = $jc(_$hash, metadataOptions.hashCode);
    _$hash = $jc(_$hash, enclaveOptions.hashCode);
    _$hash = $jc(_$hash, privateDnsNameOptions.hashCode);
    _$hash = $jc(_$hash, maintenanceOptions.hashCode);
    _$hash = $jc(_$hash, disableApiStop.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RunInstancesRequestBuilder
    implements Builder<RunInstancesRequest, RunInstancesRequestBuilder> {
  _$RunInstancesRequest? _$v;

  _i25.ListBuilder<_i3.BlockDeviceMapping>? _blockDeviceMappings;
  _i25.ListBuilder<_i3.BlockDeviceMapping> get blockDeviceMappings =>
      _$this._blockDeviceMappings ??=
          new _i25.ListBuilder<_i3.BlockDeviceMapping>();
  set blockDeviceMappings(
          _i25.ListBuilder<_i3.BlockDeviceMapping>? blockDeviceMappings) =>
      _$this._blockDeviceMappings = blockDeviceMappings;

  String? _imageId;
  String? get imageId => _$this._imageId;
  set imageId(String? imageId) => _$this._imageId = imageId;

  _i4.InstanceType? _instanceType;
  _i4.InstanceType? get instanceType => _$this._instanceType;
  set instanceType(_i4.InstanceType? instanceType) =>
      _$this._instanceType = instanceType;

  int? _ipv6AddressCount;
  int? get ipv6AddressCount => _$this._ipv6AddressCount;
  set ipv6AddressCount(int? ipv6AddressCount) =>
      _$this._ipv6AddressCount = ipv6AddressCount;

  _i25.ListBuilder<_i5.InstanceIpv6Address>? _ipv6Addresses;
  _i25.ListBuilder<_i5.InstanceIpv6Address> get ipv6Addresses =>
      _$this._ipv6Addresses ??= new _i25.ListBuilder<_i5.InstanceIpv6Address>();
  set ipv6Addresses(_i25.ListBuilder<_i5.InstanceIpv6Address>? ipv6Addresses) =>
      _$this._ipv6Addresses = ipv6Addresses;

  String? _kernelId;
  String? get kernelId => _$this._kernelId;
  set kernelId(String? kernelId) => _$this._kernelId = kernelId;

  String? _keyName;
  String? get keyName => _$this._keyName;
  set keyName(String? keyName) => _$this._keyName = keyName;

  int? _maxCount;
  int? get maxCount => _$this._maxCount;
  set maxCount(int? maxCount) => _$this._maxCount = maxCount;

  int? _minCount;
  int? get minCount => _$this._minCount;
  set minCount(int? minCount) => _$this._minCount = minCount;

  _i6.RunInstancesMonitoringEnabledBuilder? _monitoring;
  _i6.RunInstancesMonitoringEnabledBuilder get monitoring =>
      _$this._monitoring ??= new _i6.RunInstancesMonitoringEnabledBuilder();
  set monitoring(_i6.RunInstancesMonitoringEnabledBuilder? monitoring) =>
      _$this._monitoring = monitoring;

  _i7.PlacementBuilder? _placement;
  _i7.PlacementBuilder get placement =>
      _$this._placement ??= new _i7.PlacementBuilder();
  set placement(_i7.PlacementBuilder? placement) =>
      _$this._placement = placement;

  String? _ramdiskId;
  String? get ramdiskId => _$this._ramdiskId;
  set ramdiskId(String? ramdiskId) => _$this._ramdiskId = ramdiskId;

  _i25.ListBuilder<String>? _securityGroupIds;
  _i25.ListBuilder<String> get securityGroupIds =>
      _$this._securityGroupIds ??= new _i25.ListBuilder<String>();
  set securityGroupIds(_i25.ListBuilder<String>? securityGroupIds) =>
      _$this._securityGroupIds = securityGroupIds;

  _i25.ListBuilder<String>? _securityGroups;
  _i25.ListBuilder<String> get securityGroups =>
      _$this._securityGroups ??= new _i25.ListBuilder<String>();
  set securityGroups(_i25.ListBuilder<String>? securityGroups) =>
      _$this._securityGroups = securityGroups;

  String? _subnetId;
  String? get subnetId => _$this._subnetId;
  set subnetId(String? subnetId) => _$this._subnetId = subnetId;

  String? _userData;
  String? get userData => _$this._userData;
  set userData(String? userData) => _$this._userData = userData;

  String? _additionalInfo;
  String? get additionalInfo => _$this._additionalInfo;
  set additionalInfo(String? additionalInfo) =>
      _$this._additionalInfo = additionalInfo;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  bool? _disableApiTermination;
  bool? get disableApiTermination => _$this._disableApiTermination;
  set disableApiTermination(bool? disableApiTermination) =>
      _$this._disableApiTermination = disableApiTermination;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  bool? _ebsOptimized;
  bool? get ebsOptimized => _$this._ebsOptimized;
  set ebsOptimized(bool? ebsOptimized) => _$this._ebsOptimized = ebsOptimized;

  _i8.IamInstanceProfileSpecificationBuilder? _iamInstanceProfile;
  _i8.IamInstanceProfileSpecificationBuilder get iamInstanceProfile =>
      _$this._iamInstanceProfile ??=
          new _i8.IamInstanceProfileSpecificationBuilder();
  set iamInstanceProfile(
          _i8.IamInstanceProfileSpecificationBuilder? iamInstanceProfile) =>
      _$this._iamInstanceProfile = iamInstanceProfile;

  _i9.ShutdownBehavior? _instanceInitiatedShutdownBehavior;
  _i9.ShutdownBehavior? get instanceInitiatedShutdownBehavior =>
      _$this._instanceInitiatedShutdownBehavior;
  set instanceInitiatedShutdownBehavior(
          _i9.ShutdownBehavior? instanceInitiatedShutdownBehavior) =>
      _$this._instanceInitiatedShutdownBehavior =
          instanceInitiatedShutdownBehavior;

  _i25.ListBuilder<_i10.InstanceNetworkInterfaceSpecification>?
      _networkInterfaces;
  _i25.ListBuilder<_i10.InstanceNetworkInterfaceSpecification>
      get networkInterfaces => _$this._networkInterfaces ??=
          new _i25.ListBuilder<_i10.InstanceNetworkInterfaceSpecification>();
  set networkInterfaces(
          _i25.ListBuilder<_i10.InstanceNetworkInterfaceSpecification>?
              networkInterfaces) =>
      _$this._networkInterfaces = networkInterfaces;

  String? _privateIpAddress;
  String? get privateIpAddress => _$this._privateIpAddress;
  set privateIpAddress(String? privateIpAddress) =>
      _$this._privateIpAddress = privateIpAddress;

  _i25.ListBuilder<_i11.ElasticGpuSpecification>? _elasticGpuSpecification;
  _i25.ListBuilder<_i11.ElasticGpuSpecification> get elasticGpuSpecification =>
      _$this._elasticGpuSpecification ??=
          new _i25.ListBuilder<_i11.ElasticGpuSpecification>();
  set elasticGpuSpecification(
          _i25.ListBuilder<_i11.ElasticGpuSpecification>?
              elasticGpuSpecification) =>
      _$this._elasticGpuSpecification = elasticGpuSpecification;

  _i25.ListBuilder<_i12.ElasticInferenceAccelerator>?
      _elasticInferenceAccelerators;
  _i25.ListBuilder<_i12.ElasticInferenceAccelerator>
      get elasticInferenceAccelerators =>
          _$this._elasticInferenceAccelerators ??=
              new _i25.ListBuilder<_i12.ElasticInferenceAccelerator>();
  set elasticInferenceAccelerators(
          _i25.ListBuilder<_i12.ElasticInferenceAccelerator>?
              elasticInferenceAccelerators) =>
      _$this._elasticInferenceAccelerators = elasticInferenceAccelerators;

  _i25.ListBuilder<_i13.TagSpecification>? _tagSpecifications;
  _i25.ListBuilder<_i13.TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??=
          new _i25.ListBuilder<_i13.TagSpecification>();
  set tagSpecifications(
          _i25.ListBuilder<_i13.TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  _i14.LaunchTemplateSpecificationBuilder? _launchTemplate;
  _i14.LaunchTemplateSpecificationBuilder get launchTemplate =>
      _$this._launchTemplate ??= new _i14.LaunchTemplateSpecificationBuilder();
  set launchTemplate(_i14.LaunchTemplateSpecificationBuilder? launchTemplate) =>
      _$this._launchTemplate = launchTemplate;

  _i15.InstanceMarketOptionsRequestBuilder? _instanceMarketOptions;
  _i15.InstanceMarketOptionsRequestBuilder get instanceMarketOptions =>
      _$this._instanceMarketOptions ??=
          new _i15.InstanceMarketOptionsRequestBuilder();
  set instanceMarketOptions(
          _i15.InstanceMarketOptionsRequestBuilder? instanceMarketOptions) =>
      _$this._instanceMarketOptions = instanceMarketOptions;

  _i16.CreditSpecificationRequestBuilder? _creditSpecification;
  _i16.CreditSpecificationRequestBuilder get creditSpecification =>
      _$this._creditSpecification ??=
          new _i16.CreditSpecificationRequestBuilder();
  set creditSpecification(
          _i16.CreditSpecificationRequestBuilder? creditSpecification) =>
      _$this._creditSpecification = creditSpecification;

  _i17.CpuOptionsRequestBuilder? _cpuOptions;
  _i17.CpuOptionsRequestBuilder get cpuOptions =>
      _$this._cpuOptions ??= new _i17.CpuOptionsRequestBuilder();
  set cpuOptions(_i17.CpuOptionsRequestBuilder? cpuOptions) =>
      _$this._cpuOptions = cpuOptions;

  _i18.CapacityReservationSpecificationBuilder?
      _capacityReservationSpecification;
  _i18.CapacityReservationSpecificationBuilder
      get capacityReservationSpecification =>
          _$this._capacityReservationSpecification ??=
              new _i18.CapacityReservationSpecificationBuilder();
  set capacityReservationSpecification(
          _i18.CapacityReservationSpecificationBuilder?
              capacityReservationSpecification) =>
      _$this._capacityReservationSpecification =
          capacityReservationSpecification;

  _i19.HibernationOptionsRequestBuilder? _hibernationOptions;
  _i19.HibernationOptionsRequestBuilder get hibernationOptions =>
      _$this._hibernationOptions ??=
          new _i19.HibernationOptionsRequestBuilder();
  set hibernationOptions(
          _i19.HibernationOptionsRequestBuilder? hibernationOptions) =>
      _$this._hibernationOptions = hibernationOptions;

  _i25.ListBuilder<_i20.LicenseConfigurationRequest>? _licenseSpecifications;
  _i25.ListBuilder<_i20.LicenseConfigurationRequest>
      get licenseSpecifications => _$this._licenseSpecifications ??=
          new _i25.ListBuilder<_i20.LicenseConfigurationRequest>();
  set licenseSpecifications(
          _i25.ListBuilder<_i20.LicenseConfigurationRequest>?
              licenseSpecifications) =>
      _$this._licenseSpecifications = licenseSpecifications;

  _i21.InstanceMetadataOptionsRequestBuilder? _metadataOptions;
  _i21.InstanceMetadataOptionsRequestBuilder get metadataOptions =>
      _$this._metadataOptions ??=
          new _i21.InstanceMetadataOptionsRequestBuilder();
  set metadataOptions(
          _i21.InstanceMetadataOptionsRequestBuilder? metadataOptions) =>
      _$this._metadataOptions = metadataOptions;

  _i22.EnclaveOptionsRequestBuilder? _enclaveOptions;
  _i22.EnclaveOptionsRequestBuilder get enclaveOptions =>
      _$this._enclaveOptions ??= new _i22.EnclaveOptionsRequestBuilder();
  set enclaveOptions(_i22.EnclaveOptionsRequestBuilder? enclaveOptions) =>
      _$this._enclaveOptions = enclaveOptions;

  _i23.PrivateDnsNameOptionsRequestBuilder? _privateDnsNameOptions;
  _i23.PrivateDnsNameOptionsRequestBuilder get privateDnsNameOptions =>
      _$this._privateDnsNameOptions ??=
          new _i23.PrivateDnsNameOptionsRequestBuilder();
  set privateDnsNameOptions(
          _i23.PrivateDnsNameOptionsRequestBuilder? privateDnsNameOptions) =>
      _$this._privateDnsNameOptions = privateDnsNameOptions;

  _i24.InstanceMaintenanceOptionsRequestBuilder? _maintenanceOptions;
  _i24.InstanceMaintenanceOptionsRequestBuilder get maintenanceOptions =>
      _$this._maintenanceOptions ??=
          new _i24.InstanceMaintenanceOptionsRequestBuilder();
  set maintenanceOptions(
          _i24.InstanceMaintenanceOptionsRequestBuilder? maintenanceOptions) =>
      _$this._maintenanceOptions = maintenanceOptions;

  bool? _disableApiStop;
  bool? get disableApiStop => _$this._disableApiStop;
  set disableApiStop(bool? disableApiStop) =>
      _$this._disableApiStop = disableApiStop;

  RunInstancesRequestBuilder() {
    RunInstancesRequest._init(this);
  }

  RunInstancesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _blockDeviceMappings = $v.blockDeviceMappings?.toBuilder();
      _imageId = $v.imageId;
      _instanceType = $v.instanceType;
      _ipv6AddressCount = $v.ipv6AddressCount;
      _ipv6Addresses = $v.ipv6Addresses?.toBuilder();
      _kernelId = $v.kernelId;
      _keyName = $v.keyName;
      _maxCount = $v.maxCount;
      _minCount = $v.minCount;
      _monitoring = $v.monitoring?.toBuilder();
      _placement = $v.placement?.toBuilder();
      _ramdiskId = $v.ramdiskId;
      _securityGroupIds = $v.securityGroupIds?.toBuilder();
      _securityGroups = $v.securityGroups?.toBuilder();
      _subnetId = $v.subnetId;
      _userData = $v.userData;
      _additionalInfo = $v.additionalInfo;
      _clientToken = $v.clientToken;
      _disableApiTermination = $v.disableApiTermination;
      _dryRun = $v.dryRun;
      _ebsOptimized = $v.ebsOptimized;
      _iamInstanceProfile = $v.iamInstanceProfile?.toBuilder();
      _instanceInitiatedShutdownBehavior = $v.instanceInitiatedShutdownBehavior;
      _networkInterfaces = $v.networkInterfaces?.toBuilder();
      _privateIpAddress = $v.privateIpAddress;
      _elasticGpuSpecification = $v.elasticGpuSpecification?.toBuilder();
      _elasticInferenceAccelerators =
          $v.elasticInferenceAccelerators?.toBuilder();
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _launchTemplate = $v.launchTemplate?.toBuilder();
      _instanceMarketOptions = $v.instanceMarketOptions?.toBuilder();
      _creditSpecification = $v.creditSpecification?.toBuilder();
      _cpuOptions = $v.cpuOptions?.toBuilder();
      _capacityReservationSpecification =
          $v.capacityReservationSpecification?.toBuilder();
      _hibernationOptions = $v.hibernationOptions?.toBuilder();
      _licenseSpecifications = $v.licenseSpecifications?.toBuilder();
      _metadataOptions = $v.metadataOptions?.toBuilder();
      _enclaveOptions = $v.enclaveOptions?.toBuilder();
      _privateDnsNameOptions = $v.privateDnsNameOptions?.toBuilder();
      _maintenanceOptions = $v.maintenanceOptions?.toBuilder();
      _disableApiStop = $v.disableApiStop;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RunInstancesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RunInstancesRequest;
  }

  @override
  void update(void Function(RunInstancesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RunInstancesRequest build() => _build();

  _$RunInstancesRequest _build() {
    _$RunInstancesRequest _$result;
    try {
      _$result = _$v ??
          new _$RunInstancesRequest._(
              blockDeviceMappings: _blockDeviceMappings?.build(),
              imageId: imageId,
              instanceType: instanceType,
              ipv6AddressCount: BuiltValueNullFieldError.checkNotNull(
                  ipv6AddressCount, r'RunInstancesRequest', 'ipv6AddressCount'),
              ipv6Addresses: _ipv6Addresses?.build(),
              kernelId: kernelId,
              keyName: keyName,
              maxCount: BuiltValueNullFieldError.checkNotNull(
                  maxCount, r'RunInstancesRequest', 'maxCount'),
              minCount: BuiltValueNullFieldError.checkNotNull(
                  minCount, r'RunInstancesRequest', 'minCount'),
              monitoring: _monitoring?.build(),
              placement: _placement?.build(),
              ramdiskId: ramdiskId,
              securityGroupIds: _securityGroupIds?.build(),
              securityGroups: _securityGroups?.build(),
              subnetId: subnetId,
              userData: userData,
              additionalInfo: additionalInfo,
              clientToken: clientToken,
              disableApiTermination: BuiltValueNullFieldError.checkNotNull(
                  disableApiTermination, r'RunInstancesRequest', 'disableApiTermination'),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'RunInstancesRequest', 'dryRun'),
              ebsOptimized: BuiltValueNullFieldError.checkNotNull(
                  ebsOptimized, r'RunInstancesRequest', 'ebsOptimized'),
              iamInstanceProfile: _iamInstanceProfile?.build(),
              instanceInitiatedShutdownBehavior:
                  instanceInitiatedShutdownBehavior,
              networkInterfaces: _networkInterfaces?.build(),
              privateIpAddress: privateIpAddress,
              elasticGpuSpecification: _elasticGpuSpecification?.build(),
              elasticInferenceAccelerators:
                  _elasticInferenceAccelerators?.build(),
              tagSpecifications: _tagSpecifications?.build(),
              launchTemplate: _launchTemplate?.build(),
              instanceMarketOptions: _instanceMarketOptions?.build(),
              creditSpecification: _creditSpecification?.build(),
              cpuOptions: _cpuOptions?.build(),
              capacityReservationSpecification:
                  _capacityReservationSpecification?.build(),
              hibernationOptions: _hibernationOptions?.build(),
              licenseSpecifications: _licenseSpecifications?.build(),
              metadataOptions: _metadataOptions?.build(),
              enclaveOptions: _enclaveOptions?.build(),
              privateDnsNameOptions: _privateDnsNameOptions?.build(),
              maintenanceOptions: _maintenanceOptions?.build(),
              disableApiStop: BuiltValueNullFieldError.checkNotNull(disableApiStop, r'RunInstancesRequest', 'disableApiStop'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'blockDeviceMappings';
        _blockDeviceMappings?.build();

        _$failedField = 'ipv6Addresses';
        _ipv6Addresses?.build();

        _$failedField = 'monitoring';
        _monitoring?.build();
        _$failedField = 'placement';
        _placement?.build();

        _$failedField = 'securityGroupIds';
        _securityGroupIds?.build();
        _$failedField = 'securityGroups';
        _securityGroups?.build();

        _$failedField = 'iamInstanceProfile';
        _iamInstanceProfile?.build();

        _$failedField = 'networkInterfaces';
        _networkInterfaces?.build();

        _$failedField = 'elasticGpuSpecification';
        _elasticGpuSpecification?.build();
        _$failedField = 'elasticInferenceAccelerators';
        _elasticInferenceAccelerators?.build();
        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
        _$failedField = 'launchTemplate';
        _launchTemplate?.build();
        _$failedField = 'instanceMarketOptions';
        _instanceMarketOptions?.build();
        _$failedField = 'creditSpecification';
        _creditSpecification?.build();
        _$failedField = 'cpuOptions';
        _cpuOptions?.build();
        _$failedField = 'capacityReservationSpecification';
        _capacityReservationSpecification?.build();
        _$failedField = 'hibernationOptions';
        _hibernationOptions?.build();
        _$failedField = 'licenseSpecifications';
        _licenseSpecifications?.build();
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
            r'RunInstancesRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
