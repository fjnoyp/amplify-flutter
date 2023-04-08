// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.cancel_spot_fleet_requests_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CancelSpotFleetRequestsResponse
    extends CancelSpotFleetRequestsResponse {
  @override
  final _i4.BuiltList<_i2.CancelSpotFleetRequestsSuccessItem>?
      successfulFleetRequests;
  @override
  final _i4.BuiltList<_i3.CancelSpotFleetRequestsErrorItem>?
      unsuccessfulFleetRequests;

  factory _$CancelSpotFleetRequestsResponse(
          [void Function(CancelSpotFleetRequestsResponseBuilder)? updates]) =>
      (new CancelSpotFleetRequestsResponseBuilder()..update(updates))._build();

  _$CancelSpotFleetRequestsResponse._(
      {this.successfulFleetRequests, this.unsuccessfulFleetRequests})
      : super._();

  @override
  CancelSpotFleetRequestsResponse rebuild(
          void Function(CancelSpotFleetRequestsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CancelSpotFleetRequestsResponseBuilder toBuilder() =>
      new CancelSpotFleetRequestsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CancelSpotFleetRequestsResponse &&
        successfulFleetRequests == other.successfulFleetRequests &&
        unsuccessfulFleetRequests == other.unsuccessfulFleetRequests;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, successfulFleetRequests.hashCode);
    _$hash = $jc(_$hash, unsuccessfulFleetRequests.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CancelSpotFleetRequestsResponseBuilder
    implements
        Builder<CancelSpotFleetRequestsResponse,
            CancelSpotFleetRequestsResponseBuilder> {
  _$CancelSpotFleetRequestsResponse? _$v;

  _i4.ListBuilder<_i2.CancelSpotFleetRequestsSuccessItem>?
      _successfulFleetRequests;
  _i4.ListBuilder<_i2.CancelSpotFleetRequestsSuccessItem>
      get successfulFleetRequests => _$this._successfulFleetRequests ??=
          new _i4.ListBuilder<_i2.CancelSpotFleetRequestsSuccessItem>();
  set successfulFleetRequests(
          _i4.ListBuilder<_i2.CancelSpotFleetRequestsSuccessItem>?
              successfulFleetRequests) =>
      _$this._successfulFleetRequests = successfulFleetRequests;

  _i4.ListBuilder<_i3.CancelSpotFleetRequestsErrorItem>?
      _unsuccessfulFleetRequests;
  _i4.ListBuilder<_i3.CancelSpotFleetRequestsErrorItem>
      get unsuccessfulFleetRequests => _$this._unsuccessfulFleetRequests ??=
          new _i4.ListBuilder<_i3.CancelSpotFleetRequestsErrorItem>();
  set unsuccessfulFleetRequests(
          _i4.ListBuilder<_i3.CancelSpotFleetRequestsErrorItem>?
              unsuccessfulFleetRequests) =>
      _$this._unsuccessfulFleetRequests = unsuccessfulFleetRequests;

  CancelSpotFleetRequestsResponseBuilder() {
    CancelSpotFleetRequestsResponse._init(this);
  }

  CancelSpotFleetRequestsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _successfulFleetRequests = $v.successfulFleetRequests?.toBuilder();
      _unsuccessfulFleetRequests = $v.unsuccessfulFleetRequests?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CancelSpotFleetRequestsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CancelSpotFleetRequestsResponse;
  }

  @override
  void update(void Function(CancelSpotFleetRequestsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CancelSpotFleetRequestsResponse build() => _build();

  _$CancelSpotFleetRequestsResponse _build() {
    _$CancelSpotFleetRequestsResponse _$result;
    try {
      _$result = _$v ??
          new _$CancelSpotFleetRequestsResponse._(
              successfulFleetRequests: _successfulFleetRequests?.build(),
              unsuccessfulFleetRequests: _unsuccessfulFleetRequests?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'successfulFleetRequests';
        _successfulFleetRequests?.build();
        _$failedField = 'unsuccessfulFleetRequests';
        _unsuccessfulFleetRequests?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CancelSpotFleetRequestsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
