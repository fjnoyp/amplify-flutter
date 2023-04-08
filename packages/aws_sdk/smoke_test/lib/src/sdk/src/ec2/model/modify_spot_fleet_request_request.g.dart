// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.modify_spot_fleet_request_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifySpotFleetRequestRequest extends ModifySpotFleetRequestRequest {
  @override
  final _i3.ExcessCapacityTerminationPolicy? excessCapacityTerminationPolicy;
  @override
  final _i5.BuiltList<_i4.LaunchTemplateConfig>? launchTemplateConfigs;
  @override
  final String spotFleetRequestId;
  @override
  final int targetCapacity;
  @override
  final int onDemandTargetCapacity;
  @override
  final String? context;

  factory _$ModifySpotFleetRequestRequest(
          [void Function(ModifySpotFleetRequestRequestBuilder)? updates]) =>
      (new ModifySpotFleetRequestRequestBuilder()..update(updates))._build();

  _$ModifySpotFleetRequestRequest._(
      {this.excessCapacityTerminationPolicy,
      this.launchTemplateConfigs,
      required this.spotFleetRequestId,
      required this.targetCapacity,
      required this.onDemandTargetCapacity,
      this.context})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(spotFleetRequestId,
        r'ModifySpotFleetRequestRequest', 'spotFleetRequestId');
    BuiltValueNullFieldError.checkNotNull(
        targetCapacity, r'ModifySpotFleetRequestRequest', 'targetCapacity');
    BuiltValueNullFieldError.checkNotNull(onDemandTargetCapacity,
        r'ModifySpotFleetRequestRequest', 'onDemandTargetCapacity');
  }

  @override
  ModifySpotFleetRequestRequest rebuild(
          void Function(ModifySpotFleetRequestRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifySpotFleetRequestRequestBuilder toBuilder() =>
      new ModifySpotFleetRequestRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifySpotFleetRequestRequest &&
        excessCapacityTerminationPolicy ==
            other.excessCapacityTerminationPolicy &&
        launchTemplateConfigs == other.launchTemplateConfigs &&
        spotFleetRequestId == other.spotFleetRequestId &&
        targetCapacity == other.targetCapacity &&
        onDemandTargetCapacity == other.onDemandTargetCapacity &&
        context == other.context;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, excessCapacityTerminationPolicy.hashCode);
    _$hash = $jc(_$hash, launchTemplateConfigs.hashCode);
    _$hash = $jc(_$hash, spotFleetRequestId.hashCode);
    _$hash = $jc(_$hash, targetCapacity.hashCode);
    _$hash = $jc(_$hash, onDemandTargetCapacity.hashCode);
    _$hash = $jc(_$hash, context.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifySpotFleetRequestRequestBuilder
    implements
        Builder<ModifySpotFleetRequestRequest,
            ModifySpotFleetRequestRequestBuilder> {
  _$ModifySpotFleetRequestRequest? _$v;

  _i3.ExcessCapacityTerminationPolicy? _excessCapacityTerminationPolicy;
  _i3.ExcessCapacityTerminationPolicy? get excessCapacityTerminationPolicy =>
      _$this._excessCapacityTerminationPolicy;
  set excessCapacityTerminationPolicy(
          _i3.ExcessCapacityTerminationPolicy?
              excessCapacityTerminationPolicy) =>
      _$this._excessCapacityTerminationPolicy = excessCapacityTerminationPolicy;

  _i5.ListBuilder<_i4.LaunchTemplateConfig>? _launchTemplateConfigs;
  _i5.ListBuilder<_i4.LaunchTemplateConfig> get launchTemplateConfigs =>
      _$this._launchTemplateConfigs ??=
          new _i5.ListBuilder<_i4.LaunchTemplateConfig>();
  set launchTemplateConfigs(
          _i5.ListBuilder<_i4.LaunchTemplateConfig>? launchTemplateConfigs) =>
      _$this._launchTemplateConfigs = launchTemplateConfigs;

  String? _spotFleetRequestId;
  String? get spotFleetRequestId => _$this._spotFleetRequestId;
  set spotFleetRequestId(String? spotFleetRequestId) =>
      _$this._spotFleetRequestId = spotFleetRequestId;

  int? _targetCapacity;
  int? get targetCapacity => _$this._targetCapacity;
  set targetCapacity(int? targetCapacity) =>
      _$this._targetCapacity = targetCapacity;

  int? _onDemandTargetCapacity;
  int? get onDemandTargetCapacity => _$this._onDemandTargetCapacity;
  set onDemandTargetCapacity(int? onDemandTargetCapacity) =>
      _$this._onDemandTargetCapacity = onDemandTargetCapacity;

  String? _context;
  String? get context => _$this._context;
  set context(String? context) => _$this._context = context;

  ModifySpotFleetRequestRequestBuilder() {
    ModifySpotFleetRequestRequest._init(this);
  }

  ModifySpotFleetRequestRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _excessCapacityTerminationPolicy = $v.excessCapacityTerminationPolicy;
      _launchTemplateConfigs = $v.launchTemplateConfigs?.toBuilder();
      _spotFleetRequestId = $v.spotFleetRequestId;
      _targetCapacity = $v.targetCapacity;
      _onDemandTargetCapacity = $v.onDemandTargetCapacity;
      _context = $v.context;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifySpotFleetRequestRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifySpotFleetRequestRequest;
  }

  @override
  void update(void Function(ModifySpotFleetRequestRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifySpotFleetRequestRequest build() => _build();

  _$ModifySpotFleetRequestRequest _build() {
    _$ModifySpotFleetRequestRequest _$result;
    try {
      _$result = _$v ??
          new _$ModifySpotFleetRequestRequest._(
              excessCapacityTerminationPolicy: excessCapacityTerminationPolicy,
              launchTemplateConfigs: _launchTemplateConfigs?.build(),
              spotFleetRequestId: BuiltValueNullFieldError.checkNotNull(
                  spotFleetRequestId,
                  r'ModifySpotFleetRequestRequest',
                  'spotFleetRequestId'),
              targetCapacity: BuiltValueNullFieldError.checkNotNull(
                  targetCapacity,
                  r'ModifySpotFleetRequestRequest',
                  'targetCapacity'),
              onDemandTargetCapacity: BuiltValueNullFieldError.checkNotNull(
                  onDemandTargetCapacity,
                  r'ModifySpotFleetRequestRequest',
                  'onDemandTargetCapacity'),
              context: context);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'launchTemplateConfigs';
        _launchTemplateConfigs?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifySpotFleetRequestRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
