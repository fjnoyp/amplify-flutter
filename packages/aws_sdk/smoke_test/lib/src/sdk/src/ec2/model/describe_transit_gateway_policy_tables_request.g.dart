// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.describe_transit_gateway_policy_tables_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeTransitGatewayPolicyTablesRequest
    extends DescribeTransitGatewayPolicyTablesRequest {
  @override
  final _i4.BuiltList<String>? transitGatewayPolicyTableIds;
  @override
  final _i4.BuiltList<_i3.Filter>? filters;
  @override
  final int maxResults;
  @override
  final String? nextToken;
  @override
  final bool dryRun;

  factory _$DescribeTransitGatewayPolicyTablesRequest(
          [void Function(DescribeTransitGatewayPolicyTablesRequestBuilder)?
              updates]) =>
      (new DescribeTransitGatewayPolicyTablesRequestBuilder()..update(updates))
          ._build();

  _$DescribeTransitGatewayPolicyTablesRequest._(
      {this.transitGatewayPolicyTableIds,
      this.filters,
      required this.maxResults,
      this.nextToken,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeTransitGatewayPolicyTablesRequest', 'maxResults');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeTransitGatewayPolicyTablesRequest', 'dryRun');
  }

  @override
  DescribeTransitGatewayPolicyTablesRequest rebuild(
          void Function(DescribeTransitGatewayPolicyTablesRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeTransitGatewayPolicyTablesRequestBuilder toBuilder() =>
      new DescribeTransitGatewayPolicyTablesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeTransitGatewayPolicyTablesRequest &&
        transitGatewayPolicyTableIds == other.transitGatewayPolicyTableIds &&
        filters == other.filters &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayPolicyTableIds.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeTransitGatewayPolicyTablesRequestBuilder
    implements
        Builder<DescribeTransitGatewayPolicyTablesRequest,
            DescribeTransitGatewayPolicyTablesRequestBuilder> {
  _$DescribeTransitGatewayPolicyTablesRequest? _$v;

  _i4.ListBuilder<String>? _transitGatewayPolicyTableIds;
  _i4.ListBuilder<String> get transitGatewayPolicyTableIds =>
      _$this._transitGatewayPolicyTableIds ??= new _i4.ListBuilder<String>();
  set transitGatewayPolicyTableIds(
          _i4.ListBuilder<String>? transitGatewayPolicyTableIds) =>
      _$this._transitGatewayPolicyTableIds = transitGatewayPolicyTableIds;

  _i4.ListBuilder<_i3.Filter>? _filters;
  _i4.ListBuilder<_i3.Filter> get filters =>
      _$this._filters ??= new _i4.ListBuilder<_i3.Filter>();
  set filters(_i4.ListBuilder<_i3.Filter>? filters) =>
      _$this._filters = filters;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DescribeTransitGatewayPolicyTablesRequestBuilder() {
    DescribeTransitGatewayPolicyTablesRequest._init(this);
  }

  DescribeTransitGatewayPolicyTablesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayPolicyTableIds =
          $v.transitGatewayPolicyTableIds?.toBuilder();
      _filters = $v.filters?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeTransitGatewayPolicyTablesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeTransitGatewayPolicyTablesRequest;
  }

  @override
  void update(
      void Function(DescribeTransitGatewayPolicyTablesRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeTransitGatewayPolicyTablesRequest build() => _build();

  _$DescribeTransitGatewayPolicyTablesRequest _build() {
    _$DescribeTransitGatewayPolicyTablesRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeTransitGatewayPolicyTablesRequest._(
              transitGatewayPolicyTableIds:
                  _transitGatewayPolicyTableIds?.build(),
              filters: _filters?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(maxResults,
                  r'DescribeTransitGatewayPolicyTablesRequest', 'maxResults'),
              nextToken: nextToken,
              dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                  r'DescribeTransitGatewayPolicyTablesRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transitGatewayPolicyTableIds';
        _transitGatewayPolicyTableIds?.build();
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeTransitGatewayPolicyTablesRequest',
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
