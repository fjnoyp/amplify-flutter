// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.modify_fleet_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyFleetRequest extends ModifyFleetRequest {
  @override
  final bool dryRun;
  @override
  final _i3.FleetExcessCapacityTerminationPolicy?
      excessCapacityTerminationPolicy;
  @override
  final _i6.BuiltList<_i4.FleetLaunchTemplateConfigRequest>?
      launchTemplateConfigs;
  @override
  final String fleetId;
  @override
  final _i5.TargetCapacitySpecificationRequest? targetCapacitySpecification;
  @override
  final String? context;

  factory _$ModifyFleetRequest(
          [void Function(ModifyFleetRequestBuilder)? updates]) =>
      (new ModifyFleetRequestBuilder()..update(updates))._build();

  _$ModifyFleetRequest._(
      {required this.dryRun,
      this.excessCapacityTerminationPolicy,
      this.launchTemplateConfigs,
      required this.fleetId,
      this.targetCapacitySpecification,
      this.context})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ModifyFleetRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        fleetId, r'ModifyFleetRequest', 'fleetId');
  }

  @override
  ModifyFleetRequest rebuild(
          void Function(ModifyFleetRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyFleetRequestBuilder toBuilder() =>
      new ModifyFleetRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyFleetRequest &&
        dryRun == other.dryRun &&
        excessCapacityTerminationPolicy ==
            other.excessCapacityTerminationPolicy &&
        launchTemplateConfigs == other.launchTemplateConfigs &&
        fleetId == other.fleetId &&
        targetCapacitySpecification == other.targetCapacitySpecification &&
        context == other.context;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, excessCapacityTerminationPolicy.hashCode);
    _$hash = $jc(_$hash, launchTemplateConfigs.hashCode);
    _$hash = $jc(_$hash, fleetId.hashCode);
    _$hash = $jc(_$hash, targetCapacitySpecification.hashCode);
    _$hash = $jc(_$hash, context.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyFleetRequestBuilder
    implements Builder<ModifyFleetRequest, ModifyFleetRequestBuilder> {
  _$ModifyFleetRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i3.FleetExcessCapacityTerminationPolicy? _excessCapacityTerminationPolicy;
  _i3.FleetExcessCapacityTerminationPolicy?
      get excessCapacityTerminationPolicy =>
          _$this._excessCapacityTerminationPolicy;
  set excessCapacityTerminationPolicy(
          _i3.FleetExcessCapacityTerminationPolicy?
              excessCapacityTerminationPolicy) =>
      _$this._excessCapacityTerminationPolicy = excessCapacityTerminationPolicy;

  _i6.ListBuilder<_i4.FleetLaunchTemplateConfigRequest>? _launchTemplateConfigs;
  _i6.ListBuilder<_i4.FleetLaunchTemplateConfigRequest>
      get launchTemplateConfigs => _$this._launchTemplateConfigs ??=
          new _i6.ListBuilder<_i4.FleetLaunchTemplateConfigRequest>();
  set launchTemplateConfigs(
          _i6.ListBuilder<_i4.FleetLaunchTemplateConfigRequest>?
              launchTemplateConfigs) =>
      _$this._launchTemplateConfigs = launchTemplateConfigs;

  String? _fleetId;
  String? get fleetId => _$this._fleetId;
  set fleetId(String? fleetId) => _$this._fleetId = fleetId;

  _i5.TargetCapacitySpecificationRequestBuilder? _targetCapacitySpecification;
  _i5.TargetCapacitySpecificationRequestBuilder
      get targetCapacitySpecification => _$this._targetCapacitySpecification ??=
          new _i5.TargetCapacitySpecificationRequestBuilder();
  set targetCapacitySpecification(
          _i5.TargetCapacitySpecificationRequestBuilder?
              targetCapacitySpecification) =>
      _$this._targetCapacitySpecification = targetCapacitySpecification;

  String? _context;
  String? get context => _$this._context;
  set context(String? context) => _$this._context = context;

  ModifyFleetRequestBuilder() {
    ModifyFleetRequest._init(this);
  }

  ModifyFleetRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _excessCapacityTerminationPolicy = $v.excessCapacityTerminationPolicy;
      _launchTemplateConfigs = $v.launchTemplateConfigs?.toBuilder();
      _fleetId = $v.fleetId;
      _targetCapacitySpecification =
          $v.targetCapacitySpecification?.toBuilder();
      _context = $v.context;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyFleetRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyFleetRequest;
  }

  @override
  void update(void Function(ModifyFleetRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyFleetRequest build() => _build();

  _$ModifyFleetRequest _build() {
    _$ModifyFleetRequest _$result;
    try {
      _$result = _$v ??
          new _$ModifyFleetRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'ModifyFleetRequest', 'dryRun'),
              excessCapacityTerminationPolicy: excessCapacityTerminationPolicy,
              launchTemplateConfigs: _launchTemplateConfigs?.build(),
              fleetId: BuiltValueNullFieldError.checkNotNull(
                  fleetId, r'ModifyFleetRequest', 'fleetId'),
              targetCapacitySpecification:
                  _targetCapacitySpecification?.build(),
              context: context);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'launchTemplateConfigs';
        _launchTemplateConfigs?.build();

        _$failedField = 'targetCapacitySpecification';
        _targetCapacitySpecification?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyFleetRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
