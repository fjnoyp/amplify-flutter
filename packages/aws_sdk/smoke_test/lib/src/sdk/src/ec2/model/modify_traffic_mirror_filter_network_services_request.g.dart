// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.modify_traffic_mirror_filter_network_services_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyTrafficMirrorFilterNetworkServicesRequest
    extends ModifyTrafficMirrorFilterNetworkServicesRequest {
  @override
  final String trafficMirrorFilterId;
  @override
  final _i4.BuiltList<_i3.TrafficMirrorNetworkService>? addNetworkServices;
  @override
  final _i4.BuiltList<_i3.TrafficMirrorNetworkService>? removeNetworkServices;
  @override
  final bool dryRun;

  factory _$ModifyTrafficMirrorFilterNetworkServicesRequest(
          [void Function(
                  ModifyTrafficMirrorFilterNetworkServicesRequestBuilder)?
              updates]) =>
      (new ModifyTrafficMirrorFilterNetworkServicesRequestBuilder()
            ..update(updates))
          ._build();

  _$ModifyTrafficMirrorFilterNetworkServicesRequest._(
      {required this.trafficMirrorFilterId,
      this.addNetworkServices,
      this.removeNetworkServices,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        trafficMirrorFilterId,
        r'ModifyTrafficMirrorFilterNetworkServicesRequest',
        'trafficMirrorFilterId');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ModifyTrafficMirrorFilterNetworkServicesRequest', 'dryRun');
  }

  @override
  ModifyTrafficMirrorFilterNetworkServicesRequest rebuild(
          void Function(ModifyTrafficMirrorFilterNetworkServicesRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyTrafficMirrorFilterNetworkServicesRequestBuilder toBuilder() =>
      new ModifyTrafficMirrorFilterNetworkServicesRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyTrafficMirrorFilterNetworkServicesRequest &&
        trafficMirrorFilterId == other.trafficMirrorFilterId &&
        addNetworkServices == other.addNetworkServices &&
        removeNetworkServices == other.removeNetworkServices &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, trafficMirrorFilterId.hashCode);
    _$hash = $jc(_$hash, addNetworkServices.hashCode);
    _$hash = $jc(_$hash, removeNetworkServices.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyTrafficMirrorFilterNetworkServicesRequestBuilder
    implements
        Builder<ModifyTrafficMirrorFilterNetworkServicesRequest,
            ModifyTrafficMirrorFilterNetworkServicesRequestBuilder> {
  _$ModifyTrafficMirrorFilterNetworkServicesRequest? _$v;

  String? _trafficMirrorFilterId;
  String? get trafficMirrorFilterId => _$this._trafficMirrorFilterId;
  set trafficMirrorFilterId(String? trafficMirrorFilterId) =>
      _$this._trafficMirrorFilterId = trafficMirrorFilterId;

  _i4.ListBuilder<_i3.TrafficMirrorNetworkService>? _addNetworkServices;
  _i4.ListBuilder<_i3.TrafficMirrorNetworkService> get addNetworkServices =>
      _$this._addNetworkServices ??=
          new _i4.ListBuilder<_i3.TrafficMirrorNetworkService>();
  set addNetworkServices(
          _i4.ListBuilder<_i3.TrafficMirrorNetworkService>?
              addNetworkServices) =>
      _$this._addNetworkServices = addNetworkServices;

  _i4.ListBuilder<_i3.TrafficMirrorNetworkService>? _removeNetworkServices;
  _i4.ListBuilder<_i3.TrafficMirrorNetworkService> get removeNetworkServices =>
      _$this._removeNetworkServices ??=
          new _i4.ListBuilder<_i3.TrafficMirrorNetworkService>();
  set removeNetworkServices(
          _i4.ListBuilder<_i3.TrafficMirrorNetworkService>?
              removeNetworkServices) =>
      _$this._removeNetworkServices = removeNetworkServices;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  ModifyTrafficMirrorFilterNetworkServicesRequestBuilder() {
    ModifyTrafficMirrorFilterNetworkServicesRequest._init(this);
  }

  ModifyTrafficMirrorFilterNetworkServicesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _trafficMirrorFilterId = $v.trafficMirrorFilterId;
      _addNetworkServices = $v.addNetworkServices?.toBuilder();
      _removeNetworkServices = $v.removeNetworkServices?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyTrafficMirrorFilterNetworkServicesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyTrafficMirrorFilterNetworkServicesRequest;
  }

  @override
  void update(
      void Function(ModifyTrafficMirrorFilterNetworkServicesRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyTrafficMirrorFilterNetworkServicesRequest build() => _build();

  _$ModifyTrafficMirrorFilterNetworkServicesRequest _build() {
    _$ModifyTrafficMirrorFilterNetworkServicesRequest _$result;
    try {
      _$result = _$v ??
          new _$ModifyTrafficMirrorFilterNetworkServicesRequest._(
              trafficMirrorFilterId: BuiltValueNullFieldError.checkNotNull(
                  trafficMirrorFilterId,
                  r'ModifyTrafficMirrorFilterNetworkServicesRequest',
                  'trafficMirrorFilterId'),
              addNetworkServices: _addNetworkServices?.build(),
              removeNetworkServices: _removeNetworkServices?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun,
                  r'ModifyTrafficMirrorFilterNetworkServicesRequest',
                  'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'addNetworkServices';
        _addNetworkServices?.build();
        _$failedField = 'removeNetworkServices';
        _removeNetworkServices?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyTrafficMirrorFilterNetworkServicesRequest',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
