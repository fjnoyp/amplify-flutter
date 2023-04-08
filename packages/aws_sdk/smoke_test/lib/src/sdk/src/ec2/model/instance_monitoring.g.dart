// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.instance_monitoring;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceMonitoring extends InstanceMonitoring {
  @override
  final String? instanceId;
  @override
  final _i2.Monitoring? monitoring;

  factory _$InstanceMonitoring(
          [void Function(InstanceMonitoringBuilder)? updates]) =>
      (new InstanceMonitoringBuilder()..update(updates))._build();

  _$InstanceMonitoring._({this.instanceId, this.monitoring}) : super._();

  @override
  InstanceMonitoring rebuild(
          void Function(InstanceMonitoringBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceMonitoringBuilder toBuilder() =>
      new InstanceMonitoringBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceMonitoring &&
        instanceId == other.instanceId &&
        monitoring == other.monitoring;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, monitoring.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InstanceMonitoringBuilder
    implements Builder<InstanceMonitoring, InstanceMonitoringBuilder> {
  _$InstanceMonitoring? _$v;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  _i2.MonitoringBuilder? _monitoring;
  _i2.MonitoringBuilder get monitoring =>
      _$this._monitoring ??= new _i2.MonitoringBuilder();
  set monitoring(_i2.MonitoringBuilder? monitoring) =>
      _$this._monitoring = monitoring;

  InstanceMonitoringBuilder() {
    InstanceMonitoring._init(this);
  }

  InstanceMonitoringBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceId = $v.instanceId;
      _monitoring = $v.monitoring?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceMonitoring other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InstanceMonitoring;
  }

  @override
  void update(void Function(InstanceMonitoringBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceMonitoring build() => _build();

  _$InstanceMonitoring _build() {
    _$InstanceMonitoring _$result;
    try {
      _$result = _$v ??
          new _$InstanceMonitoring._(
              instanceId: instanceId, monitoring: _monitoring?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'monitoring';
        _monitoring?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'InstanceMonitoring', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
