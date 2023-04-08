// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.create_flow_logs_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateFlowLogsRequest extends CreateFlowLogsRequest {
  @override
  final bool dryRun;
  @override
  final String? clientToken;
  @override
  final String? deliverLogsPermissionArn;
  @override
  final String? deliverCrossAccountRole;
  @override
  final String? logGroupName;
  @override
  final _i8.BuiltList<String> resourceIds;
  @override
  final _i3.FlowLogsResourceType resourceType;
  @override
  final _i4.TrafficType? trafficType;
  @override
  final _i5.LogDestinationType? logDestinationType;
  @override
  final String? logDestination;
  @override
  final String? logFormat;
  @override
  final _i8.BuiltList<_i6.TagSpecification>? tagSpecifications;
  @override
  final int maxAggregationInterval;
  @override
  final _i7.DestinationOptionsRequest? destinationOptions;

  factory _$CreateFlowLogsRequest(
          [void Function(CreateFlowLogsRequestBuilder)? updates]) =>
      (new CreateFlowLogsRequestBuilder()..update(updates))._build();

  _$CreateFlowLogsRequest._(
      {required this.dryRun,
      this.clientToken,
      this.deliverLogsPermissionArn,
      this.deliverCrossAccountRole,
      this.logGroupName,
      required this.resourceIds,
      required this.resourceType,
      this.trafficType,
      this.logDestinationType,
      this.logDestination,
      this.logFormat,
      this.tagSpecifications,
      required this.maxAggregationInterval,
      this.destinationOptions})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateFlowLogsRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        resourceIds, r'CreateFlowLogsRequest', 'resourceIds');
    BuiltValueNullFieldError.checkNotNull(
        resourceType, r'CreateFlowLogsRequest', 'resourceType');
    BuiltValueNullFieldError.checkNotNull(maxAggregationInterval,
        r'CreateFlowLogsRequest', 'maxAggregationInterval');
  }

  @override
  CreateFlowLogsRequest rebuild(
          void Function(CreateFlowLogsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateFlowLogsRequestBuilder toBuilder() =>
      new CreateFlowLogsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateFlowLogsRequest &&
        dryRun == other.dryRun &&
        clientToken == other.clientToken &&
        deliverLogsPermissionArn == other.deliverLogsPermissionArn &&
        deliverCrossAccountRole == other.deliverCrossAccountRole &&
        logGroupName == other.logGroupName &&
        resourceIds == other.resourceIds &&
        resourceType == other.resourceType &&
        trafficType == other.trafficType &&
        logDestinationType == other.logDestinationType &&
        logDestination == other.logDestination &&
        logFormat == other.logFormat &&
        tagSpecifications == other.tagSpecifications &&
        maxAggregationInterval == other.maxAggregationInterval &&
        destinationOptions == other.destinationOptions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, deliverLogsPermissionArn.hashCode);
    _$hash = $jc(_$hash, deliverCrossAccountRole.hashCode);
    _$hash = $jc(_$hash, logGroupName.hashCode);
    _$hash = $jc(_$hash, resourceIds.hashCode);
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jc(_$hash, trafficType.hashCode);
    _$hash = $jc(_$hash, logDestinationType.hashCode);
    _$hash = $jc(_$hash, logDestination.hashCode);
    _$hash = $jc(_$hash, logFormat.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, maxAggregationInterval.hashCode);
    _$hash = $jc(_$hash, destinationOptions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateFlowLogsRequestBuilder
    implements Builder<CreateFlowLogsRequest, CreateFlowLogsRequestBuilder> {
  _$CreateFlowLogsRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  String? _deliverLogsPermissionArn;
  String? get deliverLogsPermissionArn => _$this._deliverLogsPermissionArn;
  set deliverLogsPermissionArn(String? deliverLogsPermissionArn) =>
      _$this._deliverLogsPermissionArn = deliverLogsPermissionArn;

  String? _deliverCrossAccountRole;
  String? get deliverCrossAccountRole => _$this._deliverCrossAccountRole;
  set deliverCrossAccountRole(String? deliverCrossAccountRole) =>
      _$this._deliverCrossAccountRole = deliverCrossAccountRole;

  String? _logGroupName;
  String? get logGroupName => _$this._logGroupName;
  set logGroupName(String? logGroupName) => _$this._logGroupName = logGroupName;

  _i8.ListBuilder<String>? _resourceIds;
  _i8.ListBuilder<String> get resourceIds =>
      _$this._resourceIds ??= new _i8.ListBuilder<String>();
  set resourceIds(_i8.ListBuilder<String>? resourceIds) =>
      _$this._resourceIds = resourceIds;

  _i3.FlowLogsResourceType? _resourceType;
  _i3.FlowLogsResourceType? get resourceType => _$this._resourceType;
  set resourceType(_i3.FlowLogsResourceType? resourceType) =>
      _$this._resourceType = resourceType;

  _i4.TrafficType? _trafficType;
  _i4.TrafficType? get trafficType => _$this._trafficType;
  set trafficType(_i4.TrafficType? trafficType) =>
      _$this._trafficType = trafficType;

  _i5.LogDestinationType? _logDestinationType;
  _i5.LogDestinationType? get logDestinationType => _$this._logDestinationType;
  set logDestinationType(_i5.LogDestinationType? logDestinationType) =>
      _$this._logDestinationType = logDestinationType;

  String? _logDestination;
  String? get logDestination => _$this._logDestination;
  set logDestination(String? logDestination) =>
      _$this._logDestination = logDestination;

  String? _logFormat;
  String? get logFormat => _$this._logFormat;
  set logFormat(String? logFormat) => _$this._logFormat = logFormat;

  _i8.ListBuilder<_i6.TagSpecification>? _tagSpecifications;
  _i8.ListBuilder<_i6.TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i8.ListBuilder<_i6.TagSpecification>();
  set tagSpecifications(
          _i8.ListBuilder<_i6.TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  int? _maxAggregationInterval;
  int? get maxAggregationInterval => _$this._maxAggregationInterval;
  set maxAggregationInterval(int? maxAggregationInterval) =>
      _$this._maxAggregationInterval = maxAggregationInterval;

  _i7.DestinationOptionsRequestBuilder? _destinationOptions;
  _i7.DestinationOptionsRequestBuilder get destinationOptions =>
      _$this._destinationOptions ??= new _i7.DestinationOptionsRequestBuilder();
  set destinationOptions(
          _i7.DestinationOptionsRequestBuilder? destinationOptions) =>
      _$this._destinationOptions = destinationOptions;

  CreateFlowLogsRequestBuilder() {
    CreateFlowLogsRequest._init(this);
  }

  CreateFlowLogsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _clientToken = $v.clientToken;
      _deliverLogsPermissionArn = $v.deliverLogsPermissionArn;
      _deliverCrossAccountRole = $v.deliverCrossAccountRole;
      _logGroupName = $v.logGroupName;
      _resourceIds = $v.resourceIds.toBuilder();
      _resourceType = $v.resourceType;
      _trafficType = $v.trafficType;
      _logDestinationType = $v.logDestinationType;
      _logDestination = $v.logDestination;
      _logFormat = $v.logFormat;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _maxAggregationInterval = $v.maxAggregationInterval;
      _destinationOptions = $v.destinationOptions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateFlowLogsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateFlowLogsRequest;
  }

  @override
  void update(void Function(CreateFlowLogsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateFlowLogsRequest build() => _build();

  _$CreateFlowLogsRequest _build() {
    _$CreateFlowLogsRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateFlowLogsRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreateFlowLogsRequest', 'dryRun'),
              clientToken: clientToken,
              deliverLogsPermissionArn: deliverLogsPermissionArn,
              deliverCrossAccountRole: deliverCrossAccountRole,
              logGroupName: logGroupName,
              resourceIds: resourceIds.build(),
              resourceType: BuiltValueNullFieldError.checkNotNull(
                  resourceType, r'CreateFlowLogsRequest', 'resourceType'),
              trafficType: trafficType,
              logDestinationType: logDestinationType,
              logDestination: logDestination,
              logFormat: logFormat,
              tagSpecifications: _tagSpecifications?.build(),
              maxAggregationInterval: BuiltValueNullFieldError.checkNotNull(
                  maxAggregationInterval,
                  r'CreateFlowLogsRequest',
                  'maxAggregationInterval'),
              destinationOptions: _destinationOptions?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'resourceIds';
        resourceIds.build();

        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();

        _$failedField = 'destinationOptions';
        _destinationOptions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateFlowLogsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
