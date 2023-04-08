// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.describe_vpc_peering_connections_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeVpcPeeringConnectionsRequest
    extends DescribeVpcPeeringConnectionsRequest {
  @override
  final _i4.BuiltList<_i3.Filter>? filters;
  @override
  final bool dryRun;
  @override
  final _i4.BuiltList<String>? vpcPeeringConnectionIds;
  @override
  final String? nextToken;
  @override
  final int maxResults;

  factory _$DescribeVpcPeeringConnectionsRequest(
          [void Function(DescribeVpcPeeringConnectionsRequestBuilder)?
              updates]) =>
      (new DescribeVpcPeeringConnectionsRequestBuilder()..update(updates))
          ._build();

  _$DescribeVpcPeeringConnectionsRequest._(
      {this.filters,
      required this.dryRun,
      this.vpcPeeringConnectionIds,
      this.nextToken,
      required this.maxResults})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeVpcPeeringConnectionsRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeVpcPeeringConnectionsRequest', 'maxResults');
  }

  @override
  DescribeVpcPeeringConnectionsRequest rebuild(
          void Function(DescribeVpcPeeringConnectionsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeVpcPeeringConnectionsRequestBuilder toBuilder() =>
      new DescribeVpcPeeringConnectionsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeVpcPeeringConnectionsRequest &&
        filters == other.filters &&
        dryRun == other.dryRun &&
        vpcPeeringConnectionIds == other.vpcPeeringConnectionIds &&
        nextToken == other.nextToken &&
        maxResults == other.maxResults;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, vpcPeeringConnectionIds.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeVpcPeeringConnectionsRequestBuilder
    implements
        Builder<DescribeVpcPeeringConnectionsRequest,
            DescribeVpcPeeringConnectionsRequestBuilder> {
  _$DescribeVpcPeeringConnectionsRequest? _$v;

  _i4.ListBuilder<_i3.Filter>? _filters;
  _i4.ListBuilder<_i3.Filter> get filters =>
      _$this._filters ??= new _i4.ListBuilder<_i3.Filter>();
  set filters(_i4.ListBuilder<_i3.Filter>? filters) =>
      _$this._filters = filters;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i4.ListBuilder<String>? _vpcPeeringConnectionIds;
  _i4.ListBuilder<String> get vpcPeeringConnectionIds =>
      _$this._vpcPeeringConnectionIds ??= new _i4.ListBuilder<String>();
  set vpcPeeringConnectionIds(
          _i4.ListBuilder<String>? vpcPeeringConnectionIds) =>
      _$this._vpcPeeringConnectionIds = vpcPeeringConnectionIds;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  DescribeVpcPeeringConnectionsRequestBuilder() {
    DescribeVpcPeeringConnectionsRequest._init(this);
  }

  DescribeVpcPeeringConnectionsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filters = $v.filters?.toBuilder();
      _dryRun = $v.dryRun;
      _vpcPeeringConnectionIds = $v.vpcPeeringConnectionIds?.toBuilder();
      _nextToken = $v.nextToken;
      _maxResults = $v.maxResults;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeVpcPeeringConnectionsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeVpcPeeringConnectionsRequest;
  }

  @override
  void update(
      void Function(DescribeVpcPeeringConnectionsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeVpcPeeringConnectionsRequest build() => _build();

  _$DescribeVpcPeeringConnectionsRequest _build() {
    _$DescribeVpcPeeringConnectionsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeVpcPeeringConnectionsRequest._(
              filters: _filters?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeVpcPeeringConnectionsRequest', 'dryRun'),
              vpcPeeringConnectionIds: _vpcPeeringConnectionIds?.build(),
              nextToken: nextToken,
              maxResults: BuiltValueNullFieldError.checkNotNull(maxResults,
                  r'DescribeVpcPeeringConnectionsRequest', 'maxResults'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();

        _$failedField = 'vpcPeeringConnectionIds';
        _vpcPeeringConnectionIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeVpcPeeringConnectionsRequest',
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
