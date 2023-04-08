// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.create_transit_gateway_multicast_domain_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateTransitGatewayMulticastDomainResult
    extends CreateTransitGatewayMulticastDomainResult {
  @override
  final _i2.TransitGatewayMulticastDomain? transitGatewayMulticastDomain;

  factory _$CreateTransitGatewayMulticastDomainResult(
          [void Function(CreateTransitGatewayMulticastDomainResultBuilder)?
              updates]) =>
      (new CreateTransitGatewayMulticastDomainResultBuilder()..update(updates))
          ._build();

  _$CreateTransitGatewayMulticastDomainResult._(
      {this.transitGatewayMulticastDomain})
      : super._();

  @override
  CreateTransitGatewayMulticastDomainResult rebuild(
          void Function(CreateTransitGatewayMulticastDomainResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateTransitGatewayMulticastDomainResultBuilder toBuilder() =>
      new CreateTransitGatewayMulticastDomainResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateTransitGatewayMulticastDomainResult &&
        transitGatewayMulticastDomain == other.transitGatewayMulticastDomain;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayMulticastDomain.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateTransitGatewayMulticastDomainResultBuilder
    implements
        Builder<CreateTransitGatewayMulticastDomainResult,
            CreateTransitGatewayMulticastDomainResultBuilder> {
  _$CreateTransitGatewayMulticastDomainResult? _$v;

  _i2.TransitGatewayMulticastDomainBuilder? _transitGatewayMulticastDomain;
  _i2.TransitGatewayMulticastDomainBuilder get transitGatewayMulticastDomain =>
      _$this._transitGatewayMulticastDomain ??=
          new _i2.TransitGatewayMulticastDomainBuilder();
  set transitGatewayMulticastDomain(
          _i2.TransitGatewayMulticastDomainBuilder?
              transitGatewayMulticastDomain) =>
      _$this._transitGatewayMulticastDomain = transitGatewayMulticastDomain;

  CreateTransitGatewayMulticastDomainResultBuilder() {
    CreateTransitGatewayMulticastDomainResult._init(this);
  }

  CreateTransitGatewayMulticastDomainResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayMulticastDomain =
          $v.transitGatewayMulticastDomain?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateTransitGatewayMulticastDomainResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateTransitGatewayMulticastDomainResult;
  }

  @override
  void update(
      void Function(CreateTransitGatewayMulticastDomainResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateTransitGatewayMulticastDomainResult build() => _build();

  _$CreateTransitGatewayMulticastDomainResult _build() {
    _$CreateTransitGatewayMulticastDomainResult _$result;
    try {
      _$result = _$v ??
          new _$CreateTransitGatewayMulticastDomainResult._(
              transitGatewayMulticastDomain:
                  _transitGatewayMulticastDomain?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transitGatewayMulticastDomain';
        _transitGatewayMulticastDomain?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateTransitGatewayMulticastDomainResult',
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
