// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.create_fleet_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateFleetRequest extends CreateFleetRequest {
  @override
  final bool dryRun;
  @override
  final String? clientToken;
  @override
  final _i3.SpotOptionsRequest? spotOptions;
  @override
  final _i4.OnDemandOptionsRequest? onDemandOptions;
  @override
  final _i5.FleetExcessCapacityTerminationPolicy?
      excessCapacityTerminationPolicy;
  @override
  final _i10.BuiltList<_i6.FleetLaunchTemplateConfigRequest>
      launchTemplateConfigs;
  @override
  final _i7.TargetCapacitySpecificationRequest targetCapacitySpecification;
  @override
  final bool terminateInstancesWithExpiration;
  @override
  final _i8.FleetType? type;
  @override
  final DateTime? validFrom;
  @override
  final DateTime? validUntil;
  @override
  final bool replaceUnhealthyInstances;
  @override
  final _i10.BuiltList<_i9.TagSpecification>? tagSpecifications;
  @override
  final String? context;

  factory _$CreateFleetRequest(
          [void Function(CreateFleetRequestBuilder)? updates]) =>
      (new CreateFleetRequestBuilder()..update(updates))._build();

  _$CreateFleetRequest._(
      {required this.dryRun,
      this.clientToken,
      this.spotOptions,
      this.onDemandOptions,
      this.excessCapacityTerminationPolicy,
      required this.launchTemplateConfigs,
      required this.targetCapacitySpecification,
      required this.terminateInstancesWithExpiration,
      this.type,
      this.validFrom,
      this.validUntil,
      required this.replaceUnhealthyInstances,
      this.tagSpecifications,
      this.context})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateFleetRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        launchTemplateConfigs, r'CreateFleetRequest', 'launchTemplateConfigs');
    BuiltValueNullFieldError.checkNotNull(targetCapacitySpecification,
        r'CreateFleetRequest', 'targetCapacitySpecification');
    BuiltValueNullFieldError.checkNotNull(terminateInstancesWithExpiration,
        r'CreateFleetRequest', 'terminateInstancesWithExpiration');
    BuiltValueNullFieldError.checkNotNull(replaceUnhealthyInstances,
        r'CreateFleetRequest', 'replaceUnhealthyInstances');
  }

  @override
  CreateFleetRequest rebuild(
          void Function(CreateFleetRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateFleetRequestBuilder toBuilder() =>
      new CreateFleetRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateFleetRequest &&
        dryRun == other.dryRun &&
        clientToken == other.clientToken &&
        spotOptions == other.spotOptions &&
        onDemandOptions == other.onDemandOptions &&
        excessCapacityTerminationPolicy ==
            other.excessCapacityTerminationPolicy &&
        launchTemplateConfigs == other.launchTemplateConfigs &&
        targetCapacitySpecification == other.targetCapacitySpecification &&
        terminateInstancesWithExpiration ==
            other.terminateInstancesWithExpiration &&
        type == other.type &&
        validFrom == other.validFrom &&
        validUntil == other.validUntil &&
        replaceUnhealthyInstances == other.replaceUnhealthyInstances &&
        tagSpecifications == other.tagSpecifications &&
        context == other.context;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, spotOptions.hashCode);
    _$hash = $jc(_$hash, onDemandOptions.hashCode);
    _$hash = $jc(_$hash, excessCapacityTerminationPolicy.hashCode);
    _$hash = $jc(_$hash, launchTemplateConfigs.hashCode);
    _$hash = $jc(_$hash, targetCapacitySpecification.hashCode);
    _$hash = $jc(_$hash, terminateInstancesWithExpiration.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, validFrom.hashCode);
    _$hash = $jc(_$hash, validUntil.hashCode);
    _$hash = $jc(_$hash, replaceUnhealthyInstances.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, context.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateFleetRequestBuilder
    implements Builder<CreateFleetRequest, CreateFleetRequestBuilder> {
  _$CreateFleetRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  _i3.SpotOptionsRequestBuilder? _spotOptions;
  _i3.SpotOptionsRequestBuilder get spotOptions =>
      _$this._spotOptions ??= new _i3.SpotOptionsRequestBuilder();
  set spotOptions(_i3.SpotOptionsRequestBuilder? spotOptions) =>
      _$this._spotOptions = spotOptions;

  _i4.OnDemandOptionsRequestBuilder? _onDemandOptions;
  _i4.OnDemandOptionsRequestBuilder get onDemandOptions =>
      _$this._onDemandOptions ??= new _i4.OnDemandOptionsRequestBuilder();
  set onDemandOptions(_i4.OnDemandOptionsRequestBuilder? onDemandOptions) =>
      _$this._onDemandOptions = onDemandOptions;

  _i5.FleetExcessCapacityTerminationPolicy? _excessCapacityTerminationPolicy;
  _i5.FleetExcessCapacityTerminationPolicy?
      get excessCapacityTerminationPolicy =>
          _$this._excessCapacityTerminationPolicy;
  set excessCapacityTerminationPolicy(
          _i5.FleetExcessCapacityTerminationPolicy?
              excessCapacityTerminationPolicy) =>
      _$this._excessCapacityTerminationPolicy = excessCapacityTerminationPolicy;

  _i10.ListBuilder<_i6.FleetLaunchTemplateConfigRequest>?
      _launchTemplateConfigs;
  _i10.ListBuilder<_i6.FleetLaunchTemplateConfigRequest>
      get launchTemplateConfigs => _$this._launchTemplateConfigs ??=
          new _i10.ListBuilder<_i6.FleetLaunchTemplateConfigRequest>();
  set launchTemplateConfigs(
          _i10.ListBuilder<_i6.FleetLaunchTemplateConfigRequest>?
              launchTemplateConfigs) =>
      _$this._launchTemplateConfigs = launchTemplateConfigs;

  _i7.TargetCapacitySpecificationRequestBuilder? _targetCapacitySpecification;
  _i7.TargetCapacitySpecificationRequestBuilder
      get targetCapacitySpecification => _$this._targetCapacitySpecification ??=
          new _i7.TargetCapacitySpecificationRequestBuilder();
  set targetCapacitySpecification(
          _i7.TargetCapacitySpecificationRequestBuilder?
              targetCapacitySpecification) =>
      _$this._targetCapacitySpecification = targetCapacitySpecification;

  bool? _terminateInstancesWithExpiration;
  bool? get terminateInstancesWithExpiration =>
      _$this._terminateInstancesWithExpiration;
  set terminateInstancesWithExpiration(
          bool? terminateInstancesWithExpiration) =>
      _$this._terminateInstancesWithExpiration =
          terminateInstancesWithExpiration;

  _i8.FleetType? _type;
  _i8.FleetType? get type => _$this._type;
  set type(_i8.FleetType? type) => _$this._type = type;

  DateTime? _validFrom;
  DateTime? get validFrom => _$this._validFrom;
  set validFrom(DateTime? validFrom) => _$this._validFrom = validFrom;

  DateTime? _validUntil;
  DateTime? get validUntil => _$this._validUntil;
  set validUntil(DateTime? validUntil) => _$this._validUntil = validUntil;

  bool? _replaceUnhealthyInstances;
  bool? get replaceUnhealthyInstances => _$this._replaceUnhealthyInstances;
  set replaceUnhealthyInstances(bool? replaceUnhealthyInstances) =>
      _$this._replaceUnhealthyInstances = replaceUnhealthyInstances;

  _i10.ListBuilder<_i9.TagSpecification>? _tagSpecifications;
  _i10.ListBuilder<_i9.TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??=
          new _i10.ListBuilder<_i9.TagSpecification>();
  set tagSpecifications(
          _i10.ListBuilder<_i9.TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  String? _context;
  String? get context => _$this._context;
  set context(String? context) => _$this._context = context;

  CreateFleetRequestBuilder() {
    CreateFleetRequest._init(this);
  }

  CreateFleetRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _clientToken = $v.clientToken;
      _spotOptions = $v.spotOptions?.toBuilder();
      _onDemandOptions = $v.onDemandOptions?.toBuilder();
      _excessCapacityTerminationPolicy = $v.excessCapacityTerminationPolicy;
      _launchTemplateConfigs = $v.launchTemplateConfigs.toBuilder();
      _targetCapacitySpecification = $v.targetCapacitySpecification.toBuilder();
      _terminateInstancesWithExpiration = $v.terminateInstancesWithExpiration;
      _type = $v.type;
      _validFrom = $v.validFrom;
      _validUntil = $v.validUntil;
      _replaceUnhealthyInstances = $v.replaceUnhealthyInstances;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _context = $v.context;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateFleetRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateFleetRequest;
  }

  @override
  void update(void Function(CreateFleetRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateFleetRequest build() => _build();

  _$CreateFleetRequest _build() {
    _$CreateFleetRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateFleetRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreateFleetRequest', 'dryRun'),
              clientToken: clientToken,
              spotOptions: _spotOptions?.build(),
              onDemandOptions: _onDemandOptions?.build(),
              excessCapacityTerminationPolicy: excessCapacityTerminationPolicy,
              launchTemplateConfigs: launchTemplateConfigs.build(),
              targetCapacitySpecification: targetCapacitySpecification.build(),
              terminateInstancesWithExpiration:
                  BuiltValueNullFieldError.checkNotNull(
                      terminateInstancesWithExpiration,
                      r'CreateFleetRequest',
                      'terminateInstancesWithExpiration'),
              type: type,
              validFrom: validFrom,
              validUntil: validUntil,
              replaceUnhealthyInstances: BuiltValueNullFieldError.checkNotNull(
                  replaceUnhealthyInstances,
                  r'CreateFleetRequest',
                  'replaceUnhealthyInstances'),
              tagSpecifications: _tagSpecifications?.build(),
              context: context);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'spotOptions';
        _spotOptions?.build();
        _$failedField = 'onDemandOptions';
        _onDemandOptions?.build();

        _$failedField = 'launchTemplateConfigs';
        launchTemplateConfigs.build();
        _$failedField = 'targetCapacitySpecification';
        targetCapacitySpecification.build();

        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateFleetRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
