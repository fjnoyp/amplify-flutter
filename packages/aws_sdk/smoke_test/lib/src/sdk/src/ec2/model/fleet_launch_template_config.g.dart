// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.fleet_launch_template_config;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FleetLaunchTemplateConfig extends FleetLaunchTemplateConfig {
  @override
  final _i2.FleetLaunchTemplateSpecification? launchTemplateSpecification;
  @override
  final _i4.BuiltList<_i3.FleetLaunchTemplateOverrides>? overrides;

  factory _$FleetLaunchTemplateConfig(
          [void Function(FleetLaunchTemplateConfigBuilder)? updates]) =>
      (new FleetLaunchTemplateConfigBuilder()..update(updates))._build();

  _$FleetLaunchTemplateConfig._(
      {this.launchTemplateSpecification, this.overrides})
      : super._();

  @override
  FleetLaunchTemplateConfig rebuild(
          void Function(FleetLaunchTemplateConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FleetLaunchTemplateConfigBuilder toBuilder() =>
      new FleetLaunchTemplateConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FleetLaunchTemplateConfig &&
        launchTemplateSpecification == other.launchTemplateSpecification &&
        overrides == other.overrides;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, launchTemplateSpecification.hashCode);
    _$hash = $jc(_$hash, overrides.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class FleetLaunchTemplateConfigBuilder
    implements
        Builder<FleetLaunchTemplateConfig, FleetLaunchTemplateConfigBuilder> {
  _$FleetLaunchTemplateConfig? _$v;

  _i2.FleetLaunchTemplateSpecificationBuilder? _launchTemplateSpecification;
  _i2.FleetLaunchTemplateSpecificationBuilder get launchTemplateSpecification =>
      _$this._launchTemplateSpecification ??=
          new _i2.FleetLaunchTemplateSpecificationBuilder();
  set launchTemplateSpecification(
          _i2.FleetLaunchTemplateSpecificationBuilder?
              launchTemplateSpecification) =>
      _$this._launchTemplateSpecification = launchTemplateSpecification;

  _i4.ListBuilder<_i3.FleetLaunchTemplateOverrides>? _overrides;
  _i4.ListBuilder<_i3.FleetLaunchTemplateOverrides> get overrides =>
      _$this._overrides ??=
          new _i4.ListBuilder<_i3.FleetLaunchTemplateOverrides>();
  set overrides(_i4.ListBuilder<_i3.FleetLaunchTemplateOverrides>? overrides) =>
      _$this._overrides = overrides;

  FleetLaunchTemplateConfigBuilder() {
    FleetLaunchTemplateConfig._init(this);
  }

  FleetLaunchTemplateConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _launchTemplateSpecification =
          $v.launchTemplateSpecification?.toBuilder();
      _overrides = $v.overrides?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FleetLaunchTemplateConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FleetLaunchTemplateConfig;
  }

  @override
  void update(void Function(FleetLaunchTemplateConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FleetLaunchTemplateConfig build() => _build();

  _$FleetLaunchTemplateConfig _build() {
    _$FleetLaunchTemplateConfig _$result;
    try {
      _$result = _$v ??
          new _$FleetLaunchTemplateConfig._(
              launchTemplateSpecification:
                  _launchTemplateSpecification?.build(),
              overrides: _overrides?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'launchTemplateSpecification';
        _launchTemplateSpecification?.build();
        _$failedField = 'overrides';
        _overrides?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'FleetLaunchTemplateConfig', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
