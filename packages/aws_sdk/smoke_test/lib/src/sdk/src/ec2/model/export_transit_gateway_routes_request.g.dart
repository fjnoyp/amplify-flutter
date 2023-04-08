// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.export_transit_gateway_routes_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExportTransitGatewayRoutesRequest
    extends ExportTransitGatewayRoutesRequest {
  @override
  final String transitGatewayRouteTableId;
  @override
  final _i4.BuiltList<_i3.Filter>? filters;
  @override
  final String s3Bucket;
  @override
  final bool dryRun;

  factory _$ExportTransitGatewayRoutesRequest(
          [void Function(ExportTransitGatewayRoutesRequestBuilder)? updates]) =>
      (new ExportTransitGatewayRoutesRequestBuilder()..update(updates))
          ._build();

  _$ExportTransitGatewayRoutesRequest._(
      {required this.transitGatewayRouteTableId,
      this.filters,
      required this.s3Bucket,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(transitGatewayRouteTableId,
        r'ExportTransitGatewayRoutesRequest', 'transitGatewayRouteTableId');
    BuiltValueNullFieldError.checkNotNull(
        s3Bucket, r'ExportTransitGatewayRoutesRequest', 's3Bucket');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ExportTransitGatewayRoutesRequest', 'dryRun');
  }

  @override
  ExportTransitGatewayRoutesRequest rebuild(
          void Function(ExportTransitGatewayRoutesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExportTransitGatewayRoutesRequestBuilder toBuilder() =>
      new ExportTransitGatewayRoutesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExportTransitGatewayRoutesRequest &&
        transitGatewayRouteTableId == other.transitGatewayRouteTableId &&
        filters == other.filters &&
        s3Bucket == other.s3Bucket &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayRouteTableId.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, s3Bucket.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ExportTransitGatewayRoutesRequestBuilder
    implements
        Builder<ExportTransitGatewayRoutesRequest,
            ExportTransitGatewayRoutesRequestBuilder> {
  _$ExportTransitGatewayRoutesRequest? _$v;

  String? _transitGatewayRouteTableId;
  String? get transitGatewayRouteTableId => _$this._transitGatewayRouteTableId;
  set transitGatewayRouteTableId(String? transitGatewayRouteTableId) =>
      _$this._transitGatewayRouteTableId = transitGatewayRouteTableId;

  _i4.ListBuilder<_i3.Filter>? _filters;
  _i4.ListBuilder<_i3.Filter> get filters =>
      _$this._filters ??= new _i4.ListBuilder<_i3.Filter>();
  set filters(_i4.ListBuilder<_i3.Filter>? filters) =>
      _$this._filters = filters;

  String? _s3Bucket;
  String? get s3Bucket => _$this._s3Bucket;
  set s3Bucket(String? s3Bucket) => _$this._s3Bucket = s3Bucket;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  ExportTransitGatewayRoutesRequestBuilder() {
    ExportTransitGatewayRoutesRequest._init(this);
  }

  ExportTransitGatewayRoutesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayRouteTableId = $v.transitGatewayRouteTableId;
      _filters = $v.filters?.toBuilder();
      _s3Bucket = $v.s3Bucket;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExportTransitGatewayRoutesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExportTransitGatewayRoutesRequest;
  }

  @override
  void update(
      void Function(ExportTransitGatewayRoutesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExportTransitGatewayRoutesRequest build() => _build();

  _$ExportTransitGatewayRoutesRequest _build() {
    _$ExportTransitGatewayRoutesRequest _$result;
    try {
      _$result = _$v ??
          new _$ExportTransitGatewayRoutesRequest._(
              transitGatewayRouteTableId: BuiltValueNullFieldError.checkNotNull(
                  transitGatewayRouteTableId,
                  r'ExportTransitGatewayRoutesRequest',
                  'transitGatewayRouteTableId'),
              filters: _filters?.build(),
              s3Bucket: BuiltValueNullFieldError.checkNotNull(
                  s3Bucket, r'ExportTransitGatewayRoutesRequest', 's3Bucket'),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'ExportTransitGatewayRoutesRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ExportTransitGatewayRoutesRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
