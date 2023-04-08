// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.describe_local_gateway_route_table_vpc_associations_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeLocalGatewayRouteTableVpcAssociationsRequest
    extends DescribeLocalGatewayRouteTableVpcAssociationsRequest {
  @override
  final _i4.BuiltList<String>? localGatewayRouteTableVpcAssociationIds;
  @override
  final _i4.BuiltList<_i3.Filter>? filters;
  @override
  final int maxResults;
  @override
  final String? nextToken;
  @override
  final bool dryRun;

  factory _$DescribeLocalGatewayRouteTableVpcAssociationsRequest(
          [void Function(
                  DescribeLocalGatewayRouteTableVpcAssociationsRequestBuilder)?
              updates]) =>
      (new DescribeLocalGatewayRouteTableVpcAssociationsRequestBuilder()
            ..update(updates))
          ._build();

  _$DescribeLocalGatewayRouteTableVpcAssociationsRequest._(
      {this.localGatewayRouteTableVpcAssociationIds,
      this.filters,
      required this.maxResults,
      this.nextToken,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(maxResults,
        r'DescribeLocalGatewayRouteTableVpcAssociationsRequest', 'maxResults');
    BuiltValueNullFieldError.checkNotNull(dryRun,
        r'DescribeLocalGatewayRouteTableVpcAssociationsRequest', 'dryRun');
  }

  @override
  DescribeLocalGatewayRouteTableVpcAssociationsRequest rebuild(
          void Function(
                  DescribeLocalGatewayRouteTableVpcAssociationsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeLocalGatewayRouteTableVpcAssociationsRequestBuilder toBuilder() =>
      new DescribeLocalGatewayRouteTableVpcAssociationsRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeLocalGatewayRouteTableVpcAssociationsRequest &&
        localGatewayRouteTableVpcAssociationIds ==
            other.localGatewayRouteTableVpcAssociationIds &&
        filters == other.filters &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, localGatewayRouteTableVpcAssociationIds.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeLocalGatewayRouteTableVpcAssociationsRequestBuilder
    implements
        Builder<DescribeLocalGatewayRouteTableVpcAssociationsRequest,
            DescribeLocalGatewayRouteTableVpcAssociationsRequestBuilder> {
  _$DescribeLocalGatewayRouteTableVpcAssociationsRequest? _$v;

  _i4.ListBuilder<String>? _localGatewayRouteTableVpcAssociationIds;
  _i4.ListBuilder<String> get localGatewayRouteTableVpcAssociationIds =>
      _$this._localGatewayRouteTableVpcAssociationIds ??=
          new _i4.ListBuilder<String>();
  set localGatewayRouteTableVpcAssociationIds(
          _i4.ListBuilder<String>? localGatewayRouteTableVpcAssociationIds) =>
      _$this._localGatewayRouteTableVpcAssociationIds =
          localGatewayRouteTableVpcAssociationIds;

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

  DescribeLocalGatewayRouteTableVpcAssociationsRequestBuilder() {
    DescribeLocalGatewayRouteTableVpcAssociationsRequest._init(this);
  }

  DescribeLocalGatewayRouteTableVpcAssociationsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _localGatewayRouteTableVpcAssociationIds =
          $v.localGatewayRouteTableVpcAssociationIds?.toBuilder();
      _filters = $v.filters?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeLocalGatewayRouteTableVpcAssociationsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeLocalGatewayRouteTableVpcAssociationsRequest;
  }

  @override
  void update(
      void Function(
              DescribeLocalGatewayRouteTableVpcAssociationsRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeLocalGatewayRouteTableVpcAssociationsRequest build() => _build();

  _$DescribeLocalGatewayRouteTableVpcAssociationsRequest _build() {
    _$DescribeLocalGatewayRouteTableVpcAssociationsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeLocalGatewayRouteTableVpcAssociationsRequest._(
              localGatewayRouteTableVpcAssociationIds:
                  _localGatewayRouteTableVpcAssociationIds?.build(),
              filters: _filters?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults,
                  r'DescribeLocalGatewayRouteTableVpcAssociationsRequest',
                  'maxResults'),
              nextToken: nextToken,
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun,
                  r'DescribeLocalGatewayRouteTableVpcAssociationsRequest',
                  'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'localGatewayRouteTableVpcAssociationIds';
        _localGatewayRouteTableVpcAssociationIds?.build();
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeLocalGatewayRouteTableVpcAssociationsRequest',
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
