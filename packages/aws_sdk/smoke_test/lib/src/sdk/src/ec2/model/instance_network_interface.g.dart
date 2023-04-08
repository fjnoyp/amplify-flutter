// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.instance_network_interface;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceNetworkInterface extends InstanceNetworkInterface {
  @override
  final _i2.InstanceNetworkInterfaceAssociation? association;
  @override
  final _i3.InstanceNetworkInterfaceAttachment? attachment;
  @override
  final String? description;
  @override
  final _i10.BuiltList<_i4.GroupIdentifier>? groups;
  @override
  final _i10.BuiltList<_i5.InstanceIpv6Address>? ipv6Addresses;
  @override
  final String? macAddress;
  @override
  final String? networkInterfaceId;
  @override
  final String? ownerId;
  @override
  final String? privateDnsName;
  @override
  final String? privateIpAddress;
  @override
  final _i10.BuiltList<_i6.InstancePrivateIpAddress>? privateIpAddresses;
  @override
  final bool sourceDestCheck;
  @override
  final _i7.NetworkInterfaceStatus? status;
  @override
  final String? subnetId;
  @override
  final String? vpcId;
  @override
  final String? interfaceType;
  @override
  final _i10.BuiltList<_i8.InstanceIpv4Prefix>? ipv4Prefixes;
  @override
  final _i10.BuiltList<_i9.InstanceIpv6Prefix>? ipv6Prefixes;

  factory _$InstanceNetworkInterface(
          [void Function(InstanceNetworkInterfaceBuilder)? updates]) =>
      (new InstanceNetworkInterfaceBuilder()..update(updates))._build();

  _$InstanceNetworkInterface._(
      {this.association,
      this.attachment,
      this.description,
      this.groups,
      this.ipv6Addresses,
      this.macAddress,
      this.networkInterfaceId,
      this.ownerId,
      this.privateDnsName,
      this.privateIpAddress,
      this.privateIpAddresses,
      required this.sourceDestCheck,
      this.status,
      this.subnetId,
      this.vpcId,
      this.interfaceType,
      this.ipv4Prefixes,
      this.ipv6Prefixes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        sourceDestCheck, r'InstanceNetworkInterface', 'sourceDestCheck');
  }

  @override
  InstanceNetworkInterface rebuild(
          void Function(InstanceNetworkInterfaceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceNetworkInterfaceBuilder toBuilder() =>
      new InstanceNetworkInterfaceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceNetworkInterface &&
        association == other.association &&
        attachment == other.attachment &&
        description == other.description &&
        groups == other.groups &&
        ipv6Addresses == other.ipv6Addresses &&
        macAddress == other.macAddress &&
        networkInterfaceId == other.networkInterfaceId &&
        ownerId == other.ownerId &&
        privateDnsName == other.privateDnsName &&
        privateIpAddress == other.privateIpAddress &&
        privateIpAddresses == other.privateIpAddresses &&
        sourceDestCheck == other.sourceDestCheck &&
        status == other.status &&
        subnetId == other.subnetId &&
        vpcId == other.vpcId &&
        interfaceType == other.interfaceType &&
        ipv4Prefixes == other.ipv4Prefixes &&
        ipv6Prefixes == other.ipv6Prefixes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, association.hashCode);
    _$hash = $jc(_$hash, attachment.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, groups.hashCode);
    _$hash = $jc(_$hash, ipv6Addresses.hashCode);
    _$hash = $jc(_$hash, macAddress.hashCode);
    _$hash = $jc(_$hash, networkInterfaceId.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jc(_$hash, privateDnsName.hashCode);
    _$hash = $jc(_$hash, privateIpAddress.hashCode);
    _$hash = $jc(_$hash, privateIpAddresses.hashCode);
    _$hash = $jc(_$hash, sourceDestCheck.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, subnetId.hashCode);
    _$hash = $jc(_$hash, vpcId.hashCode);
    _$hash = $jc(_$hash, interfaceType.hashCode);
    _$hash = $jc(_$hash, ipv4Prefixes.hashCode);
    _$hash = $jc(_$hash, ipv6Prefixes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InstanceNetworkInterfaceBuilder
    implements
        Builder<InstanceNetworkInterface, InstanceNetworkInterfaceBuilder> {
  _$InstanceNetworkInterface? _$v;

  _i2.InstanceNetworkInterfaceAssociationBuilder? _association;
  _i2.InstanceNetworkInterfaceAssociationBuilder get association =>
      _$this._association ??=
          new _i2.InstanceNetworkInterfaceAssociationBuilder();
  set association(
          _i2.InstanceNetworkInterfaceAssociationBuilder? association) =>
      _$this._association = association;

  _i3.InstanceNetworkInterfaceAttachmentBuilder? _attachment;
  _i3.InstanceNetworkInterfaceAttachmentBuilder get attachment =>
      _$this._attachment ??=
          new _i3.InstanceNetworkInterfaceAttachmentBuilder();
  set attachment(_i3.InstanceNetworkInterfaceAttachmentBuilder? attachment) =>
      _$this._attachment = attachment;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  _i10.ListBuilder<_i4.GroupIdentifier>? _groups;
  _i10.ListBuilder<_i4.GroupIdentifier> get groups =>
      _$this._groups ??= new _i10.ListBuilder<_i4.GroupIdentifier>();
  set groups(_i10.ListBuilder<_i4.GroupIdentifier>? groups) =>
      _$this._groups = groups;

  _i10.ListBuilder<_i5.InstanceIpv6Address>? _ipv6Addresses;
  _i10.ListBuilder<_i5.InstanceIpv6Address> get ipv6Addresses =>
      _$this._ipv6Addresses ??= new _i10.ListBuilder<_i5.InstanceIpv6Address>();
  set ipv6Addresses(_i10.ListBuilder<_i5.InstanceIpv6Address>? ipv6Addresses) =>
      _$this._ipv6Addresses = ipv6Addresses;

  String? _macAddress;
  String? get macAddress => _$this._macAddress;
  set macAddress(String? macAddress) => _$this._macAddress = macAddress;

  String? _networkInterfaceId;
  String? get networkInterfaceId => _$this._networkInterfaceId;
  set networkInterfaceId(String? networkInterfaceId) =>
      _$this._networkInterfaceId = networkInterfaceId;

  String? _ownerId;
  String? get ownerId => _$this._ownerId;
  set ownerId(String? ownerId) => _$this._ownerId = ownerId;

  String? _privateDnsName;
  String? get privateDnsName => _$this._privateDnsName;
  set privateDnsName(String? privateDnsName) =>
      _$this._privateDnsName = privateDnsName;

  String? _privateIpAddress;
  String? get privateIpAddress => _$this._privateIpAddress;
  set privateIpAddress(String? privateIpAddress) =>
      _$this._privateIpAddress = privateIpAddress;

  _i10.ListBuilder<_i6.InstancePrivateIpAddress>? _privateIpAddresses;
  _i10.ListBuilder<_i6.InstancePrivateIpAddress> get privateIpAddresses =>
      _$this._privateIpAddresses ??=
          new _i10.ListBuilder<_i6.InstancePrivateIpAddress>();
  set privateIpAddresses(
          _i10.ListBuilder<_i6.InstancePrivateIpAddress>? privateIpAddresses) =>
      _$this._privateIpAddresses = privateIpAddresses;

  bool? _sourceDestCheck;
  bool? get sourceDestCheck => _$this._sourceDestCheck;
  set sourceDestCheck(bool? sourceDestCheck) =>
      _$this._sourceDestCheck = sourceDestCheck;

  _i7.NetworkInterfaceStatus? _status;
  _i7.NetworkInterfaceStatus? get status => _$this._status;
  set status(_i7.NetworkInterfaceStatus? status) => _$this._status = status;

  String? _subnetId;
  String? get subnetId => _$this._subnetId;
  set subnetId(String? subnetId) => _$this._subnetId = subnetId;

  String? _vpcId;
  String? get vpcId => _$this._vpcId;
  set vpcId(String? vpcId) => _$this._vpcId = vpcId;

  String? _interfaceType;
  String? get interfaceType => _$this._interfaceType;
  set interfaceType(String? interfaceType) =>
      _$this._interfaceType = interfaceType;

  _i10.ListBuilder<_i8.InstanceIpv4Prefix>? _ipv4Prefixes;
  _i10.ListBuilder<_i8.InstanceIpv4Prefix> get ipv4Prefixes =>
      _$this._ipv4Prefixes ??= new _i10.ListBuilder<_i8.InstanceIpv4Prefix>();
  set ipv4Prefixes(_i10.ListBuilder<_i8.InstanceIpv4Prefix>? ipv4Prefixes) =>
      _$this._ipv4Prefixes = ipv4Prefixes;

  _i10.ListBuilder<_i9.InstanceIpv6Prefix>? _ipv6Prefixes;
  _i10.ListBuilder<_i9.InstanceIpv6Prefix> get ipv6Prefixes =>
      _$this._ipv6Prefixes ??= new _i10.ListBuilder<_i9.InstanceIpv6Prefix>();
  set ipv6Prefixes(_i10.ListBuilder<_i9.InstanceIpv6Prefix>? ipv6Prefixes) =>
      _$this._ipv6Prefixes = ipv6Prefixes;

  InstanceNetworkInterfaceBuilder() {
    InstanceNetworkInterface._init(this);
  }

  InstanceNetworkInterfaceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _association = $v.association?.toBuilder();
      _attachment = $v.attachment?.toBuilder();
      _description = $v.description;
      _groups = $v.groups?.toBuilder();
      _ipv6Addresses = $v.ipv6Addresses?.toBuilder();
      _macAddress = $v.macAddress;
      _networkInterfaceId = $v.networkInterfaceId;
      _ownerId = $v.ownerId;
      _privateDnsName = $v.privateDnsName;
      _privateIpAddress = $v.privateIpAddress;
      _privateIpAddresses = $v.privateIpAddresses?.toBuilder();
      _sourceDestCheck = $v.sourceDestCheck;
      _status = $v.status;
      _subnetId = $v.subnetId;
      _vpcId = $v.vpcId;
      _interfaceType = $v.interfaceType;
      _ipv4Prefixes = $v.ipv4Prefixes?.toBuilder();
      _ipv6Prefixes = $v.ipv6Prefixes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceNetworkInterface other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InstanceNetworkInterface;
  }

  @override
  void update(void Function(InstanceNetworkInterfaceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceNetworkInterface build() => _build();

  _$InstanceNetworkInterface _build() {
    _$InstanceNetworkInterface _$result;
    try {
      _$result = _$v ??
          new _$InstanceNetworkInterface._(
              association: _association?.build(),
              attachment: _attachment?.build(),
              description: description,
              groups: _groups?.build(),
              ipv6Addresses: _ipv6Addresses?.build(),
              macAddress: macAddress,
              networkInterfaceId: networkInterfaceId,
              ownerId: ownerId,
              privateDnsName: privateDnsName,
              privateIpAddress: privateIpAddress,
              privateIpAddresses: _privateIpAddresses?.build(),
              sourceDestCheck: BuiltValueNullFieldError.checkNotNull(
                  sourceDestCheck,
                  r'InstanceNetworkInterface',
                  'sourceDestCheck'),
              status: status,
              subnetId: subnetId,
              vpcId: vpcId,
              interfaceType: interfaceType,
              ipv4Prefixes: _ipv4Prefixes?.build(),
              ipv6Prefixes: _ipv6Prefixes?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'association';
        _association?.build();
        _$failedField = 'attachment';
        _attachment?.build();

        _$failedField = 'groups';
        _groups?.build();
        _$failedField = 'ipv6Addresses';
        _ipv6Addresses?.build();

        _$failedField = 'privateIpAddresses';
        _privateIpAddresses?.build();

        _$failedField = 'ipv4Prefixes';
        _ipv4Prefixes?.build();
        _$failedField = 'ipv6Prefixes';
        _ipv6Prefixes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'InstanceNetworkInterface', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
