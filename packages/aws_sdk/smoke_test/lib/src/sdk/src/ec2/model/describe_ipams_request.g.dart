// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.describe_ipams_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeIpamsRequest extends DescribeIpamsRequest {
  @override
  final bool dryRun;
  @override
  final _i4.BuiltList<_i3.Filter>? filters;
  @override
  final int maxResults;
  @override
  final String? nextToken;
  @override
  final _i4.BuiltList<String>? ipamIds;

  factory _$DescribeIpamsRequest(
          [void Function(DescribeIpamsRequestBuilder)? updates]) =>
      (new DescribeIpamsRequestBuilder()..update(updates))._build();

  _$DescribeIpamsRequest._(
      {required this.dryRun,
      this.filters,
      required this.maxResults,
      this.nextToken,
      this.ipamIds})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeIpamsRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeIpamsRequest', 'maxResults');
  }

  @override
  DescribeIpamsRequest rebuild(
          void Function(DescribeIpamsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeIpamsRequestBuilder toBuilder() =>
      new DescribeIpamsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeIpamsRequest &&
        dryRun == other.dryRun &&
        filters == other.filters &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken &&
        ipamIds == other.ipamIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, ipamIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeIpamsRequestBuilder
    implements Builder<DescribeIpamsRequest, DescribeIpamsRequestBuilder> {
  _$DescribeIpamsRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

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

  _i4.ListBuilder<String>? _ipamIds;
  _i4.ListBuilder<String> get ipamIds =>
      _$this._ipamIds ??= new _i4.ListBuilder<String>();
  set ipamIds(_i4.ListBuilder<String>? ipamIds) => _$this._ipamIds = ipamIds;

  DescribeIpamsRequestBuilder() {
    DescribeIpamsRequest._init(this);
  }

  DescribeIpamsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _filters = $v.filters?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _ipamIds = $v.ipamIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeIpamsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeIpamsRequest;
  }

  @override
  void update(void Function(DescribeIpamsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeIpamsRequest build() => _build();

  _$DescribeIpamsRequest _build() {
    _$DescribeIpamsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeIpamsRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeIpamsRequest', 'dryRun'),
              filters: _filters?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults, r'DescribeIpamsRequest', 'maxResults'),
              nextToken: nextToken,
              ipamIds: _ipamIds?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();

        _$failedField = 'ipamIds';
        _ipamIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeIpamsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
