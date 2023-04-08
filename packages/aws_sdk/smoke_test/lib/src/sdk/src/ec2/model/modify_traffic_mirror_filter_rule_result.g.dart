// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.modify_traffic_mirror_filter_rule_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyTrafficMirrorFilterRuleResult
    extends ModifyTrafficMirrorFilterRuleResult {
  @override
  final _i2.TrafficMirrorFilterRule? trafficMirrorFilterRule;

  factory _$ModifyTrafficMirrorFilterRuleResult(
          [void Function(ModifyTrafficMirrorFilterRuleResultBuilder)?
              updates]) =>
      (new ModifyTrafficMirrorFilterRuleResultBuilder()..update(updates))
          ._build();

  _$ModifyTrafficMirrorFilterRuleResult._({this.trafficMirrorFilterRule})
      : super._();

  @override
  ModifyTrafficMirrorFilterRuleResult rebuild(
          void Function(ModifyTrafficMirrorFilterRuleResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyTrafficMirrorFilterRuleResultBuilder toBuilder() =>
      new ModifyTrafficMirrorFilterRuleResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyTrafficMirrorFilterRuleResult &&
        trafficMirrorFilterRule == other.trafficMirrorFilterRule;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, trafficMirrorFilterRule.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyTrafficMirrorFilterRuleResultBuilder
    implements
        Builder<ModifyTrafficMirrorFilterRuleResult,
            ModifyTrafficMirrorFilterRuleResultBuilder> {
  _$ModifyTrafficMirrorFilterRuleResult? _$v;

  _i2.TrafficMirrorFilterRuleBuilder? _trafficMirrorFilterRule;
  _i2.TrafficMirrorFilterRuleBuilder get trafficMirrorFilterRule =>
      _$this._trafficMirrorFilterRule ??=
          new _i2.TrafficMirrorFilterRuleBuilder();
  set trafficMirrorFilterRule(
          _i2.TrafficMirrorFilterRuleBuilder? trafficMirrorFilterRule) =>
      _$this._trafficMirrorFilterRule = trafficMirrorFilterRule;

  ModifyTrafficMirrorFilterRuleResultBuilder() {
    ModifyTrafficMirrorFilterRuleResult._init(this);
  }

  ModifyTrafficMirrorFilterRuleResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _trafficMirrorFilterRule = $v.trafficMirrorFilterRule?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyTrafficMirrorFilterRuleResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyTrafficMirrorFilterRuleResult;
  }

  @override
  void update(
      void Function(ModifyTrafficMirrorFilterRuleResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyTrafficMirrorFilterRuleResult build() => _build();

  _$ModifyTrafficMirrorFilterRuleResult _build() {
    _$ModifyTrafficMirrorFilterRuleResult _$result;
    try {
      _$result = _$v ??
          new _$ModifyTrafficMirrorFilterRuleResult._(
              trafficMirrorFilterRule: _trafficMirrorFilterRule?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'trafficMirrorFilterRule';
        _trafficMirrorFilterRule?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyTrafficMirrorFilterRuleResult',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
