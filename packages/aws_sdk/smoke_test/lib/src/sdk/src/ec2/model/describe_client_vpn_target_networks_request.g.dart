// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.describe_client_vpn_target_networks_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeClientVpnTargetNetworksRequest
    extends DescribeClientVpnTargetNetworksRequest {
  @override
  final String clientVpnEndpointId;
  @override
  final _i4.BuiltList<String>? associationIds;
  @override
  final int maxResults;
  @override
  final String? nextToken;
  @override
  final _i4.BuiltList<_i3.Filter>? filters;
  @override
  final bool dryRun;

  factory _$DescribeClientVpnTargetNetworksRequest(
          [void Function(DescribeClientVpnTargetNetworksRequestBuilder)?
              updates]) =>
      (new DescribeClientVpnTargetNetworksRequestBuilder()..update(updates))
          ._build();

  _$DescribeClientVpnTargetNetworksRequest._(
      {required this.clientVpnEndpointId,
      this.associationIds,
      required this.maxResults,
      this.nextToken,
      this.filters,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(clientVpnEndpointId,
        r'DescribeClientVpnTargetNetworksRequest', 'clientVpnEndpointId');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeClientVpnTargetNetworksRequest', 'maxResults');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeClientVpnTargetNetworksRequest', 'dryRun');
  }

  @override
  DescribeClientVpnTargetNetworksRequest rebuild(
          void Function(DescribeClientVpnTargetNetworksRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeClientVpnTargetNetworksRequestBuilder toBuilder() =>
      new DescribeClientVpnTargetNetworksRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeClientVpnTargetNetworksRequest &&
        clientVpnEndpointId == other.clientVpnEndpointId &&
        associationIds == other.associationIds &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken &&
        filters == other.filters &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientVpnEndpointId.hashCode);
    _$hash = $jc(_$hash, associationIds.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeClientVpnTargetNetworksRequestBuilder
    implements
        Builder<DescribeClientVpnTargetNetworksRequest,
            DescribeClientVpnTargetNetworksRequestBuilder> {
  _$DescribeClientVpnTargetNetworksRequest? _$v;

  String? _clientVpnEndpointId;
  String? get clientVpnEndpointId => _$this._clientVpnEndpointId;
  set clientVpnEndpointId(String? clientVpnEndpointId) =>
      _$this._clientVpnEndpointId = clientVpnEndpointId;

  _i4.ListBuilder<String>? _associationIds;
  _i4.ListBuilder<String> get associationIds =>
      _$this._associationIds ??= new _i4.ListBuilder<String>();
  set associationIds(_i4.ListBuilder<String>? associationIds) =>
      _$this._associationIds = associationIds;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i4.ListBuilder<_i3.Filter>? _filters;
  _i4.ListBuilder<_i3.Filter> get filters =>
      _$this._filters ??= new _i4.ListBuilder<_i3.Filter>();
  set filters(_i4.ListBuilder<_i3.Filter>? filters) =>
      _$this._filters = filters;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DescribeClientVpnTargetNetworksRequestBuilder() {
    DescribeClientVpnTargetNetworksRequest._init(this);
  }

  DescribeClientVpnTargetNetworksRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientVpnEndpointId = $v.clientVpnEndpointId;
      _associationIds = $v.associationIds?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _filters = $v.filters?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeClientVpnTargetNetworksRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeClientVpnTargetNetworksRequest;
  }

  @override
  void update(
      void Function(DescribeClientVpnTargetNetworksRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeClientVpnTargetNetworksRequest build() => _build();

  _$DescribeClientVpnTargetNetworksRequest _build() {
    _$DescribeClientVpnTargetNetworksRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeClientVpnTargetNetworksRequest._(
              clientVpnEndpointId: BuiltValueNullFieldError.checkNotNull(
                  clientVpnEndpointId,
                  r'DescribeClientVpnTargetNetworksRequest',
                  'clientVpnEndpointId'),
              associationIds: _associationIds?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(maxResults,
                  r'DescribeClientVpnTargetNetworksRequest', 'maxResults'),
              nextToken: nextToken,
              filters: _filters?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeClientVpnTargetNetworksRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'associationIds';
        _associationIds?.build();

        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeClientVpnTargetNetworksRequest',
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
