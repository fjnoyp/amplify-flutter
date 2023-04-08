// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.create_vpn_connection_route_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateVpnConnectionRouteRequest
    extends CreateVpnConnectionRouteRequest {
  @override
  final String destinationCidrBlock;
  @override
  final String vpnConnectionId;

  factory _$CreateVpnConnectionRouteRequest(
          [void Function(CreateVpnConnectionRouteRequestBuilder)? updates]) =>
      (new CreateVpnConnectionRouteRequestBuilder()..update(updates))._build();

  _$CreateVpnConnectionRouteRequest._(
      {required this.destinationCidrBlock, required this.vpnConnectionId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(destinationCidrBlock,
        r'CreateVpnConnectionRouteRequest', 'destinationCidrBlock');
    BuiltValueNullFieldError.checkNotNull(
        vpnConnectionId, r'CreateVpnConnectionRouteRequest', 'vpnConnectionId');
  }

  @override
  CreateVpnConnectionRouteRequest rebuild(
          void Function(CreateVpnConnectionRouteRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateVpnConnectionRouteRequestBuilder toBuilder() =>
      new CreateVpnConnectionRouteRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateVpnConnectionRouteRequest &&
        destinationCidrBlock == other.destinationCidrBlock &&
        vpnConnectionId == other.vpnConnectionId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, destinationCidrBlock.hashCode);
    _$hash = $jc(_$hash, vpnConnectionId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateVpnConnectionRouteRequestBuilder
    implements
        Builder<CreateVpnConnectionRouteRequest,
            CreateVpnConnectionRouteRequestBuilder> {
  _$CreateVpnConnectionRouteRequest? _$v;

  String? _destinationCidrBlock;
  String? get destinationCidrBlock => _$this._destinationCidrBlock;
  set destinationCidrBlock(String? destinationCidrBlock) =>
      _$this._destinationCidrBlock = destinationCidrBlock;

  String? _vpnConnectionId;
  String? get vpnConnectionId => _$this._vpnConnectionId;
  set vpnConnectionId(String? vpnConnectionId) =>
      _$this._vpnConnectionId = vpnConnectionId;

  CreateVpnConnectionRouteRequestBuilder() {
    CreateVpnConnectionRouteRequest._init(this);
  }

  CreateVpnConnectionRouteRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _destinationCidrBlock = $v.destinationCidrBlock;
      _vpnConnectionId = $v.vpnConnectionId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateVpnConnectionRouteRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateVpnConnectionRouteRequest;
  }

  @override
  void update(void Function(CreateVpnConnectionRouteRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateVpnConnectionRouteRequest build() => _build();

  _$CreateVpnConnectionRouteRequest _build() {
    final _$result = _$v ??
        new _$CreateVpnConnectionRouteRequest._(
            destinationCidrBlock: BuiltValueNullFieldError.checkNotNull(
                destinationCidrBlock,
                r'CreateVpnConnectionRouteRequest',
                'destinationCidrBlock'),
            vpnConnectionId: BuiltValueNullFieldError.checkNotNull(
                vpnConnectionId,
                r'CreateVpnConnectionRouteRequest',
                'vpnConnectionId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
