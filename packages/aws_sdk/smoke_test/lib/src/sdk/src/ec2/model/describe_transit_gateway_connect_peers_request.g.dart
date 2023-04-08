// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.describe_transit_gateway_connect_peers_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeTransitGatewayConnectPeersRequest
    extends DescribeTransitGatewayConnectPeersRequest {
  @override
  final _i4.BuiltList<String>? transitGatewayConnectPeerIds;
  @override
  final _i4.BuiltList<_i3.Filter>? filters;
  @override
  final int maxResults;
  @override
  final String? nextToken;
  @override
  final bool dryRun;

  factory _$DescribeTransitGatewayConnectPeersRequest(
          [void Function(DescribeTransitGatewayConnectPeersRequestBuilder)?
              updates]) =>
      (new DescribeTransitGatewayConnectPeersRequestBuilder()..update(updates))
          ._build();

  _$DescribeTransitGatewayConnectPeersRequest._(
      {this.transitGatewayConnectPeerIds,
      this.filters,
      required this.maxResults,
      this.nextToken,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeTransitGatewayConnectPeersRequest', 'maxResults');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeTransitGatewayConnectPeersRequest', 'dryRun');
  }

  @override
  DescribeTransitGatewayConnectPeersRequest rebuild(
          void Function(DescribeTransitGatewayConnectPeersRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeTransitGatewayConnectPeersRequestBuilder toBuilder() =>
      new DescribeTransitGatewayConnectPeersRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeTransitGatewayConnectPeersRequest &&
        transitGatewayConnectPeerIds == other.transitGatewayConnectPeerIds &&
        filters == other.filters &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayConnectPeerIds.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeTransitGatewayConnectPeersRequestBuilder
    implements
        Builder<DescribeTransitGatewayConnectPeersRequest,
            DescribeTransitGatewayConnectPeersRequestBuilder> {
  _$DescribeTransitGatewayConnectPeersRequest? _$v;

  _i4.ListBuilder<String>? _transitGatewayConnectPeerIds;
  _i4.ListBuilder<String> get transitGatewayConnectPeerIds =>
      _$this._transitGatewayConnectPeerIds ??= new _i4.ListBuilder<String>();
  set transitGatewayConnectPeerIds(
          _i4.ListBuilder<String>? transitGatewayConnectPeerIds) =>
      _$this._transitGatewayConnectPeerIds = transitGatewayConnectPeerIds;

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

  DescribeTransitGatewayConnectPeersRequestBuilder() {
    DescribeTransitGatewayConnectPeersRequest._init(this);
  }

  DescribeTransitGatewayConnectPeersRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayConnectPeerIds =
          $v.transitGatewayConnectPeerIds?.toBuilder();
      _filters = $v.filters?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeTransitGatewayConnectPeersRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeTransitGatewayConnectPeersRequest;
  }

  @override
  void update(
      void Function(DescribeTransitGatewayConnectPeersRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeTransitGatewayConnectPeersRequest build() => _build();

  _$DescribeTransitGatewayConnectPeersRequest _build() {
    _$DescribeTransitGatewayConnectPeersRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeTransitGatewayConnectPeersRequest._(
              transitGatewayConnectPeerIds:
                  _transitGatewayConnectPeerIds?.build(),
              filters: _filters?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(maxResults,
                  r'DescribeTransitGatewayConnectPeersRequest', 'maxResults'),
              nextToken: nextToken,
              dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                  r'DescribeTransitGatewayConnectPeersRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transitGatewayConnectPeerIds';
        _transitGatewayConnectPeerIds?.build();
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeTransitGatewayConnectPeersRequest',
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
