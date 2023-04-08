// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.transit_gateway_attachment_association;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransitGatewayAttachmentAssociation
    extends TransitGatewayAttachmentAssociation {
  @override
  final String? transitGatewayRouteTableId;
  @override
  final _i2.TransitGatewayAssociationState? state;

  factory _$TransitGatewayAttachmentAssociation(
          [void Function(TransitGatewayAttachmentAssociationBuilder)?
              updates]) =>
      (new TransitGatewayAttachmentAssociationBuilder()..update(updates))
          ._build();

  _$TransitGatewayAttachmentAssociation._(
      {this.transitGatewayRouteTableId, this.state})
      : super._();

  @override
  TransitGatewayAttachmentAssociation rebuild(
          void Function(TransitGatewayAttachmentAssociationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransitGatewayAttachmentAssociationBuilder toBuilder() =>
      new TransitGatewayAttachmentAssociationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransitGatewayAttachmentAssociation &&
        transitGatewayRouteTableId == other.transitGatewayRouteTableId &&
        state == other.state;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayRouteTableId.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TransitGatewayAttachmentAssociationBuilder
    implements
        Builder<TransitGatewayAttachmentAssociation,
            TransitGatewayAttachmentAssociationBuilder> {
  _$TransitGatewayAttachmentAssociation? _$v;

  String? _transitGatewayRouteTableId;
  String? get transitGatewayRouteTableId => _$this._transitGatewayRouteTableId;
  set transitGatewayRouteTableId(String? transitGatewayRouteTableId) =>
      _$this._transitGatewayRouteTableId = transitGatewayRouteTableId;

  _i2.TransitGatewayAssociationState? _state;
  _i2.TransitGatewayAssociationState? get state => _$this._state;
  set state(_i2.TransitGatewayAssociationState? state) => _$this._state = state;

  TransitGatewayAttachmentAssociationBuilder() {
    TransitGatewayAttachmentAssociation._init(this);
  }

  TransitGatewayAttachmentAssociationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayRouteTableId = $v.transitGatewayRouteTableId;
      _state = $v.state;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransitGatewayAttachmentAssociation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransitGatewayAttachmentAssociation;
  }

  @override
  void update(
      void Function(TransitGatewayAttachmentAssociationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransitGatewayAttachmentAssociation build() => _build();

  _$TransitGatewayAttachmentAssociation _build() {
    final _$result = _$v ??
        new _$TransitGatewayAttachmentAssociation._(
            transitGatewayRouteTableId: transitGatewayRouteTableId,
            state: state);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
