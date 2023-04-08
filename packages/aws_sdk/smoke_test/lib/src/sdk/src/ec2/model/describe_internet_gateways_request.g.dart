// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.describe_internet_gateways_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeInternetGatewaysRequest
    extends DescribeInternetGatewaysRequest {
  @override
  final _i4.BuiltList<_i3.Filter>? filters;
  @override
  final bool dryRun;
  @override
  final _i4.BuiltList<String>? internetGatewayIds;
  @override
  final String? nextToken;
  @override
  final int maxResults;

  factory _$DescribeInternetGatewaysRequest(
          [void Function(DescribeInternetGatewaysRequestBuilder)? updates]) =>
      (new DescribeInternetGatewaysRequestBuilder()..update(updates))._build();

  _$DescribeInternetGatewaysRequest._(
      {this.filters,
      required this.dryRun,
      this.internetGatewayIds,
      this.nextToken,
      required this.maxResults})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeInternetGatewaysRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeInternetGatewaysRequest', 'maxResults');
  }

  @override
  DescribeInternetGatewaysRequest rebuild(
          void Function(DescribeInternetGatewaysRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeInternetGatewaysRequestBuilder toBuilder() =>
      new DescribeInternetGatewaysRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeInternetGatewaysRequest &&
        filters == other.filters &&
        dryRun == other.dryRun &&
        internetGatewayIds == other.internetGatewayIds &&
        nextToken == other.nextToken &&
        maxResults == other.maxResults;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, internetGatewayIds.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeInternetGatewaysRequestBuilder
    implements
        Builder<DescribeInternetGatewaysRequest,
            DescribeInternetGatewaysRequestBuilder> {
  _$DescribeInternetGatewaysRequest? _$v;

  _i4.ListBuilder<_i3.Filter>? _filters;
  _i4.ListBuilder<_i3.Filter> get filters =>
      _$this._filters ??= new _i4.ListBuilder<_i3.Filter>();
  set filters(_i4.ListBuilder<_i3.Filter>? filters) =>
      _$this._filters = filters;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i4.ListBuilder<String>? _internetGatewayIds;
  _i4.ListBuilder<String> get internetGatewayIds =>
      _$this._internetGatewayIds ??= new _i4.ListBuilder<String>();
  set internetGatewayIds(_i4.ListBuilder<String>? internetGatewayIds) =>
      _$this._internetGatewayIds = internetGatewayIds;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  DescribeInternetGatewaysRequestBuilder() {
    DescribeInternetGatewaysRequest._init(this);
  }

  DescribeInternetGatewaysRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filters = $v.filters?.toBuilder();
      _dryRun = $v.dryRun;
      _internetGatewayIds = $v.internetGatewayIds?.toBuilder();
      _nextToken = $v.nextToken;
      _maxResults = $v.maxResults;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeInternetGatewaysRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeInternetGatewaysRequest;
  }

  @override
  void update(void Function(DescribeInternetGatewaysRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeInternetGatewaysRequest build() => _build();

  _$DescribeInternetGatewaysRequest _build() {
    _$DescribeInternetGatewaysRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeInternetGatewaysRequest._(
              filters: _filters?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeInternetGatewaysRequest', 'dryRun'),
              internetGatewayIds: _internetGatewayIds?.build(),
              nextToken: nextToken,
              maxResults: BuiltValueNullFieldError.checkNotNull(maxResults,
                  r'DescribeInternetGatewaysRequest', 'maxResults'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();

        _$failedField = 'internetGatewayIds';
        _internetGatewayIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeInternetGatewaysRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
