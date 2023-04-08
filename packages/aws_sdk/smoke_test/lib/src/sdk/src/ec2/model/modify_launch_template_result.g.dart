// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.modify_launch_template_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyLaunchTemplateResult extends ModifyLaunchTemplateResult {
  @override
  final _i2.LaunchTemplate? launchTemplate;

  factory _$ModifyLaunchTemplateResult(
          [void Function(ModifyLaunchTemplateResultBuilder)? updates]) =>
      (new ModifyLaunchTemplateResultBuilder()..update(updates))._build();

  _$ModifyLaunchTemplateResult._({this.launchTemplate}) : super._();

  @override
  ModifyLaunchTemplateResult rebuild(
          void Function(ModifyLaunchTemplateResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyLaunchTemplateResultBuilder toBuilder() =>
      new ModifyLaunchTemplateResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyLaunchTemplateResult &&
        launchTemplate == other.launchTemplate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, launchTemplate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyLaunchTemplateResultBuilder
    implements
        Builder<ModifyLaunchTemplateResult, ModifyLaunchTemplateResultBuilder> {
  _$ModifyLaunchTemplateResult? _$v;

  _i2.LaunchTemplateBuilder? _launchTemplate;
  _i2.LaunchTemplateBuilder get launchTemplate =>
      _$this._launchTemplate ??= new _i2.LaunchTemplateBuilder();
  set launchTemplate(_i2.LaunchTemplateBuilder? launchTemplate) =>
      _$this._launchTemplate = launchTemplate;

  ModifyLaunchTemplateResultBuilder() {
    ModifyLaunchTemplateResult._init(this);
  }

  ModifyLaunchTemplateResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _launchTemplate = $v.launchTemplate?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyLaunchTemplateResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyLaunchTemplateResult;
  }

  @override
  void update(void Function(ModifyLaunchTemplateResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyLaunchTemplateResult build() => _build();

  _$ModifyLaunchTemplateResult _build() {
    _$ModifyLaunchTemplateResult _$result;
    try {
      _$result = _$v ??
          new _$ModifyLaunchTemplateResult._(
              launchTemplate: _launchTemplate?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'launchTemplate';
        _launchTemplate?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyLaunchTemplateResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
