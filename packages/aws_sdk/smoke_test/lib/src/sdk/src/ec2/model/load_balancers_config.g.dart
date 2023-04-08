// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.load_balancers_config;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LoadBalancersConfig extends LoadBalancersConfig {
  @override
  final _i2.ClassicLoadBalancersConfig? classicLoadBalancersConfig;
  @override
  final _i3.TargetGroupsConfig? targetGroupsConfig;

  factory _$LoadBalancersConfig(
          [void Function(LoadBalancersConfigBuilder)? updates]) =>
      (new LoadBalancersConfigBuilder()..update(updates))._build();

  _$LoadBalancersConfig._(
      {this.classicLoadBalancersConfig, this.targetGroupsConfig})
      : super._();

  @override
  LoadBalancersConfig rebuild(
          void Function(LoadBalancersConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoadBalancersConfigBuilder toBuilder() =>
      new LoadBalancersConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoadBalancersConfig &&
        classicLoadBalancersConfig == other.classicLoadBalancersConfig &&
        targetGroupsConfig == other.targetGroupsConfig;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, classicLoadBalancersConfig.hashCode);
    _$hash = $jc(_$hash, targetGroupsConfig.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class LoadBalancersConfigBuilder
    implements Builder<LoadBalancersConfig, LoadBalancersConfigBuilder> {
  _$LoadBalancersConfig? _$v;

  _i2.ClassicLoadBalancersConfigBuilder? _classicLoadBalancersConfig;
  _i2.ClassicLoadBalancersConfigBuilder get classicLoadBalancersConfig =>
      _$this._classicLoadBalancersConfig ??=
          new _i2.ClassicLoadBalancersConfigBuilder();
  set classicLoadBalancersConfig(
          _i2.ClassicLoadBalancersConfigBuilder? classicLoadBalancersConfig) =>
      _$this._classicLoadBalancersConfig = classicLoadBalancersConfig;

  _i3.TargetGroupsConfigBuilder? _targetGroupsConfig;
  _i3.TargetGroupsConfigBuilder get targetGroupsConfig =>
      _$this._targetGroupsConfig ??= new _i3.TargetGroupsConfigBuilder();
  set targetGroupsConfig(_i3.TargetGroupsConfigBuilder? targetGroupsConfig) =>
      _$this._targetGroupsConfig = targetGroupsConfig;

  LoadBalancersConfigBuilder() {
    LoadBalancersConfig._init(this);
  }

  LoadBalancersConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _classicLoadBalancersConfig = $v.classicLoadBalancersConfig?.toBuilder();
      _targetGroupsConfig = $v.targetGroupsConfig?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoadBalancersConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoadBalancersConfig;
  }

  @override
  void update(void Function(LoadBalancersConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoadBalancersConfig build() => _build();

  _$LoadBalancersConfig _build() {
    _$LoadBalancersConfig _$result;
    try {
      _$result = _$v ??
          new _$LoadBalancersConfig._(
              classicLoadBalancersConfig: _classicLoadBalancersConfig?.build(),
              targetGroupsConfig: _targetGroupsConfig?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'classicLoadBalancersConfig';
        _classicLoadBalancersConfig?.build();
        _$failedField = 'targetGroupsConfig';
        _targetGroupsConfig?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LoadBalancersConfig', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
