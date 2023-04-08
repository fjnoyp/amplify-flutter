// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.describe_dhcp_options_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeDhcpOptionsRequest extends DescribeDhcpOptionsRequest {
  @override
  final _i4.BuiltList<String>? dhcpOptionsIds;
  @override
  final _i4.BuiltList<_i3.Filter>? filters;
  @override
  final bool dryRun;
  @override
  final String? nextToken;
  @override
  final int maxResults;

  factory _$DescribeDhcpOptionsRequest(
          [void Function(DescribeDhcpOptionsRequestBuilder)? updates]) =>
      (new DescribeDhcpOptionsRequestBuilder()..update(updates))._build();

  _$DescribeDhcpOptionsRequest._(
      {this.dhcpOptionsIds,
      this.filters,
      required this.dryRun,
      this.nextToken,
      required this.maxResults})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeDhcpOptionsRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeDhcpOptionsRequest', 'maxResults');
  }

  @override
  DescribeDhcpOptionsRequest rebuild(
          void Function(DescribeDhcpOptionsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeDhcpOptionsRequestBuilder toBuilder() =>
      new DescribeDhcpOptionsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeDhcpOptionsRequest &&
        dhcpOptionsIds == other.dhcpOptionsIds &&
        filters == other.filters &&
        dryRun == other.dryRun &&
        nextToken == other.nextToken &&
        maxResults == other.maxResults;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dhcpOptionsIds.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeDhcpOptionsRequestBuilder
    implements
        Builder<DescribeDhcpOptionsRequest, DescribeDhcpOptionsRequestBuilder> {
  _$DescribeDhcpOptionsRequest? _$v;

  _i4.ListBuilder<String>? _dhcpOptionsIds;
  _i4.ListBuilder<String> get dhcpOptionsIds =>
      _$this._dhcpOptionsIds ??= new _i4.ListBuilder<String>();
  set dhcpOptionsIds(_i4.ListBuilder<String>? dhcpOptionsIds) =>
      _$this._dhcpOptionsIds = dhcpOptionsIds;

  _i4.ListBuilder<_i3.Filter>? _filters;
  _i4.ListBuilder<_i3.Filter> get filters =>
      _$this._filters ??= new _i4.ListBuilder<_i3.Filter>();
  set filters(_i4.ListBuilder<_i3.Filter>? filters) =>
      _$this._filters = filters;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  DescribeDhcpOptionsRequestBuilder() {
    DescribeDhcpOptionsRequest._init(this);
  }

  DescribeDhcpOptionsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dhcpOptionsIds = $v.dhcpOptionsIds?.toBuilder();
      _filters = $v.filters?.toBuilder();
      _dryRun = $v.dryRun;
      _nextToken = $v.nextToken;
      _maxResults = $v.maxResults;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeDhcpOptionsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeDhcpOptionsRequest;
  }

  @override
  void update(void Function(DescribeDhcpOptionsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeDhcpOptionsRequest build() => _build();

  _$DescribeDhcpOptionsRequest _build() {
    _$DescribeDhcpOptionsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeDhcpOptionsRequest._(
              dhcpOptionsIds: _dhcpOptionsIds?.build(),
              filters: _filters?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeDhcpOptionsRequest', 'dryRun'),
              nextToken: nextToken,
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults, r'DescribeDhcpOptionsRequest', 'maxResults'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dhcpOptionsIds';
        _dhcpOptionsIds?.build();
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeDhcpOptionsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
