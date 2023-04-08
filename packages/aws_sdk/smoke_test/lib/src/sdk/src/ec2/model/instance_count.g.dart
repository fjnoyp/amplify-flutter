// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.instance_count;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceCount extends InstanceCount {
  @override
  final int instanceCount;
  @override
  final _i2.ListingState? state;

  factory _$InstanceCount([void Function(InstanceCountBuilder)? updates]) =>
      (new InstanceCountBuilder()..update(updates))._build();

  _$InstanceCount._({required this.instanceCount, this.state}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        instanceCount, r'InstanceCount', 'instanceCount');
  }

  @override
  InstanceCount rebuild(void Function(InstanceCountBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceCountBuilder toBuilder() => new InstanceCountBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceCount &&
        instanceCount == other.instanceCount &&
        state == other.state;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceCount.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InstanceCountBuilder
    implements Builder<InstanceCount, InstanceCountBuilder> {
  _$InstanceCount? _$v;

  int? _instanceCount;
  int? get instanceCount => _$this._instanceCount;
  set instanceCount(int? instanceCount) =>
      _$this._instanceCount = instanceCount;

  _i2.ListingState? _state;
  _i2.ListingState? get state => _$this._state;
  set state(_i2.ListingState? state) => _$this._state = state;

  InstanceCountBuilder() {
    InstanceCount._init(this);
  }

  InstanceCountBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceCount = $v.instanceCount;
      _state = $v.state;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceCount other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InstanceCount;
  }

  @override
  void update(void Function(InstanceCountBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceCount build() => _build();

  _$InstanceCount _build() {
    final _$result = _$v ??
        new _$InstanceCount._(
            instanceCount: BuiltValueNullFieldError.checkNotNull(
                instanceCount, r'InstanceCount', 'instanceCount'),
            state: state);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
