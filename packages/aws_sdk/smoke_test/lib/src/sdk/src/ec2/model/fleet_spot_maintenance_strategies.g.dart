// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.fleet_spot_maintenance_strategies;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FleetSpotMaintenanceStrategies extends FleetSpotMaintenanceStrategies {
  @override
  final _i2.FleetSpotCapacityRebalance? capacityRebalance;

  factory _$FleetSpotMaintenanceStrategies(
          [void Function(FleetSpotMaintenanceStrategiesBuilder)? updates]) =>
      (new FleetSpotMaintenanceStrategiesBuilder()..update(updates))._build();

  _$FleetSpotMaintenanceStrategies._({this.capacityRebalance}) : super._();

  @override
  FleetSpotMaintenanceStrategies rebuild(
          void Function(FleetSpotMaintenanceStrategiesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FleetSpotMaintenanceStrategiesBuilder toBuilder() =>
      new FleetSpotMaintenanceStrategiesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FleetSpotMaintenanceStrategies &&
        capacityRebalance == other.capacityRebalance;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, capacityRebalance.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class FleetSpotMaintenanceStrategiesBuilder
    implements
        Builder<FleetSpotMaintenanceStrategies,
            FleetSpotMaintenanceStrategiesBuilder> {
  _$FleetSpotMaintenanceStrategies? _$v;

  _i2.FleetSpotCapacityRebalanceBuilder? _capacityRebalance;
  _i2.FleetSpotCapacityRebalanceBuilder get capacityRebalance =>
      _$this._capacityRebalance ??= new _i2.FleetSpotCapacityRebalanceBuilder();
  set capacityRebalance(
          _i2.FleetSpotCapacityRebalanceBuilder? capacityRebalance) =>
      _$this._capacityRebalance = capacityRebalance;

  FleetSpotMaintenanceStrategiesBuilder() {
    FleetSpotMaintenanceStrategies._init(this);
  }

  FleetSpotMaintenanceStrategiesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _capacityRebalance = $v.capacityRebalance?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FleetSpotMaintenanceStrategies other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FleetSpotMaintenanceStrategies;
  }

  @override
  void update(void Function(FleetSpotMaintenanceStrategiesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FleetSpotMaintenanceStrategies build() => _build();

  _$FleetSpotMaintenanceStrategies _build() {
    _$FleetSpotMaintenanceStrategies _$result;
    try {
      _$result = _$v ??
          new _$FleetSpotMaintenanceStrategies._(
              capacityRebalance: _capacityRebalance?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'capacityRebalance';
        _capacityRebalance?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'FleetSpotMaintenanceStrategies', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
