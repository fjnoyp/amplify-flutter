// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.cancel_capacity_reservation_fleets_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CancelCapacityReservationFleetsResult
    extends CancelCapacityReservationFleetsResult {
  @override
  final _i4.BuiltList<_i2.CapacityReservationFleetCancellationState>?
      successfulFleetCancellations;
  @override
  final _i4.BuiltList<_i3.FailedCapacityReservationFleetCancellationResult>?
      failedFleetCancellations;

  factory _$CancelCapacityReservationFleetsResult(
          [void Function(CancelCapacityReservationFleetsResultBuilder)?
              updates]) =>
      (new CancelCapacityReservationFleetsResultBuilder()..update(updates))
          ._build();

  _$CancelCapacityReservationFleetsResult._(
      {this.successfulFleetCancellations, this.failedFleetCancellations})
      : super._();

  @override
  CancelCapacityReservationFleetsResult rebuild(
          void Function(CancelCapacityReservationFleetsResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CancelCapacityReservationFleetsResultBuilder toBuilder() =>
      new CancelCapacityReservationFleetsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CancelCapacityReservationFleetsResult &&
        successfulFleetCancellations == other.successfulFleetCancellations &&
        failedFleetCancellations == other.failedFleetCancellations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, successfulFleetCancellations.hashCode);
    _$hash = $jc(_$hash, failedFleetCancellations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CancelCapacityReservationFleetsResultBuilder
    implements
        Builder<CancelCapacityReservationFleetsResult,
            CancelCapacityReservationFleetsResultBuilder> {
  _$CancelCapacityReservationFleetsResult? _$v;

  _i4.ListBuilder<_i2.CapacityReservationFleetCancellationState>?
      _successfulFleetCancellations;
  _i4.ListBuilder<_i2.CapacityReservationFleetCancellationState>
      get successfulFleetCancellations => _$this
              ._successfulFleetCancellations ??=
          new _i4.ListBuilder<_i2.CapacityReservationFleetCancellationState>();
  set successfulFleetCancellations(
          _i4.ListBuilder<_i2.CapacityReservationFleetCancellationState>?
              successfulFleetCancellations) =>
      _$this._successfulFleetCancellations = successfulFleetCancellations;

  _i4.ListBuilder<_i3.FailedCapacityReservationFleetCancellationResult>?
      _failedFleetCancellations;
  _i4.ListBuilder<_i3.FailedCapacityReservationFleetCancellationResult>
      get failedFleetCancellations =>
          _$this._failedFleetCancellations ??= new _i4.ListBuilder<
              _i3.FailedCapacityReservationFleetCancellationResult>();
  set failedFleetCancellations(
          _i4.ListBuilder<_i3.FailedCapacityReservationFleetCancellationResult>?
              failedFleetCancellations) =>
      _$this._failedFleetCancellations = failedFleetCancellations;

  CancelCapacityReservationFleetsResultBuilder() {
    CancelCapacityReservationFleetsResult._init(this);
  }

  CancelCapacityReservationFleetsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _successfulFleetCancellations =
          $v.successfulFleetCancellations?.toBuilder();
      _failedFleetCancellations = $v.failedFleetCancellations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CancelCapacityReservationFleetsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CancelCapacityReservationFleetsResult;
  }

  @override
  void update(
      void Function(CancelCapacityReservationFleetsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CancelCapacityReservationFleetsResult build() => _build();

  _$CancelCapacityReservationFleetsResult _build() {
    _$CancelCapacityReservationFleetsResult _$result;
    try {
      _$result = _$v ??
          new _$CancelCapacityReservationFleetsResult._(
              successfulFleetCancellations:
                  _successfulFleetCancellations?.build(),
              failedFleetCancellations: _failedFleetCancellations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'successfulFleetCancellations';
        _successfulFleetCancellations?.build();
        _$failedField = 'failedFleetCancellations';
        _failedFleetCancellations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CancelCapacityReservationFleetsResult',
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
