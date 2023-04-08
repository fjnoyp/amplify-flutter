// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.describe_local_gateway_virtual_interfaces_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeLocalGatewayVirtualInterfacesRequest
    extends DescribeLocalGatewayVirtualInterfacesRequest {
  @override
  final _i4.BuiltList<String>? localGatewayVirtualInterfaceIds;
  @override
  final _i4.BuiltList<_i3.Filter>? filters;
  @override
  final int maxResults;
  @override
  final String? nextToken;
  @override
  final bool dryRun;

  factory _$DescribeLocalGatewayVirtualInterfacesRequest(
          [void Function(DescribeLocalGatewayVirtualInterfacesRequestBuilder)?
              updates]) =>
      (new DescribeLocalGatewayVirtualInterfacesRequestBuilder()
            ..update(updates))
          ._build();

  _$DescribeLocalGatewayVirtualInterfacesRequest._(
      {this.localGatewayVirtualInterfaceIds,
      this.filters,
      required this.maxResults,
      this.nextToken,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(maxResults,
        r'DescribeLocalGatewayVirtualInterfacesRequest', 'maxResults');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeLocalGatewayVirtualInterfacesRequest', 'dryRun');
  }

  @override
  DescribeLocalGatewayVirtualInterfacesRequest rebuild(
          void Function(DescribeLocalGatewayVirtualInterfacesRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeLocalGatewayVirtualInterfacesRequestBuilder toBuilder() =>
      new DescribeLocalGatewayVirtualInterfacesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeLocalGatewayVirtualInterfacesRequest &&
        localGatewayVirtualInterfaceIds ==
            other.localGatewayVirtualInterfaceIds &&
        filters == other.filters &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, localGatewayVirtualInterfaceIds.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeLocalGatewayVirtualInterfacesRequestBuilder
    implements
        Builder<DescribeLocalGatewayVirtualInterfacesRequest,
            DescribeLocalGatewayVirtualInterfacesRequestBuilder> {
  _$DescribeLocalGatewayVirtualInterfacesRequest? _$v;

  _i4.ListBuilder<String>? _localGatewayVirtualInterfaceIds;
  _i4.ListBuilder<String> get localGatewayVirtualInterfaceIds =>
      _$this._localGatewayVirtualInterfaceIds ??= new _i4.ListBuilder<String>();
  set localGatewayVirtualInterfaceIds(
          _i4.ListBuilder<String>? localGatewayVirtualInterfaceIds) =>
      _$this._localGatewayVirtualInterfaceIds = localGatewayVirtualInterfaceIds;

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

  DescribeLocalGatewayVirtualInterfacesRequestBuilder() {
    DescribeLocalGatewayVirtualInterfacesRequest._init(this);
  }

  DescribeLocalGatewayVirtualInterfacesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _localGatewayVirtualInterfaceIds =
          $v.localGatewayVirtualInterfaceIds?.toBuilder();
      _filters = $v.filters?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeLocalGatewayVirtualInterfacesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeLocalGatewayVirtualInterfacesRequest;
  }

  @override
  void update(
      void Function(DescribeLocalGatewayVirtualInterfacesRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeLocalGatewayVirtualInterfacesRequest build() => _build();

  _$DescribeLocalGatewayVirtualInterfacesRequest _build() {
    _$DescribeLocalGatewayVirtualInterfacesRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeLocalGatewayVirtualInterfacesRequest._(
              localGatewayVirtualInterfaceIds:
                  _localGatewayVirtualInterfaceIds?.build(),
              filters: _filters?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults,
                  r'DescribeLocalGatewayVirtualInterfacesRequest',
                  'maxResults'),
              nextToken: nextToken,
              dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                  r'DescribeLocalGatewayVirtualInterfacesRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'localGatewayVirtualInterfaceIds';
        _localGatewayVirtualInterfaceIds?.build();
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeLocalGatewayVirtualInterfacesRequest',
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
