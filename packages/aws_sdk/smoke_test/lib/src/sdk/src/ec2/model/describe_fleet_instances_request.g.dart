// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.describe_fleet_instances_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeFleetInstancesRequest extends DescribeFleetInstancesRequest {
  @override
  final bool dryRun;
  @override
  final int maxResults;
  @override
  final String? nextToken;
  @override
  final String fleetId;
  @override
  final _i4.BuiltList<_i3.Filter>? filters;

  factory _$DescribeFleetInstancesRequest(
          [void Function(DescribeFleetInstancesRequestBuilder)? updates]) =>
      (new DescribeFleetInstancesRequestBuilder()..update(updates))._build();

  _$DescribeFleetInstancesRequest._(
      {required this.dryRun,
      required this.maxResults,
      this.nextToken,
      required this.fleetId,
      this.filters})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeFleetInstancesRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeFleetInstancesRequest', 'maxResults');
    BuiltValueNullFieldError.checkNotNull(
        fleetId, r'DescribeFleetInstancesRequest', 'fleetId');
  }

  @override
  DescribeFleetInstancesRequest rebuild(
          void Function(DescribeFleetInstancesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeFleetInstancesRequestBuilder toBuilder() =>
      new DescribeFleetInstancesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeFleetInstancesRequest &&
        dryRun == other.dryRun &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken &&
        fleetId == other.fleetId &&
        filters == other.filters;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, fleetId.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeFleetInstancesRequestBuilder
    implements
        Builder<DescribeFleetInstancesRequest,
            DescribeFleetInstancesRequestBuilder> {
  _$DescribeFleetInstancesRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  String? _fleetId;
  String? get fleetId => _$this._fleetId;
  set fleetId(String? fleetId) => _$this._fleetId = fleetId;

  _i4.ListBuilder<_i3.Filter>? _filters;
  _i4.ListBuilder<_i3.Filter> get filters =>
      _$this._filters ??= new _i4.ListBuilder<_i3.Filter>();
  set filters(_i4.ListBuilder<_i3.Filter>? filters) =>
      _$this._filters = filters;

  DescribeFleetInstancesRequestBuilder() {
    DescribeFleetInstancesRequest._init(this);
  }

  DescribeFleetInstancesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _fleetId = $v.fleetId;
      _filters = $v.filters?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeFleetInstancesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeFleetInstancesRequest;
  }

  @override
  void update(void Function(DescribeFleetInstancesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeFleetInstancesRequest build() => _build();

  _$DescribeFleetInstancesRequest _build() {
    _$DescribeFleetInstancesRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeFleetInstancesRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeFleetInstancesRequest', 'dryRun'),
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults, r'DescribeFleetInstancesRequest', 'maxResults'),
              nextToken: nextToken,
              fleetId: BuiltValueNullFieldError.checkNotNull(
                  fleetId, r'DescribeFleetInstancesRequest', 'fleetId'),
              filters: _filters?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeFleetInstancesRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
