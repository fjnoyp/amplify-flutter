// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.spot_fleet_launch_specification;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SpotFleetLaunchSpecification extends SpotFleetLaunchSpecification {
  @override
  final _i11.BuiltList<_i2.GroupIdentifier>? securityGroups;
  @override
  final String? addressingType;
  @override
  final _i11.BuiltList<_i3.BlockDeviceMapping>? blockDeviceMappings;
  @override
  final bool ebsOptimized;
  @override
  final _i4.IamInstanceProfileSpecification? iamInstanceProfile;
  @override
  final String? imageId;
  @override
  final _i5.InstanceType? instanceType;
  @override
  final String? kernelId;
  @override
  final String? keyName;
  @override
  final _i6.SpotFleetMonitoring? monitoring;
  @override
  final _i11.BuiltList<_i7.InstanceNetworkInterfaceSpecification>?
      networkInterfaces;
  @override
  final _i8.SpotPlacement? placement;
  @override
  final String? ramdiskId;
  @override
  final String? spotPrice;
  @override
  final String? subnetId;
  @override
  final String? userData;
  @override
  final double weightedCapacity;
  @override
  final _i11.BuiltList<_i9.SpotFleetTagSpecification>? tagSpecifications;
  @override
  final _i10.InstanceRequirements? instanceRequirements;

  factory _$SpotFleetLaunchSpecification(
          [void Function(SpotFleetLaunchSpecificationBuilder)? updates]) =>
      (new SpotFleetLaunchSpecificationBuilder()..update(updates))._build();

  _$SpotFleetLaunchSpecification._(
      {this.securityGroups,
      this.addressingType,
      this.blockDeviceMappings,
      required this.ebsOptimized,
      this.iamInstanceProfile,
      this.imageId,
      this.instanceType,
      this.kernelId,
      this.keyName,
      this.monitoring,
      this.networkInterfaces,
      this.placement,
      this.ramdiskId,
      this.spotPrice,
      this.subnetId,
      this.userData,
      required this.weightedCapacity,
      this.tagSpecifications,
      this.instanceRequirements})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        ebsOptimized, r'SpotFleetLaunchSpecification', 'ebsOptimized');
    BuiltValueNullFieldError.checkNotNull(
        weightedCapacity, r'SpotFleetLaunchSpecification', 'weightedCapacity');
  }

  @override
  SpotFleetLaunchSpecification rebuild(
          void Function(SpotFleetLaunchSpecificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SpotFleetLaunchSpecificationBuilder toBuilder() =>
      new SpotFleetLaunchSpecificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SpotFleetLaunchSpecification &&
        securityGroups == other.securityGroups &&
        addressingType == other.addressingType &&
        blockDeviceMappings == other.blockDeviceMappings &&
        ebsOptimized == other.ebsOptimized &&
        iamInstanceProfile == other.iamInstanceProfile &&
        imageId == other.imageId &&
        instanceType == other.instanceType &&
        kernelId == other.kernelId &&
        keyName == other.keyName &&
        monitoring == other.monitoring &&
        networkInterfaces == other.networkInterfaces &&
        placement == other.placement &&
        ramdiskId == other.ramdiskId &&
        spotPrice == other.spotPrice &&
        subnetId == other.subnetId &&
        userData == other.userData &&
        weightedCapacity == other.weightedCapacity &&
        tagSpecifications == other.tagSpecifications &&
        instanceRequirements == other.instanceRequirements;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, securityGroups.hashCode);
    _$hash = $jc(_$hash, addressingType.hashCode);
    _$hash = $jc(_$hash, blockDeviceMappings.hashCode);
    _$hash = $jc(_$hash, ebsOptimized.hashCode);
    _$hash = $jc(_$hash, iamInstanceProfile.hashCode);
    _$hash = $jc(_$hash, imageId.hashCode);
    _$hash = $jc(_$hash, instanceType.hashCode);
    _$hash = $jc(_$hash, kernelId.hashCode);
    _$hash = $jc(_$hash, keyName.hashCode);
    _$hash = $jc(_$hash, monitoring.hashCode);
    _$hash = $jc(_$hash, networkInterfaces.hashCode);
    _$hash = $jc(_$hash, placement.hashCode);
    _$hash = $jc(_$hash, ramdiskId.hashCode);
    _$hash = $jc(_$hash, spotPrice.hashCode);
    _$hash = $jc(_$hash, subnetId.hashCode);
    _$hash = $jc(_$hash, userData.hashCode);
    _$hash = $jc(_$hash, weightedCapacity.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, instanceRequirements.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SpotFleetLaunchSpecificationBuilder
    implements
        Builder<SpotFleetLaunchSpecification,
            SpotFleetLaunchSpecificationBuilder> {
  _$SpotFleetLaunchSpecification? _$v;

  _i11.ListBuilder<_i2.GroupIdentifier>? _securityGroups;
  _i11.ListBuilder<_i2.GroupIdentifier> get securityGroups =>
      _$this._securityGroups ??= new _i11.ListBuilder<_i2.GroupIdentifier>();
  set securityGroups(_i11.ListBuilder<_i2.GroupIdentifier>? securityGroups) =>
      _$this._securityGroups = securityGroups;

  String? _addressingType;
  String? get addressingType => _$this._addressingType;
  set addressingType(String? addressingType) =>
      _$this._addressingType = addressingType;

  _i11.ListBuilder<_i3.BlockDeviceMapping>? _blockDeviceMappings;
  _i11.ListBuilder<_i3.BlockDeviceMapping> get blockDeviceMappings =>
      _$this._blockDeviceMappings ??=
          new _i11.ListBuilder<_i3.BlockDeviceMapping>();
  set blockDeviceMappings(
          _i11.ListBuilder<_i3.BlockDeviceMapping>? blockDeviceMappings) =>
      _$this._blockDeviceMappings = blockDeviceMappings;

  bool? _ebsOptimized;
  bool? get ebsOptimized => _$this._ebsOptimized;
  set ebsOptimized(bool? ebsOptimized) => _$this._ebsOptimized = ebsOptimized;

  _i4.IamInstanceProfileSpecificationBuilder? _iamInstanceProfile;
  _i4.IamInstanceProfileSpecificationBuilder get iamInstanceProfile =>
      _$this._iamInstanceProfile ??=
          new _i4.IamInstanceProfileSpecificationBuilder();
  set iamInstanceProfile(
          _i4.IamInstanceProfileSpecificationBuilder? iamInstanceProfile) =>
      _$this._iamInstanceProfile = iamInstanceProfile;

  String? _imageId;
  String? get imageId => _$this._imageId;
  set imageId(String? imageId) => _$this._imageId = imageId;

  _i5.InstanceType? _instanceType;
  _i5.InstanceType? get instanceType => _$this._instanceType;
  set instanceType(_i5.InstanceType? instanceType) =>
      _$this._instanceType = instanceType;

  String? _kernelId;
  String? get kernelId => _$this._kernelId;
  set kernelId(String? kernelId) => _$this._kernelId = kernelId;

  String? _keyName;
  String? get keyName => _$this._keyName;
  set keyName(String? keyName) => _$this._keyName = keyName;

  _i6.SpotFleetMonitoringBuilder? _monitoring;
  _i6.SpotFleetMonitoringBuilder get monitoring =>
      _$this._monitoring ??= new _i6.SpotFleetMonitoringBuilder();
  set monitoring(_i6.SpotFleetMonitoringBuilder? monitoring) =>
      _$this._monitoring = monitoring;

  _i11.ListBuilder<_i7.InstanceNetworkInterfaceSpecification>?
      _networkInterfaces;
  _i11.ListBuilder<_i7.InstanceNetworkInterfaceSpecification>
      get networkInterfaces => _$this._networkInterfaces ??=
          new _i11.ListBuilder<_i7.InstanceNetworkInterfaceSpecification>();
  set networkInterfaces(
          _i11.ListBuilder<_i7.InstanceNetworkInterfaceSpecification>?
              networkInterfaces) =>
      _$this._networkInterfaces = networkInterfaces;

  _i8.SpotPlacementBuilder? _placement;
  _i8.SpotPlacementBuilder get placement =>
      _$this._placement ??= new _i8.SpotPlacementBuilder();
  set placement(_i8.SpotPlacementBuilder? placement) =>
      _$this._placement = placement;

  String? _ramdiskId;
  String? get ramdiskId => _$this._ramdiskId;
  set ramdiskId(String? ramdiskId) => _$this._ramdiskId = ramdiskId;

  String? _spotPrice;
  String? get spotPrice => _$this._spotPrice;
  set spotPrice(String? spotPrice) => _$this._spotPrice = spotPrice;

  String? _subnetId;
  String? get subnetId => _$this._subnetId;
  set subnetId(String? subnetId) => _$this._subnetId = subnetId;

  String? _userData;
  String? get userData => _$this._userData;
  set userData(String? userData) => _$this._userData = userData;

  double? _weightedCapacity;
  double? get weightedCapacity => _$this._weightedCapacity;
  set weightedCapacity(double? weightedCapacity) =>
      _$this._weightedCapacity = weightedCapacity;

  _i11.ListBuilder<_i9.SpotFleetTagSpecification>? _tagSpecifications;
  _i11.ListBuilder<_i9.SpotFleetTagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??=
          new _i11.ListBuilder<_i9.SpotFleetTagSpecification>();
  set tagSpecifications(
          _i11.ListBuilder<_i9.SpotFleetTagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  _i10.InstanceRequirementsBuilder? _instanceRequirements;
  _i10.InstanceRequirementsBuilder get instanceRequirements =>
      _$this._instanceRequirements ??= new _i10.InstanceRequirementsBuilder();
  set instanceRequirements(
          _i10.InstanceRequirementsBuilder? instanceRequirements) =>
      _$this._instanceRequirements = instanceRequirements;

  SpotFleetLaunchSpecificationBuilder() {
    SpotFleetLaunchSpecification._init(this);
  }

  SpotFleetLaunchSpecificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _securityGroups = $v.securityGroups?.toBuilder();
      _addressingType = $v.addressingType;
      _blockDeviceMappings = $v.blockDeviceMappings?.toBuilder();
      _ebsOptimized = $v.ebsOptimized;
      _iamInstanceProfile = $v.iamInstanceProfile?.toBuilder();
      _imageId = $v.imageId;
      _instanceType = $v.instanceType;
      _kernelId = $v.kernelId;
      _keyName = $v.keyName;
      _monitoring = $v.monitoring?.toBuilder();
      _networkInterfaces = $v.networkInterfaces?.toBuilder();
      _placement = $v.placement?.toBuilder();
      _ramdiskId = $v.ramdiskId;
      _spotPrice = $v.spotPrice;
      _subnetId = $v.subnetId;
      _userData = $v.userData;
      _weightedCapacity = $v.weightedCapacity;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _instanceRequirements = $v.instanceRequirements?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SpotFleetLaunchSpecification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SpotFleetLaunchSpecification;
  }

  @override
  void update(void Function(SpotFleetLaunchSpecificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SpotFleetLaunchSpecification build() => _build();

  _$SpotFleetLaunchSpecification _build() {
    _$SpotFleetLaunchSpecification _$result;
    try {
      _$result = _$v ??
          new _$SpotFleetLaunchSpecification._(
              securityGroups: _securityGroups?.build(),
              addressingType: addressingType,
              blockDeviceMappings: _blockDeviceMappings?.build(),
              ebsOptimized: BuiltValueNullFieldError.checkNotNull(ebsOptimized,
                  r'SpotFleetLaunchSpecification', 'ebsOptimized'),
              iamInstanceProfile: _iamInstanceProfile?.build(),
              imageId: imageId,
              instanceType: instanceType,
              kernelId: kernelId,
              keyName: keyName,
              monitoring: _monitoring?.build(),
              networkInterfaces: _networkInterfaces?.build(),
              placement: _placement?.build(),
              ramdiskId: ramdiskId,
              spotPrice: spotPrice,
              subnetId: subnetId,
              userData: userData,
              weightedCapacity: BuiltValueNullFieldError.checkNotNull(
                  weightedCapacity,
                  r'SpotFleetLaunchSpecification',
                  'weightedCapacity'),
              tagSpecifications: _tagSpecifications?.build(),
              instanceRequirements: _instanceRequirements?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'securityGroups';
        _securityGroups?.build();

        _$failedField = 'blockDeviceMappings';
        _blockDeviceMappings?.build();

        _$failedField = 'iamInstanceProfile';
        _iamInstanceProfile?.build();

        _$failedField = 'monitoring';
        _monitoring?.build();
        _$failedField = 'networkInterfaces';
        _networkInterfaces?.build();
        _$failedField = 'placement';
        _placement?.build();

        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
        _$failedField = 'instanceRequirements';
        _instanceRequirements?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SpotFleetLaunchSpecification', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
