// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.failed_capacity_reservation_fleet_cancellation_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FailedCapacityReservationFleetCancellationResult
    extends FailedCapacityReservationFleetCancellationResult {
  @override
  final String? capacityReservationFleetId;
  @override
  final _i2.CancelCapacityReservationFleetError?
      cancelCapacityReservationFleetError;

  factory _$FailedCapacityReservationFleetCancellationResult(
          [void Function(
                  FailedCapacityReservationFleetCancellationResultBuilder)?
              updates]) =>
      (new FailedCapacityReservationFleetCancellationResultBuilder()
            ..update(updates))
          ._build();

  _$FailedCapacityReservationFleetCancellationResult._(
      {this.capacityReservationFleetId,
      this.cancelCapacityReservationFleetError})
      : super._();

  @override
  FailedCapacityReservationFleetCancellationResult rebuild(
          void Function(FailedCapacityReservationFleetCancellationResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FailedCapacityReservationFleetCancellationResultBuilder toBuilder() =>
      new FailedCapacityReservationFleetCancellationResultBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FailedCapacityReservationFleetCancellationResult &&
        capacityReservationFleetId == other.capacityReservationFleetId &&
        cancelCapacityReservationFleetError ==
            other.cancelCapacityReservationFleetError;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, capacityReservationFleetId.hashCode);
    _$hash = $jc(_$hash, cancelCapacityReservationFleetError.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class FailedCapacityReservationFleetCancellationResultBuilder
    implements
        Builder<FailedCapacityReservationFleetCancellationResult,
            FailedCapacityReservationFleetCancellationResultBuilder> {
  _$FailedCapacityReservationFleetCancellationResult? _$v;

  String? _capacityReservationFleetId;
  String? get capacityReservationFleetId => _$this._capacityReservationFleetId;
  set capacityReservationFleetId(String? capacityReservationFleetId) =>
      _$this._capacityReservationFleetId = capacityReservationFleetId;

  _i2.CancelCapacityReservationFleetErrorBuilder?
      _cancelCapacityReservationFleetError;
  _i2.CancelCapacityReservationFleetErrorBuilder
      get cancelCapacityReservationFleetError =>
          _$this._cancelCapacityReservationFleetError ??=
              new _i2.CancelCapacityReservationFleetErrorBuilder();
  set cancelCapacityReservationFleetError(
          _i2.CancelCapacityReservationFleetErrorBuilder?
              cancelCapacityReservationFleetError) =>
      _$this._cancelCapacityReservationFleetError =
          cancelCapacityReservationFleetError;

  FailedCapacityReservationFleetCancellationResultBuilder() {
    FailedCapacityReservationFleetCancellationResult._init(this);
  }

  FailedCapacityReservationFleetCancellationResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _capacityReservationFleetId = $v.capacityReservationFleetId;
      _cancelCapacityReservationFleetError =
          $v.cancelCapacityReservationFleetError?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FailedCapacityReservationFleetCancellationResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FailedCapacityReservationFleetCancellationResult;
  }

  @override
  void update(
      void Function(FailedCapacityReservationFleetCancellationResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  FailedCapacityReservationFleetCancellationResult build() => _build();

  _$FailedCapacityReservationFleetCancellationResult _build() {
    _$FailedCapacityReservationFleetCancellationResult _$result;
    try {
      _$result = _$v ??
          new _$FailedCapacityReservationFleetCancellationResult._(
              capacityReservationFleetId: capacityReservationFleetId,
              cancelCapacityReservationFleetError:
                  _cancelCapacityReservationFleetError?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'cancelCapacityReservationFleetError';
        _cancelCapacityReservationFleetError?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'FailedCapacityReservationFleetCancellationResult',
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
