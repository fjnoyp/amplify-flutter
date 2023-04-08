// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.describe_network_insights_access_scope_analyses_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeNetworkInsightsAccessScopeAnalysesRequest
    extends DescribeNetworkInsightsAccessScopeAnalysesRequest {
  @override
  final _i4.BuiltList<String>? networkInsightsAccessScopeAnalysisIds;
  @override
  final String? networkInsightsAccessScopeId;
  @override
  final DateTime? analysisStartTimeBegin;
  @override
  final DateTime? analysisStartTimeEnd;
  @override
  final _i4.BuiltList<_i3.Filter>? filters;
  @override
  final int maxResults;
  @override
  final bool dryRun;
  @override
  final String? nextToken;

  factory _$DescribeNetworkInsightsAccessScopeAnalysesRequest(
          [void Function(
                  DescribeNetworkInsightsAccessScopeAnalysesRequestBuilder)?
              updates]) =>
      (new DescribeNetworkInsightsAccessScopeAnalysesRequestBuilder()
            ..update(updates))
          ._build();

  _$DescribeNetworkInsightsAccessScopeAnalysesRequest._(
      {this.networkInsightsAccessScopeAnalysisIds,
      this.networkInsightsAccessScopeId,
      this.analysisStartTimeBegin,
      this.analysisStartTimeEnd,
      this.filters,
      required this.maxResults,
      required this.dryRun,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(maxResults,
        r'DescribeNetworkInsightsAccessScopeAnalysesRequest', 'maxResults');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeNetworkInsightsAccessScopeAnalysesRequest', 'dryRun');
  }

  @override
  DescribeNetworkInsightsAccessScopeAnalysesRequest rebuild(
          void Function(
                  DescribeNetworkInsightsAccessScopeAnalysesRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeNetworkInsightsAccessScopeAnalysesRequestBuilder toBuilder() =>
      new DescribeNetworkInsightsAccessScopeAnalysesRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeNetworkInsightsAccessScopeAnalysesRequest &&
        networkInsightsAccessScopeAnalysisIds ==
            other.networkInsightsAccessScopeAnalysisIds &&
        networkInsightsAccessScopeId == other.networkInsightsAccessScopeId &&
        analysisStartTimeBegin == other.analysisStartTimeBegin &&
        analysisStartTimeEnd == other.analysisStartTimeEnd &&
        filters == other.filters &&
        maxResults == other.maxResults &&
        dryRun == other.dryRun &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, networkInsightsAccessScopeAnalysisIds.hashCode);
    _$hash = $jc(_$hash, networkInsightsAccessScopeId.hashCode);
    _$hash = $jc(_$hash, analysisStartTimeBegin.hashCode);
    _$hash = $jc(_$hash, analysisStartTimeEnd.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeNetworkInsightsAccessScopeAnalysesRequestBuilder
    implements
        Builder<DescribeNetworkInsightsAccessScopeAnalysesRequest,
            DescribeNetworkInsightsAccessScopeAnalysesRequestBuilder> {
  _$DescribeNetworkInsightsAccessScopeAnalysesRequest? _$v;

  _i4.ListBuilder<String>? _networkInsightsAccessScopeAnalysisIds;
  _i4.ListBuilder<String> get networkInsightsAccessScopeAnalysisIds =>
      _$this._networkInsightsAccessScopeAnalysisIds ??=
          new _i4.ListBuilder<String>();
  set networkInsightsAccessScopeAnalysisIds(
          _i4.ListBuilder<String>? networkInsightsAccessScopeAnalysisIds) =>
      _$this._networkInsightsAccessScopeAnalysisIds =
          networkInsightsAccessScopeAnalysisIds;

  String? _networkInsightsAccessScopeId;
  String? get networkInsightsAccessScopeId =>
      _$this._networkInsightsAccessScopeId;
  set networkInsightsAccessScopeId(String? networkInsightsAccessScopeId) =>
      _$this._networkInsightsAccessScopeId = networkInsightsAccessScopeId;

  DateTime? _analysisStartTimeBegin;
  DateTime? get analysisStartTimeBegin => _$this._analysisStartTimeBegin;
  set analysisStartTimeBegin(DateTime? analysisStartTimeBegin) =>
      _$this._analysisStartTimeBegin = analysisStartTimeBegin;

  DateTime? _analysisStartTimeEnd;
  DateTime? get analysisStartTimeEnd => _$this._analysisStartTimeEnd;
  set analysisStartTimeEnd(DateTime? analysisStartTimeEnd) =>
      _$this._analysisStartTimeEnd = analysisStartTimeEnd;

  _i4.ListBuilder<_i3.Filter>? _filters;
  _i4.ListBuilder<_i3.Filter> get filters =>
      _$this._filters ??= new _i4.ListBuilder<_i3.Filter>();
  set filters(_i4.ListBuilder<_i3.Filter>? filters) =>
      _$this._filters = filters;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeNetworkInsightsAccessScopeAnalysesRequestBuilder() {
    DescribeNetworkInsightsAccessScopeAnalysesRequest._init(this);
  }

  DescribeNetworkInsightsAccessScopeAnalysesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _networkInsightsAccessScopeAnalysisIds =
          $v.networkInsightsAccessScopeAnalysisIds?.toBuilder();
      _networkInsightsAccessScopeId = $v.networkInsightsAccessScopeId;
      _analysisStartTimeBegin = $v.analysisStartTimeBegin;
      _analysisStartTimeEnd = $v.analysisStartTimeEnd;
      _filters = $v.filters?.toBuilder();
      _maxResults = $v.maxResults;
      _dryRun = $v.dryRun;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeNetworkInsightsAccessScopeAnalysesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeNetworkInsightsAccessScopeAnalysesRequest;
  }

  @override
  void update(
      void Function(DescribeNetworkInsightsAccessScopeAnalysesRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeNetworkInsightsAccessScopeAnalysesRequest build() => _build();

  _$DescribeNetworkInsightsAccessScopeAnalysesRequest _build() {
    _$DescribeNetworkInsightsAccessScopeAnalysesRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeNetworkInsightsAccessScopeAnalysesRequest._(
              networkInsightsAccessScopeAnalysisIds:
                  _networkInsightsAccessScopeAnalysisIds?.build(),
              networkInsightsAccessScopeId: networkInsightsAccessScopeId,
              analysisStartTimeBegin: analysisStartTimeBegin,
              analysisStartTimeEnd: analysisStartTimeEnd,
              filters: _filters?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults,
                  r'DescribeNetworkInsightsAccessScopeAnalysesRequest',
                  'maxResults'),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun,
                  r'DescribeNetworkInsightsAccessScopeAnalysesRequest',
                  'dryRun'),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'networkInsightsAccessScopeAnalysisIds';
        _networkInsightsAccessScopeAnalysisIds?.build();

        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeNetworkInsightsAccessScopeAnalysesRequest',
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
