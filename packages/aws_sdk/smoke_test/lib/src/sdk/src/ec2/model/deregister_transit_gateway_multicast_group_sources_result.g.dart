// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.deregister_transit_gateway_multicast_group_sources_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeregisterTransitGatewayMulticastGroupSourcesResult
    extends DeregisterTransitGatewayMulticastGroupSourcesResult {
  @override
  final _i2.TransitGatewayMulticastDeregisteredGroupSources?
      deregisteredMulticastGroupSources;

  factory _$DeregisterTransitGatewayMulticastGroupSourcesResult(
          [void Function(
                  DeregisterTransitGatewayMulticastGroupSourcesResultBuilder)?
              updates]) =>
      (new DeregisterTransitGatewayMulticastGroupSourcesResultBuilder()
            ..update(updates))
          ._build();

  _$DeregisterTransitGatewayMulticastGroupSourcesResult._(
      {this.deregisteredMulticastGroupSources})
      : super._();

  @override
  DeregisterTransitGatewayMulticastGroupSourcesResult rebuild(
          void Function(
                  DeregisterTransitGatewayMulticastGroupSourcesResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeregisterTransitGatewayMulticastGroupSourcesResultBuilder toBuilder() =>
      new DeregisterTransitGatewayMulticastGroupSourcesResultBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeregisterTransitGatewayMulticastGroupSourcesResult &&
        deregisteredMulticastGroupSources ==
            other.deregisteredMulticastGroupSources;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deregisteredMulticastGroupSources.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeregisterTransitGatewayMulticastGroupSourcesResultBuilder
    implements
        Builder<DeregisterTransitGatewayMulticastGroupSourcesResult,
            DeregisterTransitGatewayMulticastGroupSourcesResultBuilder> {
  _$DeregisterTransitGatewayMulticastGroupSourcesResult? _$v;

  _i2.TransitGatewayMulticastDeregisteredGroupSourcesBuilder?
      _deregisteredMulticastGroupSources;
  _i2.TransitGatewayMulticastDeregisteredGroupSourcesBuilder
      get deregisteredMulticastGroupSources =>
          _$this._deregisteredMulticastGroupSources ??=
              new _i2.TransitGatewayMulticastDeregisteredGroupSourcesBuilder();
  set deregisteredMulticastGroupSources(
          _i2.TransitGatewayMulticastDeregisteredGroupSourcesBuilder?
              deregisteredMulticastGroupSources) =>
      _$this._deregisteredMulticastGroupSources =
          deregisteredMulticastGroupSources;

  DeregisterTransitGatewayMulticastGroupSourcesResultBuilder() {
    DeregisterTransitGatewayMulticastGroupSourcesResult._init(this);
  }

  DeregisterTransitGatewayMulticastGroupSourcesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deregisteredMulticastGroupSources =
          $v.deregisteredMulticastGroupSources?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeregisterTransitGatewayMulticastGroupSourcesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeregisterTransitGatewayMulticastGroupSourcesResult;
  }

  @override
  void update(
      void Function(DeregisterTransitGatewayMulticastGroupSourcesResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DeregisterTransitGatewayMulticastGroupSourcesResult build() => _build();

  _$DeregisterTransitGatewayMulticastGroupSourcesResult _build() {
    _$DeregisterTransitGatewayMulticastGroupSourcesResult _$result;
    try {
      _$result = _$v ??
          new _$DeregisterTransitGatewayMulticastGroupSourcesResult._(
              deregisteredMulticastGroupSources:
                  _deregisteredMulticastGroupSources?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deregisteredMulticastGroupSources';
        _deregisteredMulticastGroupSources?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeregisterTransitGatewayMulticastGroupSourcesResult',
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
