// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.import_instance_launch_specification;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImportInstanceLaunchSpecification
    extends ImportInstanceLaunchSpecification {
  @override
  final String? additionalInfo;
  @override
  final _i2.ArchitectureValues? architecture;
  @override
  final _i7.BuiltList<String>? groupIds;
  @override
  final _i7.BuiltList<String>? groupNames;
  @override
  final _i3.ShutdownBehavior? instanceInitiatedShutdownBehavior;
  @override
  final _i4.InstanceType? instanceType;
  @override
  final bool monitoring;
  @override
  final _i5.Placement? placement;
  @override
  final String? privateIpAddress;
  @override
  final String? subnetId;
  @override
  final _i6.UserData? userData;

  factory _$ImportInstanceLaunchSpecification(
          [void Function(ImportInstanceLaunchSpecificationBuilder)? updates]) =>
      (new ImportInstanceLaunchSpecificationBuilder()..update(updates))
          ._build();

  _$ImportInstanceLaunchSpecification._(
      {this.additionalInfo,
      this.architecture,
      this.groupIds,
      this.groupNames,
      this.instanceInitiatedShutdownBehavior,
      this.instanceType,
      required this.monitoring,
      this.placement,
      this.privateIpAddress,
      this.subnetId,
      this.userData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        monitoring, r'ImportInstanceLaunchSpecification', 'monitoring');
  }

  @override
  ImportInstanceLaunchSpecification rebuild(
          void Function(ImportInstanceLaunchSpecificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImportInstanceLaunchSpecificationBuilder toBuilder() =>
      new ImportInstanceLaunchSpecificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImportInstanceLaunchSpecification &&
        additionalInfo == other.additionalInfo &&
        architecture == other.architecture &&
        groupIds == other.groupIds &&
        groupNames == other.groupNames &&
        instanceInitiatedShutdownBehavior ==
            other.instanceInitiatedShutdownBehavior &&
        instanceType == other.instanceType &&
        monitoring == other.monitoring &&
        placement == other.placement &&
        privateIpAddress == other.privateIpAddress &&
        subnetId == other.subnetId &&
        userData == other.userData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, additionalInfo.hashCode);
    _$hash = $jc(_$hash, architecture.hashCode);
    _$hash = $jc(_$hash, groupIds.hashCode);
    _$hash = $jc(_$hash, groupNames.hashCode);
    _$hash = $jc(_$hash, instanceInitiatedShutdownBehavior.hashCode);
    _$hash = $jc(_$hash, instanceType.hashCode);
    _$hash = $jc(_$hash, monitoring.hashCode);
    _$hash = $jc(_$hash, placement.hashCode);
    _$hash = $jc(_$hash, privateIpAddress.hashCode);
    _$hash = $jc(_$hash, subnetId.hashCode);
    _$hash = $jc(_$hash, userData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ImportInstanceLaunchSpecificationBuilder
    implements
        Builder<ImportInstanceLaunchSpecification,
            ImportInstanceLaunchSpecificationBuilder> {
  _$ImportInstanceLaunchSpecification? _$v;

  String? _additionalInfo;
  String? get additionalInfo => _$this._additionalInfo;
  set additionalInfo(String? additionalInfo) =>
      _$this._additionalInfo = additionalInfo;

  _i2.ArchitectureValues? _architecture;
  _i2.ArchitectureValues? get architecture => _$this._architecture;
  set architecture(_i2.ArchitectureValues? architecture) =>
      _$this._architecture = architecture;

  _i7.ListBuilder<String>? _groupIds;
  _i7.ListBuilder<String> get groupIds =>
      _$this._groupIds ??= new _i7.ListBuilder<String>();
  set groupIds(_i7.ListBuilder<String>? groupIds) =>
      _$this._groupIds = groupIds;

  _i7.ListBuilder<String>? _groupNames;
  _i7.ListBuilder<String> get groupNames =>
      _$this._groupNames ??= new _i7.ListBuilder<String>();
  set groupNames(_i7.ListBuilder<String>? groupNames) =>
      _$this._groupNames = groupNames;

  _i3.ShutdownBehavior? _instanceInitiatedShutdownBehavior;
  _i3.ShutdownBehavior? get instanceInitiatedShutdownBehavior =>
      _$this._instanceInitiatedShutdownBehavior;
  set instanceInitiatedShutdownBehavior(
          _i3.ShutdownBehavior? instanceInitiatedShutdownBehavior) =>
      _$this._instanceInitiatedShutdownBehavior =
          instanceInitiatedShutdownBehavior;

  _i4.InstanceType? _instanceType;
  _i4.InstanceType? get instanceType => _$this._instanceType;
  set instanceType(_i4.InstanceType? instanceType) =>
      _$this._instanceType = instanceType;

  bool? _monitoring;
  bool? get monitoring => _$this._monitoring;
  set monitoring(bool? monitoring) => _$this._monitoring = monitoring;

  _i5.PlacementBuilder? _placement;
  _i5.PlacementBuilder get placement =>
      _$this._placement ??= new _i5.PlacementBuilder();
  set placement(_i5.PlacementBuilder? placement) =>
      _$this._placement = placement;

  String? _privateIpAddress;
  String? get privateIpAddress => _$this._privateIpAddress;
  set privateIpAddress(String? privateIpAddress) =>
      _$this._privateIpAddress = privateIpAddress;

  String? _subnetId;
  String? get subnetId => _$this._subnetId;
  set subnetId(String? subnetId) => _$this._subnetId = subnetId;

  _i6.UserDataBuilder? _userData;
  _i6.UserDataBuilder get userData =>
      _$this._userData ??= new _i6.UserDataBuilder();
  set userData(_i6.UserDataBuilder? userData) => _$this._userData = userData;

  ImportInstanceLaunchSpecificationBuilder() {
    ImportInstanceLaunchSpecification._init(this);
  }

  ImportInstanceLaunchSpecificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _additionalInfo = $v.additionalInfo;
      _architecture = $v.architecture;
      _groupIds = $v.groupIds?.toBuilder();
      _groupNames = $v.groupNames?.toBuilder();
      _instanceInitiatedShutdownBehavior = $v.instanceInitiatedShutdownBehavior;
      _instanceType = $v.instanceType;
      _monitoring = $v.monitoring;
      _placement = $v.placement?.toBuilder();
      _privateIpAddress = $v.privateIpAddress;
      _subnetId = $v.subnetId;
      _userData = $v.userData?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImportInstanceLaunchSpecification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImportInstanceLaunchSpecification;
  }

  @override
  void update(
      void Function(ImportInstanceLaunchSpecificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImportInstanceLaunchSpecification build() => _build();

  _$ImportInstanceLaunchSpecification _build() {
    _$ImportInstanceLaunchSpecification _$result;
    try {
      _$result = _$v ??
          new _$ImportInstanceLaunchSpecification._(
              additionalInfo: additionalInfo,
              architecture: architecture,
              groupIds: _groupIds?.build(),
              groupNames: _groupNames?.build(),
              instanceInitiatedShutdownBehavior:
                  instanceInitiatedShutdownBehavior,
              instanceType: instanceType,
              monitoring: BuiltValueNullFieldError.checkNotNull(monitoring,
                  r'ImportInstanceLaunchSpecification', 'monitoring'),
              placement: _placement?.build(),
              privateIpAddress: privateIpAddress,
              subnetId: subnetId,
              userData: _userData?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'groupIds';
        _groupIds?.build();
        _$failedField = 'groupNames';
        _groupNames?.build();

        _$failedField = 'placement';
        _placement?.build();

        _$failedField = 'userData';
        _userData?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ImportInstanceLaunchSpecification', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
