// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.get_flow_logs_integration_template_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetFlowLogsIntegrationTemplateRequest
    extends GetFlowLogsIntegrationTemplateRequest {
  @override
  final bool dryRun;
  @override
  final String flowLogId;
  @override
  final String configDeliveryS3DestinationArn;
  @override
  final _i3.IntegrateServices integrateServices;

  factory _$GetFlowLogsIntegrationTemplateRequest(
          [void Function(GetFlowLogsIntegrationTemplateRequestBuilder)?
              updates]) =>
      (new GetFlowLogsIntegrationTemplateRequestBuilder()..update(updates))
          ._build();

  _$GetFlowLogsIntegrationTemplateRequest._(
      {required this.dryRun,
      required this.flowLogId,
      required this.configDeliveryS3DestinationArn,
      required this.integrateServices})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'GetFlowLogsIntegrationTemplateRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        flowLogId, r'GetFlowLogsIntegrationTemplateRequest', 'flowLogId');
    BuiltValueNullFieldError.checkNotNull(
        configDeliveryS3DestinationArn,
        r'GetFlowLogsIntegrationTemplateRequest',
        'configDeliveryS3DestinationArn');
    BuiltValueNullFieldError.checkNotNull(integrateServices,
        r'GetFlowLogsIntegrationTemplateRequest', 'integrateServices');
  }

  @override
  GetFlowLogsIntegrationTemplateRequest rebuild(
          void Function(GetFlowLogsIntegrationTemplateRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetFlowLogsIntegrationTemplateRequestBuilder toBuilder() =>
      new GetFlowLogsIntegrationTemplateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetFlowLogsIntegrationTemplateRequest &&
        dryRun == other.dryRun &&
        flowLogId == other.flowLogId &&
        configDeliveryS3DestinationArn ==
            other.configDeliveryS3DestinationArn &&
        integrateServices == other.integrateServices;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, flowLogId.hashCode);
    _$hash = $jc(_$hash, configDeliveryS3DestinationArn.hashCode);
    _$hash = $jc(_$hash, integrateServices.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetFlowLogsIntegrationTemplateRequestBuilder
    implements
        Builder<GetFlowLogsIntegrationTemplateRequest,
            GetFlowLogsIntegrationTemplateRequestBuilder> {
  _$GetFlowLogsIntegrationTemplateRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _flowLogId;
  String? get flowLogId => _$this._flowLogId;
  set flowLogId(String? flowLogId) => _$this._flowLogId = flowLogId;

  String? _configDeliveryS3DestinationArn;
  String? get configDeliveryS3DestinationArn =>
      _$this._configDeliveryS3DestinationArn;
  set configDeliveryS3DestinationArn(String? configDeliveryS3DestinationArn) =>
      _$this._configDeliveryS3DestinationArn = configDeliveryS3DestinationArn;

  _i3.IntegrateServicesBuilder? _integrateServices;
  _i3.IntegrateServicesBuilder get integrateServices =>
      _$this._integrateServices ??= new _i3.IntegrateServicesBuilder();
  set integrateServices(_i3.IntegrateServicesBuilder? integrateServices) =>
      _$this._integrateServices = integrateServices;

  GetFlowLogsIntegrationTemplateRequestBuilder() {
    GetFlowLogsIntegrationTemplateRequest._init(this);
  }

  GetFlowLogsIntegrationTemplateRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _flowLogId = $v.flowLogId;
      _configDeliveryS3DestinationArn = $v.configDeliveryS3DestinationArn;
      _integrateServices = $v.integrateServices.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetFlowLogsIntegrationTemplateRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetFlowLogsIntegrationTemplateRequest;
  }

  @override
  void update(
      void Function(GetFlowLogsIntegrationTemplateRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetFlowLogsIntegrationTemplateRequest build() => _build();

  _$GetFlowLogsIntegrationTemplateRequest _build() {
    _$GetFlowLogsIntegrationTemplateRequest _$result;
    try {
      _$result = _$v ??
          new _$GetFlowLogsIntegrationTemplateRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'GetFlowLogsIntegrationTemplateRequest', 'dryRun'),
              flowLogId: BuiltValueNullFieldError.checkNotNull(flowLogId,
                  r'GetFlowLogsIntegrationTemplateRequest', 'flowLogId'),
              configDeliveryS3DestinationArn:
                  BuiltValueNullFieldError.checkNotNull(
                      configDeliveryS3DestinationArn,
                      r'GetFlowLogsIntegrationTemplateRequest',
                      'configDeliveryS3DestinationArn'),
              integrateServices: integrateServices.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'integrateServices';
        integrateServices.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetFlowLogsIntegrationTemplateRequest',
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
