// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.associate_route_table_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssociateRouteTableResult extends AssociateRouteTableResult {
  @override
  final String? associationId;
  @override
  final _i2.RouteTableAssociationState? associationState;

  factory _$AssociateRouteTableResult(
          [void Function(AssociateRouteTableResultBuilder)? updates]) =>
      (new AssociateRouteTableResultBuilder()..update(updates))._build();

  _$AssociateRouteTableResult._({this.associationId, this.associationState})
      : super._();

  @override
  AssociateRouteTableResult rebuild(
          void Function(AssociateRouteTableResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssociateRouteTableResultBuilder toBuilder() =>
      new AssociateRouteTableResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssociateRouteTableResult &&
        associationId == other.associationId &&
        associationState == other.associationState;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, associationId.hashCode);
    _$hash = $jc(_$hash, associationState.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AssociateRouteTableResultBuilder
    implements
        Builder<AssociateRouteTableResult, AssociateRouteTableResultBuilder> {
  _$AssociateRouteTableResult? _$v;

  String? _associationId;
  String? get associationId => _$this._associationId;
  set associationId(String? associationId) =>
      _$this._associationId = associationId;

  _i2.RouteTableAssociationStateBuilder? _associationState;
  _i2.RouteTableAssociationStateBuilder get associationState =>
      _$this._associationState ??= new _i2.RouteTableAssociationStateBuilder();
  set associationState(
          _i2.RouteTableAssociationStateBuilder? associationState) =>
      _$this._associationState = associationState;

  AssociateRouteTableResultBuilder() {
    AssociateRouteTableResult._init(this);
  }

  AssociateRouteTableResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _associationId = $v.associationId;
      _associationState = $v.associationState?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssociateRouteTableResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AssociateRouteTableResult;
  }

  @override
  void update(void Function(AssociateRouteTableResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssociateRouteTableResult build() => _build();

  _$AssociateRouteTableResult _build() {
    _$AssociateRouteTableResult _$result;
    try {
      _$result = _$v ??
          new _$AssociateRouteTableResult._(
              associationId: associationId,
              associationState: _associationState?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'associationState';
        _associationState?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AssociateRouteTableResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
