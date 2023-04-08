// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.request_launch_template_data;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RequestLaunchTemplateData extends RequestLaunchTemplateData {
  @override
  final String? kernelId;
  @override
  final bool ebsOptimized;
  @override
  final _i2.LaunchTemplateIamInstanceProfileSpecificationRequest?
      iamInstanceProfile;
  @override
  final _i23.BuiltList<_i3.LaunchTemplateBlockDeviceMappingRequest>?
      blockDeviceMappings;
  @override
  final _i23.BuiltList<
          _i4.LaunchTemplateInstanceNetworkInterfaceSpecificationRequest>?
      networkInterfaces;
  @override
  final String? imageId;
  @override
  final _i5.InstanceType? instanceType;
  @override
  final String? keyName;
  @override
  final _i6.LaunchTemplatesMonitoringRequest? monitoring;
  @override
  final _i7.LaunchTemplatePlacementRequest? placement;
  @override
  final String? ramDiskId;
  @override
  final bool disableApiTermination;
  @override
  final _i8.ShutdownBehavior? instanceInitiatedShutdownBehavior;
  @override
  final String? userData;
  @override
  final _i23.BuiltList<_i9.LaunchTemplateTagSpecificationRequest>?
      tagSpecifications;
  @override
  final _i23.BuiltList<_i10.ElasticGpuSpecification>? elasticGpuSpecifications;
  @override
  final _i23.BuiltList<_i11.LaunchTemplateElasticInferenceAccelerator>?
      elasticInferenceAccelerators;
  @override
  final _i23.BuiltList<String>? securityGroupIds;
  @override
  final _i23.BuiltList<String>? securityGroups;
  @override
  final _i12.LaunchTemplateInstanceMarketOptionsRequest? instanceMarketOptions;
  @override
  final _i13.CreditSpecificationRequest? creditSpecification;
  @override
  final _i14.LaunchTemplateCpuOptionsRequest? cpuOptions;
  @override
  final _i15.LaunchTemplateCapacityReservationSpecificationRequest?
      capacityReservationSpecification;
  @override
  final _i23.BuiltList<_i16.LaunchTemplateLicenseConfigurationRequest>?
      licenseSpecifications;
  @override
  final _i17.LaunchTemplateHibernationOptionsRequest? hibernationOptions;
  @override
  final _i18.LaunchTemplateInstanceMetadataOptionsRequest? metadataOptions;
  @override
  final _i19.LaunchTemplateEnclaveOptionsRequest? enclaveOptions;
  @override
  final _i20.InstanceRequirementsRequest? instanceRequirements;
  @override
  final _i21.LaunchTemplatePrivateDnsNameOptionsRequest? privateDnsNameOptions;
  @override
  final _i22.LaunchTemplateInstanceMaintenanceOptionsRequest?
      maintenanceOptions;
  @override
  final bool disableApiStop;

  factory _$RequestLaunchTemplateData(
          [void Function(RequestLaunchTemplateDataBuilder)? updates]) =>
      (new RequestLaunchTemplateDataBuilder()..update(updates))._build();

  _$RequestLaunchTemplateData._(
      {this.kernelId,
      required this.ebsOptimized,
      this.iamInstanceProfile,
      this.blockDeviceMappings,
      this.networkInterfaces,
      this.imageId,
      this.instanceType,
      this.keyName,
      this.monitoring,
      this.placement,
      this.ramDiskId,
      required this.disableApiTermination,
      this.instanceInitiatedShutdownBehavior,
      this.userData,
      this.tagSpecifications,
      this.elasticGpuSpecifications,
      this.elasticInferenceAccelerators,
      this.securityGroupIds,
      this.securityGroups,
      this.instanceMarketOptions,
      this.creditSpecification,
      this.cpuOptions,
      this.capacityReservationSpecification,
      this.licenseSpecifications,
      this.hibernationOptions,
      this.metadataOptions,
      this.enclaveOptions,
      this.instanceRequirements,
      this.privateDnsNameOptions,
      this.maintenanceOptions,
      required this.disableApiStop})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        ebsOptimized, r'RequestLaunchTemplateData', 'ebsOptimized');
    BuiltValueNullFieldError.checkNotNull(disableApiTermination,
        r'RequestLaunchTemplateData', 'disableApiTermination');
    BuiltValueNullFieldError.checkNotNull(
        disableApiStop, r'RequestLaunchTemplateData', 'disableApiStop');
  }

  @override
  RequestLaunchTemplateData rebuild(
          void Function(RequestLaunchTemplateDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RequestLaunchTemplateDataBuilder toBuilder() =>
      new RequestLaunchTemplateDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RequestLaunchTemplateData &&
        kernelId == other.kernelId &&
        ebsOptimized == other.ebsOptimized &&
        iamInstanceProfile == other.iamInstanceProfile &&
        blockDeviceMappings == other.blockDeviceMappings &&
        networkInterfaces == other.networkInterfaces &&
        imageId == other.imageId &&
        instanceType == other.instanceType &&
        keyName == other.keyName &&
        monitoring == other.monitoring &&
        placement == other.placement &&
        ramDiskId == other.ramDiskId &&
        disableApiTermination == other.disableApiTermination &&
        instanceInitiatedShutdownBehavior ==
            other.instanceInitiatedShutdownBehavior &&
        userData == other.userData &&
        tagSpecifications == other.tagSpecifications &&
        elasticGpuSpecifications == other.elasticGpuSpecifications &&
        elasticInferenceAccelerators == other.elasticInferenceAccelerators &&
        securityGroupIds == other.securityGroupIds &&
        securityGroups == other.securityGroups &&
        instanceMarketOptions == other.instanceMarketOptions &&
        creditSpecification == other.creditSpecification &&
        cpuOptions == other.cpuOptions &&
        capacityReservationSpecification ==
            other.capacityReservationSpecification &&
        licenseSpecifications == other.licenseSpecifications &&
        hibernationOptions == other.hibernationOptions &&
        metadataOptions == other.metadataOptions &&
        enclaveOptions == other.enclaveOptions &&
        instanceRequirements == other.instanceRequirements &&
        privateDnsNameOptions == other.privateDnsNameOptions &&
        maintenanceOptions == other.maintenanceOptions &&
        disableApiStop == other.disableApiStop;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, kernelId.hashCode);
    _$hash = $jc(_$hash, ebsOptimized.hashCode);
    _$hash = $jc(_$hash, iamInstanceProfile.hashCode);
    _$hash = $jc(_$hash, blockDeviceMappings.hashCode);
    _$hash = $jc(_$hash, networkInterfaces.hashCode);
    _$hash = $jc(_$hash, imageId.hashCode);
    _$hash = $jc(_$hash, instanceType.hashCode);
    _$hash = $jc(_$hash, keyName.hashCode);
    _$hash = $jc(_$hash, monitoring.hashCode);
    _$hash = $jc(_$hash, placement.hashCode);
    _$hash = $jc(_$hash, ramDiskId.hashCode);
    _$hash = $jc(_$hash, disableApiTermination.hashCode);
    _$hash = $jc(_$hash, instanceInitiatedShutdownBehavior.hashCode);
    _$hash = $jc(_$hash, userData.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, elasticGpuSpecifications.hashCode);
    _$hash = $jc(_$hash, elasticInferenceAccelerators.hashCode);
    _$hash = $jc(_$hash, securityGroupIds.hashCode);
    _$hash = $jc(_$hash, securityGroups.hashCode);
    _$hash = $jc(_$hash, instanceMarketOptions.hashCode);
    _$hash = $jc(_$hash, creditSpecification.hashCode);
    _$hash = $jc(_$hash, cpuOptions.hashCode);
    _$hash = $jc(_$hash, capacityReservationSpecification.hashCode);
    _$hash = $jc(_$hash, licenseSpecifications.hashCode);
    _$hash = $jc(_$hash, hibernationOptions.hashCode);
    _$hash = $jc(_$hash, metadataOptions.hashCode);
    _$hash = $jc(_$hash, enclaveOptions.hashCode);
    _$hash = $jc(_$hash, instanceRequirements.hashCode);
    _$hash = $jc(_$hash, privateDnsNameOptions.hashCode);
    _$hash = $jc(_$hash, maintenanceOptions.hashCode);
    _$hash = $jc(_$hash, disableApiStop.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RequestLaunchTemplateDataBuilder
    implements
        Builder<RequestLaunchTemplateData, RequestLaunchTemplateDataBuilder> {
  _$RequestLaunchTemplateData? _$v;

  String? _kernelId;
  String? get kernelId => _$this._kernelId;
  set kernelId(String? kernelId) => _$this._kernelId = kernelId;

  bool? _ebsOptimized;
  bool? get ebsOptimized => _$this._ebsOptimized;
  set ebsOptimized(bool? ebsOptimized) => _$this._ebsOptimized = ebsOptimized;

  _i2.LaunchTemplateIamInstanceProfileSpecificationRequestBuilder?
      _iamInstanceProfile;
  _i2.LaunchTemplateIamInstanceProfileSpecificationRequestBuilder
      get iamInstanceProfile => _$this._iamInstanceProfile ??=
          new _i2.LaunchTemplateIamInstanceProfileSpecificationRequestBuilder();
  set iamInstanceProfile(
          _i2.LaunchTemplateIamInstanceProfileSpecificationRequestBuilder?
              iamInstanceProfile) =>
      _$this._iamInstanceProfile = iamInstanceProfile;

  _i23.ListBuilder<_i3.LaunchTemplateBlockDeviceMappingRequest>?
      _blockDeviceMappings;
  _i23.ListBuilder<_i3.LaunchTemplateBlockDeviceMappingRequest>
      get blockDeviceMappings => _$this._blockDeviceMappings ??=
          new _i23.ListBuilder<_i3.LaunchTemplateBlockDeviceMappingRequest>();
  set blockDeviceMappings(
          _i23.ListBuilder<_i3.LaunchTemplateBlockDeviceMappingRequest>?
              blockDeviceMappings) =>
      _$this._blockDeviceMappings = blockDeviceMappings;

  _i23.ListBuilder<
          _i4.LaunchTemplateInstanceNetworkInterfaceSpecificationRequest>?
      _networkInterfaces;
  _i23.ListBuilder<
          _i4.LaunchTemplateInstanceNetworkInterfaceSpecificationRequest>
      get networkInterfaces =>
          _$this._networkInterfaces ??= new _i23.ListBuilder<
              _i4.LaunchTemplateInstanceNetworkInterfaceSpecificationRequest>();
  set networkInterfaces(
          _i23.ListBuilder<
                  _i4.LaunchTemplateInstanceNetworkInterfaceSpecificationRequest>?
              networkInterfaces) =>
      _$this._networkInterfaces = networkInterfaces;

  String? _imageId;
  String? get imageId => _$this._imageId;
  set imageId(String? imageId) => _$this._imageId = imageId;

  _i5.InstanceType? _instanceType;
  _i5.InstanceType? get instanceType => _$this._instanceType;
  set instanceType(_i5.InstanceType? instanceType) =>
      _$this._instanceType = instanceType;

  String? _keyName;
  String? get keyName => _$this._keyName;
  set keyName(String? keyName) => _$this._keyName = keyName;

  _i6.LaunchTemplatesMonitoringRequestBuilder? _monitoring;
  _i6.LaunchTemplatesMonitoringRequestBuilder get monitoring =>
      _$this._monitoring ??= new _i6.LaunchTemplatesMonitoringRequestBuilder();
  set monitoring(_i6.LaunchTemplatesMonitoringRequestBuilder? monitoring) =>
      _$this._monitoring = monitoring;

  _i7.LaunchTemplatePlacementRequestBuilder? _placement;
  _i7.LaunchTemplatePlacementRequestBuilder get placement =>
      _$this._placement ??= new _i7.LaunchTemplatePlacementRequestBuilder();
  set placement(_i7.LaunchTemplatePlacementRequestBuilder? placement) =>
      _$this._placement = placement;

  String? _ramDiskId;
  String? get ramDiskId => _$this._ramDiskId;
  set ramDiskId(String? ramDiskId) => _$this._ramDiskId = ramDiskId;

  bool? _disableApiTermination;
  bool? get disableApiTermination => _$this._disableApiTermination;
  set disableApiTermination(bool? disableApiTermination) =>
      _$this._disableApiTermination = disableApiTermination;

  _i8.ShutdownBehavior? _instanceInitiatedShutdownBehavior;
  _i8.ShutdownBehavior? get instanceInitiatedShutdownBehavior =>
      _$this._instanceInitiatedShutdownBehavior;
  set instanceInitiatedShutdownBehavior(
          _i8.ShutdownBehavior? instanceInitiatedShutdownBehavior) =>
      _$this._instanceInitiatedShutdownBehavior =
          instanceInitiatedShutdownBehavior;

  String? _userData;
  String? get userData => _$this._userData;
  set userData(String? userData) => _$this._userData = userData;

  _i23.ListBuilder<_i9.LaunchTemplateTagSpecificationRequest>?
      _tagSpecifications;
  _i23.ListBuilder<_i9.LaunchTemplateTagSpecificationRequest>
      get tagSpecifications => _$this._tagSpecifications ??=
          new _i23.ListBuilder<_i9.LaunchTemplateTagSpecificationRequest>();
  set tagSpecifications(
          _i23.ListBuilder<_i9.LaunchTemplateTagSpecificationRequest>?
              tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  _i23.ListBuilder<_i10.ElasticGpuSpecification>? _elasticGpuSpecifications;
  _i23.ListBuilder<_i10.ElasticGpuSpecification> get elasticGpuSpecifications =>
      _$this._elasticGpuSpecifications ??=
          new _i23.ListBuilder<_i10.ElasticGpuSpecification>();
  set elasticGpuSpecifications(
          _i23.ListBuilder<_i10.ElasticGpuSpecification>?
              elasticGpuSpecifications) =>
      _$this._elasticGpuSpecifications = elasticGpuSpecifications;

  _i23.ListBuilder<_i11.LaunchTemplateElasticInferenceAccelerator>?
      _elasticInferenceAccelerators;
  _i23.ListBuilder<_i11.LaunchTemplateElasticInferenceAccelerator>
      get elasticInferenceAccelerators =>
          _$this._elasticInferenceAccelerators ??= new _i23
              .ListBuilder<_i11.LaunchTemplateElasticInferenceAccelerator>();
  set elasticInferenceAccelerators(
          _i23.ListBuilder<_i11.LaunchTemplateElasticInferenceAccelerator>?
              elasticInferenceAccelerators) =>
      _$this._elasticInferenceAccelerators = elasticInferenceAccelerators;

  _i23.ListBuilder<String>? _securityGroupIds;
  _i23.ListBuilder<String> get securityGroupIds =>
      _$this._securityGroupIds ??= new _i23.ListBuilder<String>();
  set securityGroupIds(_i23.ListBuilder<String>? securityGroupIds) =>
      _$this._securityGroupIds = securityGroupIds;

  _i23.ListBuilder<String>? _securityGroups;
  _i23.ListBuilder<String> get securityGroups =>
      _$this._securityGroups ??= new _i23.ListBuilder<String>();
  set securityGroups(_i23.ListBuilder<String>? securityGroups) =>
      _$this._securityGroups = securityGroups;

  _i12.LaunchTemplateInstanceMarketOptionsRequestBuilder?
      _instanceMarketOptions;
  _i12.LaunchTemplateInstanceMarketOptionsRequestBuilder
      get instanceMarketOptions => _$this._instanceMarketOptions ??=
          new _i12.LaunchTemplateInstanceMarketOptionsRequestBuilder();
  set instanceMarketOptions(
          _i12.LaunchTemplateInstanceMarketOptionsRequestBuilder?
              instanceMarketOptions) =>
      _$this._instanceMarketOptions = instanceMarketOptions;

  _i13.CreditSpecificationRequestBuilder? _creditSpecification;
  _i13.CreditSpecificationRequestBuilder get creditSpecification =>
      _$this._creditSpecification ??=
          new _i13.CreditSpecificationRequestBuilder();
  set creditSpecification(
          _i13.CreditSpecificationRequestBuilder? creditSpecification) =>
      _$this._creditSpecification = creditSpecification;

  _i14.LaunchTemplateCpuOptionsRequestBuilder? _cpuOptions;
  _i14.LaunchTemplateCpuOptionsRequestBuilder get cpuOptions =>
      _$this._cpuOptions ??= new _i14.LaunchTemplateCpuOptionsRequestBuilder();
  set cpuOptions(_i14.LaunchTemplateCpuOptionsRequestBuilder? cpuOptions) =>
      _$this._cpuOptions = cpuOptions;

  _i15.LaunchTemplateCapacityReservationSpecificationRequestBuilder?
      _capacityReservationSpecification;
  _i15.LaunchTemplateCapacityReservationSpecificationRequestBuilder
      get capacityReservationSpecification =>
          _$this._capacityReservationSpecification ??= new _i15
              .LaunchTemplateCapacityReservationSpecificationRequestBuilder();
  set capacityReservationSpecification(
          _i15.LaunchTemplateCapacityReservationSpecificationRequestBuilder?
              capacityReservationSpecification) =>
      _$this._capacityReservationSpecification =
          capacityReservationSpecification;

  _i23.ListBuilder<_i16.LaunchTemplateLicenseConfigurationRequest>?
      _licenseSpecifications;
  _i23.ListBuilder<_i16.LaunchTemplateLicenseConfigurationRequest>
      get licenseSpecifications => _$this._licenseSpecifications ??= new _i23
          .ListBuilder<_i16.LaunchTemplateLicenseConfigurationRequest>();
  set licenseSpecifications(
          _i23.ListBuilder<_i16.LaunchTemplateLicenseConfigurationRequest>?
              licenseSpecifications) =>
      _$this._licenseSpecifications = licenseSpecifications;

  _i17.LaunchTemplateHibernationOptionsRequestBuilder? _hibernationOptions;
  _i17.LaunchTemplateHibernationOptionsRequestBuilder get hibernationOptions =>
      _$this._hibernationOptions ??=
          new _i17.LaunchTemplateHibernationOptionsRequestBuilder();
  set hibernationOptions(
          _i17.LaunchTemplateHibernationOptionsRequestBuilder?
              hibernationOptions) =>
      _$this._hibernationOptions = hibernationOptions;

  _i18.LaunchTemplateInstanceMetadataOptionsRequestBuilder? _metadataOptions;
  _i18.LaunchTemplateInstanceMetadataOptionsRequestBuilder
      get metadataOptions => _$this._metadataOptions ??=
          new _i18.LaunchTemplateInstanceMetadataOptionsRequestBuilder();
  set metadataOptions(
          _i18.LaunchTemplateInstanceMetadataOptionsRequestBuilder?
              metadataOptions) =>
      _$this._metadataOptions = metadataOptions;

  _i19.LaunchTemplateEnclaveOptionsRequestBuilder? _enclaveOptions;
  _i19.LaunchTemplateEnclaveOptionsRequestBuilder get enclaveOptions =>
      _$this._enclaveOptions ??=
          new _i19.LaunchTemplateEnclaveOptionsRequestBuilder();
  set enclaveOptions(
          _i19.LaunchTemplateEnclaveOptionsRequestBuilder? enclaveOptions) =>
      _$this._enclaveOptions = enclaveOptions;

  _i20.InstanceRequirementsRequestBuilder? _instanceRequirements;
  _i20.InstanceRequirementsRequestBuilder get instanceRequirements =>
      _$this._instanceRequirements ??=
          new _i20.InstanceRequirementsRequestBuilder();
  set instanceRequirements(
          _i20.InstanceRequirementsRequestBuilder? instanceRequirements) =>
      _$this._instanceRequirements = instanceRequirements;

  _i21.LaunchTemplatePrivateDnsNameOptionsRequestBuilder?
      _privateDnsNameOptions;
  _i21.LaunchTemplatePrivateDnsNameOptionsRequestBuilder
      get privateDnsNameOptions => _$this._privateDnsNameOptions ??=
          new _i21.LaunchTemplatePrivateDnsNameOptionsRequestBuilder();
  set privateDnsNameOptions(
          _i21.LaunchTemplatePrivateDnsNameOptionsRequestBuilder?
              privateDnsNameOptions) =>
      _$this._privateDnsNameOptions = privateDnsNameOptions;

  _i22.LaunchTemplateInstanceMaintenanceOptionsRequestBuilder?
      _maintenanceOptions;
  _i22.LaunchTemplateInstanceMaintenanceOptionsRequestBuilder
      get maintenanceOptions => _$this._maintenanceOptions ??=
          new _i22.LaunchTemplateInstanceMaintenanceOptionsRequestBuilder();
  set maintenanceOptions(
          _i22.LaunchTemplateInstanceMaintenanceOptionsRequestBuilder?
              maintenanceOptions) =>
      _$this._maintenanceOptions = maintenanceOptions;

  bool? _disableApiStop;
  bool? get disableApiStop => _$this._disableApiStop;
  set disableApiStop(bool? disableApiStop) =>
      _$this._disableApiStop = disableApiStop;

  RequestLaunchTemplateDataBuilder() {
    RequestLaunchTemplateData._init(this);
  }

  RequestLaunchTemplateDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kernelId = $v.kernelId;
      _ebsOptimized = $v.ebsOptimized;
      _iamInstanceProfile = $v.iamInstanceProfile?.toBuilder();
      _blockDeviceMappings = $v.blockDeviceMappings?.toBuilder();
      _networkInterfaces = $v.networkInterfaces?.toBuilder();
      _imageId = $v.imageId;
      _instanceType = $v.instanceType;
      _keyName = $v.keyName;
      _monitoring = $v.monitoring?.toBuilder();
      _placement = $v.placement?.toBuilder();
      _ramDiskId = $v.ramDiskId;
      _disableApiTermination = $v.disableApiTermination;
      _instanceInitiatedShutdownBehavior = $v.instanceInitiatedShutdownBehavior;
      _userData = $v.userData;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _elasticGpuSpecifications = $v.elasticGpuSpecifications?.toBuilder();
      _elasticInferenceAccelerators =
          $v.elasticInferenceAccelerators?.toBuilder();
      _securityGroupIds = $v.securityGroupIds?.toBuilder();
      _securityGroups = $v.securityGroups?.toBuilder();
      _instanceMarketOptions = $v.instanceMarketOptions?.toBuilder();
      _creditSpecification = $v.creditSpecification?.toBuilder();
      _cpuOptions = $v.cpuOptions?.toBuilder();
      _capacityReservationSpecification =
          $v.capacityReservationSpecification?.toBuilder();
      _licenseSpecifications = $v.licenseSpecifications?.toBuilder();
      _hibernationOptions = $v.hibernationOptions?.toBuilder();
      _metadataOptions = $v.metadataOptions?.toBuilder();
      _enclaveOptions = $v.enclaveOptions?.toBuilder();
      _instanceRequirements = $v.instanceRequirements?.toBuilder();
      _privateDnsNameOptions = $v.privateDnsNameOptions?.toBuilder();
      _maintenanceOptions = $v.maintenanceOptions?.toBuilder();
      _disableApiStop = $v.disableApiStop;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RequestLaunchTemplateData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RequestLaunchTemplateData;
  }

  @override
  void update(void Function(RequestLaunchTemplateDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RequestLaunchTemplateData build() => _build();

  _$RequestLaunchTemplateData _build() {
    _$RequestLaunchTemplateData _$result;
    try {
      _$result = _$v ??
          new _$RequestLaunchTemplateData._(
              kernelId: kernelId,
              ebsOptimized: BuiltValueNullFieldError.checkNotNull(
                  ebsOptimized, r'RequestLaunchTemplateData', 'ebsOptimized'),
              iamInstanceProfile: _iamInstanceProfile?.build(),
              blockDeviceMappings: _blockDeviceMappings?.build(),
              networkInterfaces: _networkInterfaces?.build(),
              imageId: imageId,
              instanceType: instanceType,
              keyName: keyName,
              monitoring: _monitoring?.build(),
              placement: _placement?.build(),
              ramDiskId: ramDiskId,
              disableApiTermination: BuiltValueNullFieldError.checkNotNull(
                  disableApiTermination,
                  r'RequestLaunchTemplateData',
                  'disableApiTermination'),
              instanceInitiatedShutdownBehavior:
                  instanceInitiatedShutdownBehavior,
              userData: userData,
              tagSpecifications: _tagSpecifications?.build(),
              elasticGpuSpecifications: _elasticGpuSpecifications?.build(),
              elasticInferenceAccelerators:
                  _elasticInferenceAccelerators?.build(),
              securityGroupIds: _securityGroupIds?.build(),
              securityGroups: _securityGroups?.build(),
              instanceMarketOptions: _instanceMarketOptions?.build(),
              creditSpecification: _creditSpecification?.build(),
              cpuOptions: _cpuOptions?.build(),
              capacityReservationSpecification:
                  _capacityReservationSpecification?.build(),
              licenseSpecifications: _licenseSpecifications?.build(),
              hibernationOptions: _hibernationOptions?.build(),
              metadataOptions: _metadataOptions?.build(),
              enclaveOptions: _enclaveOptions?.build(),
              instanceRequirements: _instanceRequirements?.build(),
              privateDnsNameOptions: _privateDnsNameOptions?.build(),
              maintenanceOptions: _maintenanceOptions?.build(),
              disableApiStop: BuiltValueNullFieldError.checkNotNull(
                  disableApiStop,
                  r'RequestLaunchTemplateData',
                  'disableApiStop'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'iamInstanceProfile';
        _iamInstanceProfile?.build();
        _$failedField = 'blockDeviceMappings';
        _blockDeviceMappings?.build();
        _$failedField = 'networkInterfaces';
        _networkInterfaces?.build();

        _$failedField = 'monitoring';
        _monitoring?.build();
        _$failedField = 'placement';
        _placement?.build();

        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
        _$failedField = 'elasticGpuSpecifications';
        _elasticGpuSpecifications?.build();
        _$failedField = 'elasticInferenceAccelerators';
        _elasticInferenceAccelerators?.build();
        _$failedField = 'securityGroupIds';
        _securityGroupIds?.build();
        _$failedField = 'securityGroups';
        _securityGroups?.build();
        _$failedField = 'instanceMarketOptions';
        _instanceMarketOptions?.build();
        _$failedField = 'creditSpecification';
        _creditSpecification?.build();
        _$failedField = 'cpuOptions';
        _cpuOptions?.build();
        _$failedField = 'capacityReservationSpecification';
        _capacityReservationSpecification?.build();
        _$failedField = 'licenseSpecifications';
        _licenseSpecifications?.build();
        _$failedField = 'hibernationOptions';
        _hibernationOptions?.build();
        _$failedField = 'metadataOptions';
        _metadataOptions?.build();
        _$failedField = 'enclaveOptions';
        _enclaveOptions?.build();
        _$failedField = 'instanceRequirements';
        _instanceRequirements?.build();
        _$failedField = 'privateDnsNameOptions';
        _privateDnsNameOptions?.build();
        _$failedField = 'maintenanceOptions';
        _maintenanceOptions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RequestLaunchTemplateData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
