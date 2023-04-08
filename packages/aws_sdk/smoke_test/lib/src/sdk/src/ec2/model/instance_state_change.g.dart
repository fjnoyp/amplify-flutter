// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.instance_state_change;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceStateChange extends InstanceStateChange {
  @override
  final _i2.InstanceState? currentState;
  @override
  final String? instanceId;
  @override
  final _i2.InstanceState? previousState;

  factory _$InstanceStateChange(
          [void Function(InstanceStateChangeBuilder)? updates]) =>
      (new InstanceStateChangeBuilder()..update(updates))._build();

  _$InstanceStateChange._(
      {this.currentState, this.instanceId, this.previousState})
      : super._();

  @override
  InstanceStateChange rebuild(
          void Function(InstanceStateChangeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceStateChangeBuilder toBuilder() =>
      new InstanceStateChangeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceStateChange &&
        currentState == other.currentState &&
        instanceId == other.instanceId &&
        previousState == other.previousState;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, currentState.hashCode);
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, previousState.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InstanceStateChangeBuilder
    implements Builder<InstanceStateChange, InstanceStateChangeBuilder> {
  _$InstanceStateChange? _$v;

  _i2.InstanceStateBuilder? _currentState;
  _i2.InstanceStateBuilder get currentState =>
      _$this._currentState ??= new _i2.InstanceStateBuilder();
  set currentState(_i2.InstanceStateBuilder? currentState) =>
      _$this._currentState = currentState;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  _i2.InstanceStateBuilder? _previousState;
  _i2.InstanceStateBuilder get previousState =>
      _$this._previousState ??= new _i2.InstanceStateBuilder();
  set previousState(_i2.InstanceStateBuilder? previousState) =>
      _$this._previousState = previousState;

  InstanceStateChangeBuilder() {
    InstanceStateChange._init(this);
  }

  InstanceStateChangeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _currentState = $v.currentState?.toBuilder();
      _instanceId = $v.instanceId;
      _previousState = $v.previousState?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceStateChange other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InstanceStateChange;
  }

  @override
  void update(void Function(InstanceStateChangeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceStateChange build() => _build();

  _$InstanceStateChange _build() {
    _$InstanceStateChange _$result;
    try {
      _$result = _$v ??
          new _$InstanceStateChange._(
              currentState: _currentState?.build(),
              instanceId: instanceId,
              previousState: _previousState?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'currentState';
        _currentState?.build();

        _$failedField = 'previousState';
        _previousState?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'InstanceStateChange', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
