// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.delete_fleets_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteFleetsResult extends DeleteFleetsResult {
  @override
  final _i4.BuiltList<_i2.DeleteFleetSuccessItem>? successfulFleetDeletions;
  @override
  final _i4.BuiltList<_i3.DeleteFleetErrorItem>? unsuccessfulFleetDeletions;

  factory _$DeleteFleetsResult(
          [void Function(DeleteFleetsResultBuilder)? updates]) =>
      (new DeleteFleetsResultBuilder()..update(updates))._build();

  _$DeleteFleetsResult._(
      {this.successfulFleetDeletions, this.unsuccessfulFleetDeletions})
      : super._();

  @override
  DeleteFleetsResult rebuild(
          void Function(DeleteFleetsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteFleetsResultBuilder toBuilder() =>
      new DeleteFleetsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteFleetsResult &&
        successfulFleetDeletions == other.successfulFleetDeletions &&
        unsuccessfulFleetDeletions == other.unsuccessfulFleetDeletions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, successfulFleetDeletions.hashCode);
    _$hash = $jc(_$hash, unsuccessfulFleetDeletions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteFleetsResultBuilder
    implements Builder<DeleteFleetsResult, DeleteFleetsResultBuilder> {
  _$DeleteFleetsResult? _$v;

  _i4.ListBuilder<_i2.DeleteFleetSuccessItem>? _successfulFleetDeletions;
  _i4.ListBuilder<_i2.DeleteFleetSuccessItem> get successfulFleetDeletions =>
      _$this._successfulFleetDeletions ??=
          new _i4.ListBuilder<_i2.DeleteFleetSuccessItem>();
  set successfulFleetDeletions(
          _i4.ListBuilder<_i2.DeleteFleetSuccessItem>?
              successfulFleetDeletions) =>
      _$this._successfulFleetDeletions = successfulFleetDeletions;

  _i4.ListBuilder<_i3.DeleteFleetErrorItem>? _unsuccessfulFleetDeletions;
  _i4.ListBuilder<_i3.DeleteFleetErrorItem> get unsuccessfulFleetDeletions =>
      _$this._unsuccessfulFleetDeletions ??=
          new _i4.ListBuilder<_i3.DeleteFleetErrorItem>();
  set unsuccessfulFleetDeletions(
          _i4.ListBuilder<_i3.DeleteFleetErrorItem>?
              unsuccessfulFleetDeletions) =>
      _$this._unsuccessfulFleetDeletions = unsuccessfulFleetDeletions;

  DeleteFleetsResultBuilder() {
    DeleteFleetsResult._init(this);
  }

  DeleteFleetsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _successfulFleetDeletions = $v.successfulFleetDeletions?.toBuilder();
      _unsuccessfulFleetDeletions = $v.unsuccessfulFleetDeletions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteFleetsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteFleetsResult;
  }

  @override
  void update(void Function(DeleteFleetsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteFleetsResult build() => _build();

  _$DeleteFleetsResult _build() {
    _$DeleteFleetsResult _$result;
    try {
      _$result = _$v ??
          new _$DeleteFleetsResult._(
              successfulFleetDeletions: _successfulFleetDeletions?.build(),
              unsuccessfulFleetDeletions: _unsuccessfulFleetDeletions?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'successfulFleetDeletions';
        _successfulFleetDeletions?.build();
        _$failedField = 'unsuccessfulFleetDeletions';
        _unsuccessfulFleetDeletions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteFleetsResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
