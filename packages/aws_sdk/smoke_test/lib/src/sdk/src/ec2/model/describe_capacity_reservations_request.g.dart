// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.describe_capacity_reservations_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeCapacityReservationsRequest
    extends DescribeCapacityReservationsRequest {
  @override
  final _i4.BuiltList<String>? capacityReservationIds;
  @override
  final String? nextToken;
  @override
  final int maxResults;
  @override
  final _i4.BuiltList<_i3.Filter>? filters;
  @override
  final bool dryRun;

  factory _$DescribeCapacityReservationsRequest(
          [void Function(DescribeCapacityReservationsRequestBuilder)?
              updates]) =>
      (new DescribeCapacityReservationsRequestBuilder()..update(updates))
          ._build();

  _$DescribeCapacityReservationsRequest._(
      {this.capacityReservationIds,
      this.nextToken,
      required this.maxResults,
      this.filters,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeCapacityReservationsRequest', 'maxResults');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeCapacityReservationsRequest', 'dryRun');
  }

  @override
  DescribeCapacityReservationsRequest rebuild(
          void Function(DescribeCapacityReservationsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeCapacityReservationsRequestBuilder toBuilder() =>
      new DescribeCapacityReservationsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeCapacityReservationsRequest &&
        capacityReservationIds == other.capacityReservationIds &&
        nextToken == other.nextToken &&
        maxResults == other.maxResults &&
        filters == other.filters &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, capacityReservationIds.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeCapacityReservationsRequestBuilder
    implements
        Builder<DescribeCapacityReservationsRequest,
            DescribeCapacityReservationsRequestBuilder> {
  _$DescribeCapacityReservationsRequest? _$v;

  _i4.ListBuilder<String>? _capacityReservationIds;
  _i4.ListBuilder<String> get capacityReservationIds =>
      _$this._capacityReservationIds ??= new _i4.ListBuilder<String>();
  set capacityReservationIds(_i4.ListBuilder<String>? capacityReservationIds) =>
      _$this._capacityReservationIds = capacityReservationIds;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  _i4.ListBuilder<_i3.Filter>? _filters;
  _i4.ListBuilder<_i3.Filter> get filters =>
      _$this._filters ??= new _i4.ListBuilder<_i3.Filter>();
  set filters(_i4.ListBuilder<_i3.Filter>? filters) =>
      _$this._filters = filters;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DescribeCapacityReservationsRequestBuilder() {
    DescribeCapacityReservationsRequest._init(this);
  }

  DescribeCapacityReservationsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _capacityReservationIds = $v.capacityReservationIds?.toBuilder();
      _nextToken = $v.nextToken;
      _maxResults = $v.maxResults;
      _filters = $v.filters?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeCapacityReservationsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeCapacityReservationsRequest;
  }

  @override
  void update(
      void Function(DescribeCapacityReservationsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeCapacityReservationsRequest build() => _build();

  _$DescribeCapacityReservationsRequest _build() {
    _$DescribeCapacityReservationsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeCapacityReservationsRequest._(
              capacityReservationIds: _capacityReservationIds?.build(),
              nextToken: nextToken,
              maxResults: BuiltValueNullFieldError.checkNotNull(maxResults,
                  r'DescribeCapacityReservationsRequest', 'maxResults'),
              filters: _filters?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeCapacityReservationsRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'capacityReservationIds';
        _capacityReservationIds?.build();

        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeCapacityReservationsRequest',
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
