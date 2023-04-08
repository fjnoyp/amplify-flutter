// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.describe_client_vpn_authorization_rules_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeClientVpnAuthorizationRulesRequest
    extends DescribeClientVpnAuthorizationRulesRequest {
  @override
  final String clientVpnEndpointId;
  @override
  final bool dryRun;
  @override
  final String? nextToken;
  @override
  final _i4.BuiltList<_i3.Filter>? filters;
  @override
  final int maxResults;

  factory _$DescribeClientVpnAuthorizationRulesRequest(
          [void Function(DescribeClientVpnAuthorizationRulesRequestBuilder)?
              updates]) =>
      (new DescribeClientVpnAuthorizationRulesRequestBuilder()..update(updates))
          ._build();

  _$DescribeClientVpnAuthorizationRulesRequest._(
      {required this.clientVpnEndpointId,
      required this.dryRun,
      this.nextToken,
      this.filters,
      required this.maxResults})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(clientVpnEndpointId,
        r'DescribeClientVpnAuthorizationRulesRequest', 'clientVpnEndpointId');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeClientVpnAuthorizationRulesRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(maxResults,
        r'DescribeClientVpnAuthorizationRulesRequest', 'maxResults');
  }

  @override
  DescribeClientVpnAuthorizationRulesRequest rebuild(
          void Function(DescribeClientVpnAuthorizationRulesRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeClientVpnAuthorizationRulesRequestBuilder toBuilder() =>
      new DescribeClientVpnAuthorizationRulesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeClientVpnAuthorizationRulesRequest &&
        clientVpnEndpointId == other.clientVpnEndpointId &&
        dryRun == other.dryRun &&
        nextToken == other.nextToken &&
        filters == other.filters &&
        maxResults == other.maxResults;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientVpnEndpointId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeClientVpnAuthorizationRulesRequestBuilder
    implements
        Builder<DescribeClientVpnAuthorizationRulesRequest,
            DescribeClientVpnAuthorizationRulesRequestBuilder> {
  _$DescribeClientVpnAuthorizationRulesRequest? _$v;

  String? _clientVpnEndpointId;
  String? get clientVpnEndpointId => _$this._clientVpnEndpointId;
  set clientVpnEndpointId(String? clientVpnEndpointId) =>
      _$this._clientVpnEndpointId = clientVpnEndpointId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i4.ListBuilder<_i3.Filter>? _filters;
  _i4.ListBuilder<_i3.Filter> get filters =>
      _$this._filters ??= new _i4.ListBuilder<_i3.Filter>();
  set filters(_i4.ListBuilder<_i3.Filter>? filters) =>
      _$this._filters = filters;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  DescribeClientVpnAuthorizationRulesRequestBuilder() {
    DescribeClientVpnAuthorizationRulesRequest._init(this);
  }

  DescribeClientVpnAuthorizationRulesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientVpnEndpointId = $v.clientVpnEndpointId;
      _dryRun = $v.dryRun;
      _nextToken = $v.nextToken;
      _filters = $v.filters?.toBuilder();
      _maxResults = $v.maxResults;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeClientVpnAuthorizationRulesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeClientVpnAuthorizationRulesRequest;
  }

  @override
  void update(
      void Function(DescribeClientVpnAuthorizationRulesRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeClientVpnAuthorizationRulesRequest build() => _build();

  _$DescribeClientVpnAuthorizationRulesRequest _build() {
    _$DescribeClientVpnAuthorizationRulesRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeClientVpnAuthorizationRulesRequest._(
              clientVpnEndpointId: BuiltValueNullFieldError.checkNotNull(
                  clientVpnEndpointId,
                  r'DescribeClientVpnAuthorizationRulesRequest',
                  'clientVpnEndpointId'),
              dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                  r'DescribeClientVpnAuthorizationRulesRequest', 'dryRun'),
              nextToken: nextToken,
              filters: _filters?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(maxResults,
                  r'DescribeClientVpnAuthorizationRulesRequest', 'maxResults'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeClientVpnAuthorizationRulesRequest',
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
