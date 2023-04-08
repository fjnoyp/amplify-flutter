// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.describe_classic_link_instances_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeClassicLinkInstancesRequest
    extends DescribeClassicLinkInstancesRequest {
  @override
  final _i4.BuiltList<_i3.Filter>? filters;
  @override
  final bool dryRun;
  @override
  final _i4.BuiltList<String>? instanceIds;
  @override
  final int maxResults;
  @override
  final String? nextToken;

  factory _$DescribeClassicLinkInstancesRequest(
          [void Function(DescribeClassicLinkInstancesRequestBuilder)?
              updates]) =>
      (new DescribeClassicLinkInstancesRequestBuilder()..update(updates))
          ._build();

  _$DescribeClassicLinkInstancesRequest._(
      {this.filters,
      required this.dryRun,
      this.instanceIds,
      required this.maxResults,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeClassicLinkInstancesRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeClassicLinkInstancesRequest', 'maxResults');
  }

  @override
  DescribeClassicLinkInstancesRequest rebuild(
          void Function(DescribeClassicLinkInstancesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeClassicLinkInstancesRequestBuilder toBuilder() =>
      new DescribeClassicLinkInstancesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeClassicLinkInstancesRequest &&
        filters == other.filters &&
        dryRun == other.dryRun &&
        instanceIds == other.instanceIds &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, instanceIds.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeClassicLinkInstancesRequestBuilder
    implements
        Builder<DescribeClassicLinkInstancesRequest,
            DescribeClassicLinkInstancesRequestBuilder> {
  _$DescribeClassicLinkInstancesRequest? _$v;

  _i4.ListBuilder<_i3.Filter>? _filters;
  _i4.ListBuilder<_i3.Filter> get filters =>
      _$this._filters ??= new _i4.ListBuilder<_i3.Filter>();
  set filters(_i4.ListBuilder<_i3.Filter>? filters) =>
      _$this._filters = filters;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i4.ListBuilder<String>? _instanceIds;
  _i4.ListBuilder<String> get instanceIds =>
      _$this._instanceIds ??= new _i4.ListBuilder<String>();
  set instanceIds(_i4.ListBuilder<String>? instanceIds) =>
      _$this._instanceIds = instanceIds;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeClassicLinkInstancesRequestBuilder() {
    DescribeClassicLinkInstancesRequest._init(this);
  }

  DescribeClassicLinkInstancesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filters = $v.filters?.toBuilder();
      _dryRun = $v.dryRun;
      _instanceIds = $v.instanceIds?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeClassicLinkInstancesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeClassicLinkInstancesRequest;
  }

  @override
  void update(
      void Function(DescribeClassicLinkInstancesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeClassicLinkInstancesRequest build() => _build();

  _$DescribeClassicLinkInstancesRequest _build() {
    _$DescribeClassicLinkInstancesRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeClassicLinkInstancesRequest._(
              filters: _filters?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeClassicLinkInstancesRequest', 'dryRun'),
              instanceIds: _instanceIds?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(maxResults,
                  r'DescribeClassicLinkInstancesRequest', 'maxResults'),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();

        _$failedField = 'instanceIds';
        _instanceIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeClassicLinkInstancesRequest',
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
