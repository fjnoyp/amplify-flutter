// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.describe_fleets_instances;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeFleetsInstances extends DescribeFleetsInstances {
  @override
  final _i2.LaunchTemplateAndOverridesResponse? launchTemplateAndOverrides;
  @override
  final _i3.InstanceLifecycle? lifecycle;
  @override
  final _i6.BuiltList<String>? instanceIds;
  @override
  final _i4.InstanceType? instanceType;
  @override
  final _i5.PlatformValues? platform;

  factory _$DescribeFleetsInstances(
          [void Function(DescribeFleetsInstancesBuilder)? updates]) =>
      (new DescribeFleetsInstancesBuilder()..update(updates))._build();

  _$DescribeFleetsInstances._(
      {this.launchTemplateAndOverrides,
      this.lifecycle,
      this.instanceIds,
      this.instanceType,
      this.platform})
      : super._();

  @override
  DescribeFleetsInstances rebuild(
          void Function(DescribeFleetsInstancesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeFleetsInstancesBuilder toBuilder() =>
      new DescribeFleetsInstancesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeFleetsInstances &&
        launchTemplateAndOverrides == other.launchTemplateAndOverrides &&
        lifecycle == other.lifecycle &&
        instanceIds == other.instanceIds &&
        instanceType == other.instanceType &&
        platform == other.platform;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, launchTemplateAndOverrides.hashCode);
    _$hash = $jc(_$hash, lifecycle.hashCode);
    _$hash = $jc(_$hash, instanceIds.hashCode);
    _$hash = $jc(_$hash, instanceType.hashCode);
    _$hash = $jc(_$hash, platform.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeFleetsInstancesBuilder
    implements
        Builder<DescribeFleetsInstances, DescribeFleetsInstancesBuilder> {
  _$DescribeFleetsInstances? _$v;

  _i2.LaunchTemplateAndOverridesResponseBuilder? _launchTemplateAndOverrides;
  _i2.LaunchTemplateAndOverridesResponseBuilder
      get launchTemplateAndOverrides => _$this._launchTemplateAndOverrides ??=
          new _i2.LaunchTemplateAndOverridesResponseBuilder();
  set launchTemplateAndOverrides(
          _i2.LaunchTemplateAndOverridesResponseBuilder?
              launchTemplateAndOverrides) =>
      _$this._launchTemplateAndOverrides = launchTemplateAndOverrides;

  _i3.InstanceLifecycle? _lifecycle;
  _i3.InstanceLifecycle? get lifecycle => _$this._lifecycle;
  set lifecycle(_i3.InstanceLifecycle? lifecycle) =>
      _$this._lifecycle = lifecycle;

  _i6.ListBuilder<String>? _instanceIds;
  _i6.ListBuilder<String> get instanceIds =>
      _$this._instanceIds ??= new _i6.ListBuilder<String>();
  set instanceIds(_i6.ListBuilder<String>? instanceIds) =>
      _$this._instanceIds = instanceIds;

  _i4.InstanceType? _instanceType;
  _i4.InstanceType? get instanceType => _$this._instanceType;
  set instanceType(_i4.InstanceType? instanceType) =>
      _$this._instanceType = instanceType;

  _i5.PlatformValues? _platform;
  _i5.PlatformValues? get platform => _$this._platform;
  set platform(_i5.PlatformValues? platform) => _$this._platform = platform;

  DescribeFleetsInstancesBuilder() {
    DescribeFleetsInstances._init(this);
  }

  DescribeFleetsInstancesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _launchTemplateAndOverrides = $v.launchTemplateAndOverrides?.toBuilder();
      _lifecycle = $v.lifecycle;
      _instanceIds = $v.instanceIds?.toBuilder();
      _instanceType = $v.instanceType;
      _platform = $v.platform;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeFleetsInstances other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeFleetsInstances;
  }

  @override
  void update(void Function(DescribeFleetsInstancesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeFleetsInstances build() => _build();

  _$DescribeFleetsInstances _build() {
    _$DescribeFleetsInstances _$result;
    try {
      _$result = _$v ??
          new _$DescribeFleetsInstances._(
              launchTemplateAndOverrides: _launchTemplateAndOverrides?.build(),
              lifecycle: lifecycle,
              instanceIds: _instanceIds?.build(),
              instanceType: instanceType,
              platform: platform);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'launchTemplateAndOverrides';
        _launchTemplateAndOverrides?.build();

        _$failedField = 'instanceIds';
        _instanceIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeFleetsInstances', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
