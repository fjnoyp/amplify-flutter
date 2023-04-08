// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.delete_transit_gateway_multicast_domain_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteTransitGatewayMulticastDomainResult
    extends DeleteTransitGatewayMulticastDomainResult {
  @override
  final _i2.TransitGatewayMulticastDomain? transitGatewayMulticastDomain;

  factory _$DeleteTransitGatewayMulticastDomainResult(
          [void Function(DeleteTransitGatewayMulticastDomainResultBuilder)?
              updates]) =>
      (new DeleteTransitGatewayMulticastDomainResultBuilder()..update(updates))
          ._build();

  _$DeleteTransitGatewayMulticastDomainResult._(
      {this.transitGatewayMulticastDomain})
      : super._();

  @override
  DeleteTransitGatewayMulticastDomainResult rebuild(
          void Function(DeleteTransitGatewayMulticastDomainResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteTransitGatewayMulticastDomainResultBuilder toBuilder() =>
      new DeleteTransitGatewayMulticastDomainResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteTransitGatewayMulticastDomainResult &&
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

class DeleteTransitGatewayMulticastDomainResultBuilder
    implements
        Builder<DeleteTransitGatewayMulticastDomainResult,
            DeleteTransitGatewayMulticastDomainResultBuilder> {
  _$DeleteTransitGatewayMulticastDomainResult? _$v;

  _i2.TransitGatewayMulticastDomainBuilder? _transitGatewayMulticastDomain;
  _i2.TransitGatewayMulticastDomainBuilder get transitGatewayMulticastDomain =>
      _$this._transitGatewayMulticastDomain ??=
          new _i2.TransitGatewayMulticastDomainBuilder();
  set transitGatewayMulticastDomain(
          _i2.TransitGatewayMulticastDomainBuilder?
              transitGatewayMulticastDomain) =>
      _$this._transitGatewayMulticastDomain = transitGatewayMulticastDomain;

  DeleteTransitGatewayMulticastDomainResultBuilder() {
    DeleteTransitGatewayMulticastDomainResult._init(this);
  }

  DeleteTransitGatewayMulticastDomainResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayMulticastDomain =
          $v.transitGatewayMulticastDomain?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteTransitGatewayMulticastDomainResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteTransitGatewayMulticastDomainResult;
  }

  @override
  void update(
      void Function(DeleteTransitGatewayMulticastDomainResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteTransitGatewayMulticastDomainResult build() => _build();

  _$DeleteTransitGatewayMulticastDomainResult _build() {
    _$DeleteTransitGatewayMulticastDomainResult _$result;
    try {
      _$result = _$v ??
          new _$DeleteTransitGatewayMulticastDomainResult._(
              transitGatewayMulticastDomain:
                  _transitGatewayMulticastDomain?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transitGatewayMulticastDomain';
        _transitGatewayMulticastDomain?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteTransitGatewayMulticastDomainResult',
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
