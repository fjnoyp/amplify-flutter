// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.delete_transit_gateway_route_table_announcement_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteTransitGatewayRouteTableAnnouncementResult
    extends DeleteTransitGatewayRouteTableAnnouncementResult {
  @override
  final _i2.TransitGatewayRouteTableAnnouncement?
      transitGatewayRouteTableAnnouncement;

  factory _$DeleteTransitGatewayRouteTableAnnouncementResult(
          [void Function(
                  DeleteTransitGatewayRouteTableAnnouncementResultBuilder)?
              updates]) =>
      (new DeleteTransitGatewayRouteTableAnnouncementResultBuilder()
            ..update(updates))
          ._build();

  _$DeleteTransitGatewayRouteTableAnnouncementResult._(
      {this.transitGatewayRouteTableAnnouncement})
      : super._();

  @override
  DeleteTransitGatewayRouteTableAnnouncementResult rebuild(
          void Function(DeleteTransitGatewayRouteTableAnnouncementResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteTransitGatewayRouteTableAnnouncementResultBuilder toBuilder() =>
      new DeleteTransitGatewayRouteTableAnnouncementResultBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteTransitGatewayRouteTableAnnouncementResult &&
        transitGatewayRouteTableAnnouncement ==
            other.transitGatewayRouteTableAnnouncement;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayRouteTableAnnouncement.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteTransitGatewayRouteTableAnnouncementResultBuilder
    implements
        Builder<DeleteTransitGatewayRouteTableAnnouncementResult,
            DeleteTransitGatewayRouteTableAnnouncementResultBuilder> {
  _$DeleteTransitGatewayRouteTableAnnouncementResult? _$v;

  _i2.TransitGatewayRouteTableAnnouncementBuilder?
      _transitGatewayRouteTableAnnouncement;
  _i2.TransitGatewayRouteTableAnnouncementBuilder
      get transitGatewayRouteTableAnnouncement =>
          _$this._transitGatewayRouteTableAnnouncement ??=
              new _i2.TransitGatewayRouteTableAnnouncementBuilder();
  set transitGatewayRouteTableAnnouncement(
          _i2.TransitGatewayRouteTableAnnouncementBuilder?
              transitGatewayRouteTableAnnouncement) =>
      _$this._transitGatewayRouteTableAnnouncement =
          transitGatewayRouteTableAnnouncement;

  DeleteTransitGatewayRouteTableAnnouncementResultBuilder() {
    DeleteTransitGatewayRouteTableAnnouncementResult._init(this);
  }

  DeleteTransitGatewayRouteTableAnnouncementResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayRouteTableAnnouncement =
          $v.transitGatewayRouteTableAnnouncement?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteTransitGatewayRouteTableAnnouncementResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteTransitGatewayRouteTableAnnouncementResult;
  }

  @override
  void update(
      void Function(DeleteTransitGatewayRouteTableAnnouncementResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteTransitGatewayRouteTableAnnouncementResult build() => _build();

  _$DeleteTransitGatewayRouteTableAnnouncementResult _build() {
    _$DeleteTransitGatewayRouteTableAnnouncementResult _$result;
    try {
      _$result = _$v ??
          new _$DeleteTransitGatewayRouteTableAnnouncementResult._(
              transitGatewayRouteTableAnnouncement:
                  _transitGatewayRouteTableAnnouncement?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transitGatewayRouteTableAnnouncement';
        _transitGatewayRouteTableAnnouncement?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteTransitGatewayRouteTableAnnouncementResult',
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
