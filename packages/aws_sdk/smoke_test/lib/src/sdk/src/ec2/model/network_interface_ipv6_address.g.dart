// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.network_interface_ipv6_address;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NetworkInterfaceIpv6Address extends NetworkInterfaceIpv6Address {
  @override
  final String? ipv6Address;

  factory _$NetworkInterfaceIpv6Address(
          [void Function(NetworkInterfaceIpv6AddressBuilder)? updates]) =>
      (new NetworkInterfaceIpv6AddressBuilder()..update(updates))._build();

  _$NetworkInterfaceIpv6Address._({this.ipv6Address}) : super._();

  @override
  NetworkInterfaceIpv6Address rebuild(
          void Function(NetworkInterfaceIpv6AddressBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NetworkInterfaceIpv6AddressBuilder toBuilder() =>
      new NetworkInterfaceIpv6AddressBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NetworkInterfaceIpv6Address &&
        ipv6Address == other.ipv6Address;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ipv6Address.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class NetworkInterfaceIpv6AddressBuilder
    implements
        Builder<NetworkInterfaceIpv6Address,
            NetworkInterfaceIpv6AddressBuilder> {
  _$NetworkInterfaceIpv6Address? _$v;

  String? _ipv6Address;
  String? get ipv6Address => _$this._ipv6Address;
  set ipv6Address(String? ipv6Address) => _$this._ipv6Address = ipv6Address;

  NetworkInterfaceIpv6AddressBuilder() {
    NetworkInterfaceIpv6Address._init(this);
  }

  NetworkInterfaceIpv6AddressBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ipv6Address = $v.ipv6Address;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NetworkInterfaceIpv6Address other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NetworkInterfaceIpv6Address;
  }

  @override
  void update(void Function(NetworkInterfaceIpv6AddressBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NetworkInterfaceIpv6Address build() => _build();

  _$NetworkInterfaceIpv6Address _build() {
    final _$result =
        _$v ?? new _$NetworkInterfaceIpv6Address._(ipv6Address: ipv6Address);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
