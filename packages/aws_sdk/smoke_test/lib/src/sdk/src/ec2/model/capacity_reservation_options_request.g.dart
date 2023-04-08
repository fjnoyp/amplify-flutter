// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.capacity_reservation_options_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CapacityReservationOptionsRequest
    extends CapacityReservationOptionsRequest {
  @override
  final _i2.FleetCapacityReservationUsageStrategy? usageStrategy;

  factory _$CapacityReservationOptionsRequest(
          [void Function(CapacityReservationOptionsRequestBuilder)? updates]) =>
      (new CapacityReservationOptionsRequestBuilder()..update(updates))
          ._build();

  _$CapacityReservationOptionsRequest._({this.usageStrategy}) : super._();

  @override
  CapacityReservationOptionsRequest rebuild(
          void Function(CapacityReservationOptionsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CapacityReservationOptionsRequestBuilder toBuilder() =>
      new CapacityReservationOptionsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CapacityReservationOptionsRequest &&
        usageStrategy == other.usageStrategy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, usageStrategy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CapacityReservationOptionsRequestBuilder
    implements
        Builder<CapacityReservationOptionsRequest,
            CapacityReservationOptionsRequestBuilder> {
  _$CapacityReservationOptionsRequest? _$v;

  _i2.FleetCapacityReservationUsageStrategy? _usageStrategy;
  _i2.FleetCapacityReservationUsageStrategy? get usageStrategy =>
      _$this._usageStrategy;
  set usageStrategy(_i2.FleetCapacityReservationUsageStrategy? usageStrategy) =>
      _$this._usageStrategy = usageStrategy;

  CapacityReservationOptionsRequestBuilder() {
    CapacityReservationOptionsRequest._init(this);
  }

  CapacityReservationOptionsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _usageStrategy = $v.usageStrategy;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CapacityReservationOptionsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CapacityReservationOptionsRequest;
  }

  @override
  void update(
      void Function(CapacityReservationOptionsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CapacityReservationOptionsRequest build() => _build();

  _$CapacityReservationOptionsRequest _build() {
    final _$result = _$v ??
        new _$CapacityReservationOptionsRequest._(usageStrategy: usageStrategy);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
