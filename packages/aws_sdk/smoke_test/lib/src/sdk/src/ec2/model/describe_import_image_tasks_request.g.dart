// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.describe_import_image_tasks_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeImportImageTasksRequest
    extends DescribeImportImageTasksRequest {
  @override
  final bool dryRun;
  @override
  final _i4.BuiltList<_i3.Filter>? filters;
  @override
  final _i4.BuiltList<String>? importTaskIds;
  @override
  final int maxResults;
  @override
  final String? nextToken;

  factory _$DescribeImportImageTasksRequest(
          [void Function(DescribeImportImageTasksRequestBuilder)? updates]) =>
      (new DescribeImportImageTasksRequestBuilder()..update(updates))._build();

  _$DescribeImportImageTasksRequest._(
      {required this.dryRun,
      this.filters,
      this.importTaskIds,
      required this.maxResults,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeImportImageTasksRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeImportImageTasksRequest', 'maxResults');
  }

  @override
  DescribeImportImageTasksRequest rebuild(
          void Function(DescribeImportImageTasksRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeImportImageTasksRequestBuilder toBuilder() =>
      new DescribeImportImageTasksRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeImportImageTasksRequest &&
        dryRun == other.dryRun &&
        filters == other.filters &&
        importTaskIds == other.importTaskIds &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, importTaskIds.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeImportImageTasksRequestBuilder
    implements
        Builder<DescribeImportImageTasksRequest,
            DescribeImportImageTasksRequestBuilder> {
  _$DescribeImportImageTasksRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i4.ListBuilder<_i3.Filter>? _filters;
  _i4.ListBuilder<_i3.Filter> get filters =>
      _$this._filters ??= new _i4.ListBuilder<_i3.Filter>();
  set filters(_i4.ListBuilder<_i3.Filter>? filters) =>
      _$this._filters = filters;

  _i4.ListBuilder<String>? _importTaskIds;
  _i4.ListBuilder<String> get importTaskIds =>
      _$this._importTaskIds ??= new _i4.ListBuilder<String>();
  set importTaskIds(_i4.ListBuilder<String>? importTaskIds) =>
      _$this._importTaskIds = importTaskIds;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeImportImageTasksRequestBuilder() {
    DescribeImportImageTasksRequest._init(this);
  }

  DescribeImportImageTasksRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _filters = $v.filters?.toBuilder();
      _importTaskIds = $v.importTaskIds?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeImportImageTasksRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeImportImageTasksRequest;
  }

  @override
  void update(void Function(DescribeImportImageTasksRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeImportImageTasksRequest build() => _build();

  _$DescribeImportImageTasksRequest _build() {
    _$DescribeImportImageTasksRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeImportImageTasksRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeImportImageTasksRequest', 'dryRun'),
              filters: _filters?.build(),
              importTaskIds: _importTaskIds?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults, r'DescribeImportImageTasksRequest', 'maxResults'),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
        _$failedField = 'importTaskIds';
        _importTaskIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeImportImageTasksRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
