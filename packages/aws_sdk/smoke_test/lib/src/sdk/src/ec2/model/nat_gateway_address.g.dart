// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.nat_gateway_address;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NatGatewayAddress extends NatGatewayAddress {
  @override
  final String? allocationId;
  @override
  final String? networkInterfaceId;
  @override
  final String? privateIp;
  @override
  final String? publicIp;

  factory _$NatGatewayAddress(
          [void Function(NatGatewayAddressBuilder)? updates]) =>
      (new NatGatewayAddressBuilder()..update(updates))._build();

  _$NatGatewayAddress._(
      {this.allocationId,
      this.networkInterfaceId,
      this.privateIp,
      this.publicIp})
      : super._();

  @override
  NatGatewayAddress rebuild(void Function(NatGatewayAddressBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NatGatewayAddressBuilder toBuilder() =>
      new NatGatewayAddressBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NatGatewayAddress &&
        allocationId == other.allocationId &&
        networkInterfaceId == other.networkInterfaceId &&
        privateIp == other.privateIp &&
        publicIp == other.publicIp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, allocationId.hashCode);
    _$hash = $jc(_$hash, networkInterfaceId.hashCode);
    _$hash = $jc(_$hash, privateIp.hashCode);
    _$hash = $jc(_$hash, publicIp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class NatGatewayAddressBuilder
    implements Builder<NatGatewayAddress, NatGatewayAddressBuilder> {
  _$NatGatewayAddress? _$v;

  String? _allocationId;
  String? get allocationId => _$this._allocationId;
  set allocationId(String? allocationId) => _$this._allocationId = allocationId;

  String? _networkInterfaceId;
  String? get networkInterfaceId => _$this._networkInterfaceId;
  set networkInterfaceId(String? networkInterfaceId) =>
      _$this._networkInterfaceId = networkInterfaceId;

  String? _privateIp;
  String? get privateIp => _$this._privateIp;
  set privateIp(String? privateIp) => _$this._privateIp = privateIp;

  String? _publicIp;
  String? get publicIp => _$this._publicIp;
  set publicIp(String? publicIp) => _$this._publicIp = publicIp;

  NatGatewayAddressBuilder() {
    NatGatewayAddress._init(this);
  }

  NatGatewayAddressBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _allocationId = $v.allocationId;
      _networkInterfaceId = $v.networkInterfaceId;
      _privateIp = $v.privateIp;
      _publicIp = $v.publicIp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NatGatewayAddress other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NatGatewayAddress;
  }

  @override
  void update(void Function(NatGatewayAddressBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NatGatewayAddress build() => _build();

  _$NatGatewayAddress _build() {
    final _$result = _$v ??
        new _$NatGatewayAddress._(
            allocationId: allocationId,
            networkInterfaceId: networkInterfaceId,
            privateIp: privateIp,
            publicIp: publicIp);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
