// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.describe_spot_instance_requests_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeSpotInstanceRequestsRequest
    extends DescribeSpotInstanceRequestsRequest {
  @override
  final _i4.BuiltList<_i3.Filter>? filters;
  @override
  final bool dryRun;
  @override
  final _i4.BuiltList<String>? spotInstanceRequestIds;
  @override
  final String? nextToken;
  @override
  final int maxResults;

  factory _$DescribeSpotInstanceRequestsRequest(
          [void Function(DescribeSpotInstanceRequestsRequestBuilder)?
              updates]) =>
      (new DescribeSpotInstanceRequestsRequestBuilder()..update(updates))
          ._build();

  _$DescribeSpotInstanceRequestsRequest._(
      {this.filters,
      required this.dryRun,
      this.spotInstanceRequestIds,
      this.nextToken,
      required this.maxResults})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeSpotInstanceRequestsRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeSpotInstanceRequestsRequest', 'maxResults');
  }

  @override
  DescribeSpotInstanceRequestsRequest rebuild(
          void Function(DescribeSpotInstanceRequestsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeSpotInstanceRequestsRequestBuilder toBuilder() =>
      new DescribeSpotInstanceRequestsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeSpotInstanceRequestsRequest &&
        filters == other.filters &&
        dryRun == other.dryRun &&
        spotInstanceRequestIds == other.spotInstanceRequestIds &&
        nextToken == other.nextToken &&
        maxResults == other.maxResults;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, spotInstanceRequestIds.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeSpotInstanceRequestsRequestBuilder
    implements
        Builder<DescribeSpotInstanceRequestsRequest,
            DescribeSpotInstanceRequestsRequestBuilder> {
  _$DescribeSpotInstanceRequestsRequest? _$v;

  _i4.ListBuilder<_i3.Filter>? _filters;
  _i4.ListBuilder<_i3.Filter> get filters =>
      _$this._filters ??= new _i4.ListBuilder<_i3.Filter>();
  set filters(_i4.ListBuilder<_i3.Filter>? filters) =>
      _$this._filters = filters;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i4.ListBuilder<String>? _spotInstanceRequestIds;
  _i4.ListBuilder<String> get spotInstanceRequestIds =>
      _$this._spotInstanceRequestIds ??= new _i4.ListBuilder<String>();
  set spotInstanceRequestIds(_i4.ListBuilder<String>? spotInstanceRequestIds) =>
      _$this._spotInstanceRequestIds = spotInstanceRequestIds;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  DescribeSpotInstanceRequestsRequestBuilder() {
    DescribeSpotInstanceRequestsRequest._init(this);
  }

  DescribeSpotInstanceRequestsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filters = $v.filters?.toBuilder();
      _dryRun = $v.dryRun;
      _spotInstanceRequestIds = $v.spotInstanceRequestIds?.toBuilder();
      _nextToken = $v.nextToken;
      _maxResults = $v.maxResults;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeSpotInstanceRequestsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeSpotInstanceRequestsRequest;
  }

  @override
  void update(
      void Function(DescribeSpotInstanceRequestsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeSpotInstanceRequestsRequest build() => _build();

  _$DescribeSpotInstanceRequestsRequest _build() {
    _$DescribeSpotInstanceRequestsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeSpotInstanceRequestsRequest._(
              filters: _filters?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeSpotInstanceRequestsRequest', 'dryRun'),
              spotInstanceRequestIds: _spotInstanceRequestIds?.build(),
              nextToken: nextToken,
              maxResults: BuiltValueNullFieldError.checkNotNull(maxResults,
                  r'DescribeSpotInstanceRequestsRequest', 'maxResults'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();

        _$failedField = 'spotInstanceRequestIds';
        _spotInstanceRequestIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeSpotInstanceRequestsRequest',
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
