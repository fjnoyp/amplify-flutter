// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.cancel_spot_fleet_requests_success_item;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CancelSpotFleetRequestsSuccessItem
    extends CancelSpotFleetRequestsSuccessItem {
  @override
  final _i2.BatchState? currentSpotFleetRequestState;
  @override
  final _i2.BatchState? previousSpotFleetRequestState;
  @override
  final String? spotFleetRequestId;

  factory _$CancelSpotFleetRequestsSuccessItem(
          [void Function(CancelSpotFleetRequestsSuccessItemBuilder)?
              updates]) =>
      (new CancelSpotFleetRequestsSuccessItemBuilder()..update(updates))
          ._build();

  _$CancelSpotFleetRequestsSuccessItem._(
      {this.currentSpotFleetRequestState,
      this.previousSpotFleetRequestState,
      this.spotFleetRequestId})
      : super._();

  @override
  CancelSpotFleetRequestsSuccessItem rebuild(
          void Function(CancelSpotFleetRequestsSuccessItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CancelSpotFleetRequestsSuccessItemBuilder toBuilder() =>
      new CancelSpotFleetRequestsSuccessItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CancelSpotFleetRequestsSuccessItem &&
        currentSpotFleetRequestState == other.currentSpotFleetRequestState &&
        previousSpotFleetRequestState == other.previousSpotFleetRequestState &&
        spotFleetRequestId == other.spotFleetRequestId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, currentSpotFleetRequestState.hashCode);
    _$hash = $jc(_$hash, previousSpotFleetRequestState.hashCode);
    _$hash = $jc(_$hash, spotFleetRequestId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CancelSpotFleetRequestsSuccessItemBuilder
    implements
        Builder<CancelSpotFleetRequestsSuccessItem,
            CancelSpotFleetRequestsSuccessItemBuilder> {
  _$CancelSpotFleetRequestsSuccessItem? _$v;

  _i2.BatchState? _currentSpotFleetRequestState;
  _i2.BatchState? get currentSpotFleetRequestState =>
      _$this._currentSpotFleetRequestState;
  set currentSpotFleetRequestState(
          _i2.BatchState? currentSpotFleetRequestState) =>
      _$this._currentSpotFleetRequestState = currentSpotFleetRequestState;

  _i2.BatchState? _previousSpotFleetRequestState;
  _i2.BatchState? get previousSpotFleetRequestState =>
      _$this._previousSpotFleetRequestState;
  set previousSpotFleetRequestState(
          _i2.BatchState? previousSpotFleetRequestState) =>
      _$this._previousSpotFleetRequestState = previousSpotFleetRequestState;

  String? _spotFleetRequestId;
  String? get spotFleetRequestId => _$this._spotFleetRequestId;
  set spotFleetRequestId(String? spotFleetRequestId) =>
      _$this._spotFleetRequestId = spotFleetRequestId;

  CancelSpotFleetRequestsSuccessItemBuilder() {
    CancelSpotFleetRequestsSuccessItem._init(this);
  }

  CancelSpotFleetRequestsSuccessItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _currentSpotFleetRequestState = $v.currentSpotFleetRequestState;
      _previousSpotFleetRequestState = $v.previousSpotFleetRequestState;
      _spotFleetRequestId = $v.spotFleetRequestId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CancelSpotFleetRequestsSuccessItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CancelSpotFleetRequestsSuccessItem;
  }

  @override
  void update(
      void Function(CancelSpotFleetRequestsSuccessItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CancelSpotFleetRequestsSuccessItem build() => _build();

  _$CancelSpotFleetRequestsSuccessItem _build() {
    final _$result = _$v ??
        new _$CancelSpotFleetRequestsSuccessItem._(
            currentSpotFleetRequestState: currentSpotFleetRequestState,
            previousSpotFleetRequestState: previousSpotFleetRequestState,
            spotFleetRequestId: spotFleetRequestId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
