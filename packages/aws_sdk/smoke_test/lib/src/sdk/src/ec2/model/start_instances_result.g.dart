// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.start_instances_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StartInstancesResult extends StartInstancesResult {
  @override
  final _i3.BuiltList<_i2.InstanceStateChange>? startingInstances;

  factory _$StartInstancesResult(
          [void Function(StartInstancesResultBuilder)? updates]) =>
      (new StartInstancesResultBuilder()..update(updates))._build();

  _$StartInstancesResult._({this.startingInstances}) : super._();

  @override
  StartInstancesResult rebuild(
          void Function(StartInstancesResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StartInstancesResultBuilder toBuilder() =>
      new StartInstancesResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StartInstancesResult &&
        startingInstances == other.startingInstances;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, startingInstances.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StartInstancesResultBuilder
    implements Builder<StartInstancesResult, StartInstancesResultBuilder> {
  _$StartInstancesResult? _$v;

  _i3.ListBuilder<_i2.InstanceStateChange>? _startingInstances;
  _i3.ListBuilder<_i2.InstanceStateChange> get startingInstances =>
      _$this._startingInstances ??=
          new _i3.ListBuilder<_i2.InstanceStateChange>();
  set startingInstances(
          _i3.ListBuilder<_i2.InstanceStateChange>? startingInstances) =>
      _$this._startingInstances = startingInstances;

  StartInstancesResultBuilder() {
    StartInstancesResult._init(this);
  }

  StartInstancesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _startingInstances = $v.startingInstances?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StartInstancesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StartInstancesResult;
  }

  @override
  void update(void Function(StartInstancesResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StartInstancesResult build() => _build();

  _$StartInstancesResult _build() {
    _$StartInstancesResult _$result;
    try {
      _$result = _$v ??
          new _$StartInstancesResult._(
              startingInstances: _startingInstances?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'startingInstances';
        _startingInstances?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'StartInstancesResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
