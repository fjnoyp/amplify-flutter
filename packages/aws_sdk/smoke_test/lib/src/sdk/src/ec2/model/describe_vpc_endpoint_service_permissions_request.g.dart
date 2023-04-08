// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.describe_vpc_endpoint_service_permissions_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeVpcEndpointServicePermissionsRequest
    extends DescribeVpcEndpointServicePermissionsRequest {
  @override
  final bool dryRun;
  @override
  final String serviceId;
  @override
  final _i4.BuiltList<_i3.Filter>? filters;
  @override
  final int maxResults;
  @override
  final String? nextToken;

  factory _$DescribeVpcEndpointServicePermissionsRequest(
          [void Function(DescribeVpcEndpointServicePermissionsRequestBuilder)?
              updates]) =>
      (new DescribeVpcEndpointServicePermissionsRequestBuilder()
            ..update(updates))
          ._build();

  _$DescribeVpcEndpointServicePermissionsRequest._(
      {required this.dryRun,
      required this.serviceId,
      this.filters,
      required this.maxResults,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeVpcEndpointServicePermissionsRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(serviceId,
        r'DescribeVpcEndpointServicePermissionsRequest', 'serviceId');
    BuiltValueNullFieldError.checkNotNull(maxResults,
        r'DescribeVpcEndpointServicePermissionsRequest', 'maxResults');
  }

  @override
  DescribeVpcEndpointServicePermissionsRequest rebuild(
          void Function(DescribeVpcEndpointServicePermissionsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeVpcEndpointServicePermissionsRequestBuilder toBuilder() =>
      new DescribeVpcEndpointServicePermissionsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeVpcEndpointServicePermissionsRequest &&
        dryRun == other.dryRun &&
        serviceId == other.serviceId &&
        filters == other.filters &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, serviceId.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeVpcEndpointServicePermissionsRequestBuilder
    implements
        Builder<DescribeVpcEndpointServicePermissionsRequest,
            DescribeVpcEndpointServicePermissionsRequestBuilder> {
  _$DescribeVpcEndpointServicePermissionsRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _serviceId;
  String? get serviceId => _$this._serviceId;
  set serviceId(String? serviceId) => _$this._serviceId = serviceId;

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

  DescribeVpcEndpointServicePermissionsRequestBuilder() {
    DescribeVpcEndpointServicePermissionsRequest._init(this);
  }

  DescribeVpcEndpointServicePermissionsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _serviceId = $v.serviceId;
      _filters = $v.filters?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeVpcEndpointServicePermissionsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeVpcEndpointServicePermissionsRequest;
  }

  @override
  void update(
      void Function(DescribeVpcEndpointServicePermissionsRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeVpcEndpointServicePermissionsRequest build() => _build();

  _$DescribeVpcEndpointServicePermissionsRequest _build() {
    _$DescribeVpcEndpointServicePermissionsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeVpcEndpointServicePermissionsRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                  r'DescribeVpcEndpointServicePermissionsRequest', 'dryRun'),
              serviceId: BuiltValueNullFieldError.checkNotNull(serviceId,
                  r'DescribeVpcEndpointServicePermissionsRequest', 'serviceId'),
              filters: _filters?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults,
                  r'DescribeVpcEndpointServicePermissionsRequest',
                  'maxResults'),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeVpcEndpointServicePermissionsRequest',
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
