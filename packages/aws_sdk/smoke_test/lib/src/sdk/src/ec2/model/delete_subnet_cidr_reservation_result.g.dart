// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.delete_subnet_cidr_reservation_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteSubnetCidrReservationResult
    extends DeleteSubnetCidrReservationResult {
  @override
  final _i2.SubnetCidrReservation? deletedSubnetCidrReservation;

  factory _$DeleteSubnetCidrReservationResult(
          [void Function(DeleteSubnetCidrReservationResultBuilder)? updates]) =>
      (new DeleteSubnetCidrReservationResultBuilder()..update(updates))
          ._build();

  _$DeleteSubnetCidrReservationResult._({this.deletedSubnetCidrReservation})
      : super._();

  @override
  DeleteSubnetCidrReservationResult rebuild(
          void Function(DeleteSubnetCidrReservationResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteSubnetCidrReservationResultBuilder toBuilder() =>
      new DeleteSubnetCidrReservationResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteSubnetCidrReservationResult &&
        deletedSubnetCidrReservation == other.deletedSubnetCidrReservation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deletedSubnetCidrReservation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteSubnetCidrReservationResultBuilder
    implements
        Builder<DeleteSubnetCidrReservationResult,
            DeleteSubnetCidrReservationResultBuilder> {
  _$DeleteSubnetCidrReservationResult? _$v;

  _i2.SubnetCidrReservationBuilder? _deletedSubnetCidrReservation;
  _i2.SubnetCidrReservationBuilder get deletedSubnetCidrReservation =>
      _$this._deletedSubnetCidrReservation ??=
          new _i2.SubnetCidrReservationBuilder();
  set deletedSubnetCidrReservation(
          _i2.SubnetCidrReservationBuilder? deletedSubnetCidrReservation) =>
      _$this._deletedSubnetCidrReservation = deletedSubnetCidrReservation;

  DeleteSubnetCidrReservationResultBuilder() {
    DeleteSubnetCidrReservationResult._init(this);
  }

  DeleteSubnetCidrReservationResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deletedSubnetCidrReservation =
          $v.deletedSubnetCidrReservation?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteSubnetCidrReservationResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteSubnetCidrReservationResult;
  }

  @override
  void update(
      void Function(DeleteSubnetCidrReservationResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteSubnetCidrReservationResult build() => _build();

  _$DeleteSubnetCidrReservationResult _build() {
    _$DeleteSubnetCidrReservationResult _$result;
    try {
      _$result = _$v ??
          new _$DeleteSubnetCidrReservationResult._(
              deletedSubnetCidrReservation:
                  _deletedSubnetCidrReservation?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deletedSubnetCidrReservation';
        _deletedSubnetCidrReservation?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteSubnetCidrReservationResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
