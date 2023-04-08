// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.launch_template_instance_network_interface_specification_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LaunchTemplateInstanceNetworkInterfaceSpecificationRequest
    extends LaunchTemplateInstanceNetworkInterfaceSpecificationRequest {
  @override
  final bool associateCarrierIpAddress;
  @override
  final bool associatePublicIpAddress;
  @override
  final bool deleteOnTermination;
  @override
  final String? description;
  @override
  final int deviceIndex;
  @override
  final _i6.BuiltList<String>? groups;
  @override
  final String? interfaceType;
  @override
  final int ipv6AddressCount;
  @override
  final _i6.BuiltList<_i2.InstanceIpv6AddressRequest>? ipv6Addresses;
  @override
  final String? networkInterfaceId;
  @override
  final String? privateIpAddress;
  @override
  final _i6.BuiltList<_i3.PrivateIpAddressSpecification>? privateIpAddresses;
  @override
  final int secondaryPrivateIpAddressCount;
  @override
  final String? subnetId;
  @override
  final int networkCardIndex;
  @override
  final _i6.BuiltList<_i4.Ipv4PrefixSpecificationRequest>? ipv4Prefixes;
  @override
  final int ipv4PrefixCount;
  @override
  final _i6.BuiltList<_i5.Ipv6PrefixSpecificationRequest>? ipv6Prefixes;
  @override
  final int ipv6PrefixCount;

  factory _$LaunchTemplateInstanceNetworkInterfaceSpecificationRequest(
          [void Function(
                  LaunchTemplateInstanceNetworkInterfaceSpecificationRequestBuilder)?
              updates]) =>
      (new LaunchTemplateInstanceNetworkInterfaceSpecificationRequestBuilder()
            ..update(updates))
          ._build();

  _$LaunchTemplateInstanceNetworkInterfaceSpecificationRequest._(
      {required this.associateCarrierIpAddress,
      required this.associatePublicIpAddress,
      required this.deleteOnTermination,
      this.description,
      required this.deviceIndex,
      this.groups,
      this.interfaceType,
      required this.ipv6AddressCount,
      this.ipv6Addresses,
      this.networkInterfaceId,
      this.privateIpAddress,
      this.privateIpAddresses,
      required this.secondaryPrivateIpAddressCount,
      this.subnetId,
      required this.networkCardIndex,
      this.ipv4Prefixes,
      required this.ipv4PrefixCount,
      this.ipv6Prefixes,
      required this.ipv6PrefixCount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        associateCarrierIpAddress,
        r'LaunchTemplateInstanceNetworkInterfaceSpecificationRequest',
        'associateCarrierIpAddress');
    BuiltValueNullFieldError.checkNotNull(
        associatePublicIpAddress,
        r'LaunchTemplateInstanceNetworkInterfaceSpecificationRequest',
        'associatePublicIpAddress');
    BuiltValueNullFieldError.checkNotNull(
        deleteOnTermination,
        r'LaunchTemplateInstanceNetworkInterfaceSpecificationRequest',
        'deleteOnTermination');
    BuiltValueNullFieldError.checkNotNull(
        deviceIndex,
        r'LaunchTemplateInstanceNetworkInterfaceSpecificationRequest',
        'deviceIndex');
    BuiltValueNullFieldError.checkNotNull(
        ipv6AddressCount,
        r'LaunchTemplateInstanceNetworkInterfaceSpecificationRequest',
        'ipv6AddressCount');
    BuiltValueNullFieldError.checkNotNull(
        secondaryPrivateIpAddressCount,
        r'LaunchTemplateInstanceNetworkInterfaceSpecificationRequest',
        'secondaryPrivateIpAddressCount');
    BuiltValueNullFieldError.checkNotNull(
        networkCardIndex,
        r'LaunchTemplateInstanceNetworkInterfaceSpecificationRequest',
        'networkCardIndex');
    BuiltValueNullFieldError.checkNotNull(
        ipv4PrefixCount,
        r'LaunchTemplateInstanceNetworkInterfaceSpecificationRequest',
        'ipv4PrefixCount');
    BuiltValueNullFieldError.checkNotNull(
        ipv6PrefixCount,
        r'LaunchTemplateInstanceNetworkInterfaceSpecificationRequest',
        'ipv6PrefixCount');
  }

  @override
  LaunchTemplateInstanceNetworkInterfaceSpecificationRequest rebuild(
          void Function(
                  LaunchTemplateInstanceNetworkInterfaceSpecificationRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LaunchTemplateInstanceNetworkInterfaceSpecificationRequestBuilder
      toBuilder() =>
          new LaunchTemplateInstanceNetworkInterfaceSpecificationRequestBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is LaunchTemplateInstanceNetworkInterfaceSpecificationRequest &&
        associateCarrierIpAddress == other.associateCarrierIpAddress &&
        associatePublicIpAddress == other.associatePublicIpAddress &&
        deleteOnTermination == other.deleteOnTermination &&
        description == other.description &&
        deviceIndex == other.deviceIndex &&
        groups == other.groups &&
        interfaceType == other.interfaceType &&
        ipv6AddressCount == other.ipv6AddressCount &&
        ipv6Addresses == other.ipv6Addresses &&
        networkInterfaceId == other.networkInterfaceId &&
        privateIpAddress == other.privateIpAddress &&
        privateIpAddresses == other.privateIpAddresses &&
        secondaryPrivateIpAddressCount ==
            other.secondaryPrivateIpAddressCount &&
        subnetId == other.subnetId &&
        networkCardIndex == other.networkCardIndex &&
        ipv4Prefixes == other.ipv4Prefixes &&
        ipv4PrefixCount == other.ipv4PrefixCount &&
        ipv6Prefixes == other.ipv6Prefixes &&
        ipv6PrefixCount == other.ipv6PrefixCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, associateCarrierIpAddress.hashCode);
    _$hash = $jc(_$hash, associatePublicIpAddress.hashCode);
    _$hash = $jc(_$hash, deleteOnTermination.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, deviceIndex.hashCode);
    _$hash = $jc(_$hash, groups.hashCode);
    _$hash = $jc(_$hash, interfaceType.hashCode);
    _$hash = $jc(_$hash, ipv6AddressCount.hashCode);
    _$hash = $jc(_$hash, ipv6Addresses.hashCode);
    _$hash = $jc(_$hash, networkInterfaceId.hashCode);
    _$hash = $jc(_$hash, privateIpAddress.hashCode);
    _$hash = $jc(_$hash, privateIpAddresses.hashCode);
    _$hash = $jc(_$hash, secondaryPrivateIpAddressCount.hashCode);
    _$hash = $jc(_$hash, subnetId.hashCode);
    _$hash = $jc(_$hash, networkCardIndex.hashCode);
    _$hash = $jc(_$hash, ipv4Prefixes.hashCode);
    _$hash = $jc(_$hash, ipv4PrefixCount.hashCode);
    _$hash = $jc(_$hash, ipv6Prefixes.hashCode);
    _$hash = $jc(_$hash, ipv6PrefixCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class LaunchTemplateInstanceNetworkInterfaceSpecificationRequestBuilder
    implements
        Builder<LaunchTemplateInstanceNetworkInterfaceSpecificationRequest,
            LaunchTemplateInstanceNetworkInterfaceSpecificationRequestBuilder> {
  _$LaunchTemplateInstanceNetworkInterfaceSpecificationRequest? _$v;

  bool? _associateCarrierIpAddress;
  bool? get associateCarrierIpAddress => _$this._associateCarrierIpAddress;
  set associateCarrierIpAddress(bool? associateCarrierIpAddress) =>
      _$this._associateCarrierIpAddress = associateCarrierIpAddress;

  bool? _associatePublicIpAddress;
  bool? get associatePublicIpAddress => _$this._associatePublicIpAddress;
  set associatePublicIpAddress(bool? associatePublicIpAddress) =>
      _$this._associatePublicIpAddress = associatePublicIpAddress;

  bool? _deleteOnTermination;
  bool? get deleteOnTermination => _$this._deleteOnTermination;
  set deleteOnTermination(bool? deleteOnTermination) =>
      _$this._deleteOnTermination = deleteOnTermination;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  int? _deviceIndex;
  int? get deviceIndex => _$this._deviceIndex;
  set deviceIndex(int? deviceIndex) => _$this._deviceIndex = deviceIndex;

  _i6.ListBuilder<String>? _groups;
  _i6.ListBuilder<String> get groups =>
      _$this._groups ??= new _i6.ListBuilder<String>();
  set groups(_i6.ListBuilder<String>? groups) => _$this._groups = groups;

  String? _interfaceType;
  String? get interfaceType => _$this._interfaceType;
  set interfaceType(String? interfaceType) =>
      _$this._interfaceType = interfaceType;

  int? _ipv6AddressCount;
  int? get ipv6AddressCount => _$this._ipv6AddressCount;
  set ipv6AddressCount(int? ipv6AddressCount) =>
      _$this._ipv6AddressCount = ipv6AddressCount;

  _i6.ListBuilder<_i2.InstanceIpv6AddressRequest>? _ipv6Addresses;
  _i6.ListBuilder<_i2.InstanceIpv6AddressRequest> get ipv6Addresses =>
      _$this._ipv6Addresses ??=
          new _i6.ListBuilder<_i2.InstanceIpv6AddressRequest>();
  set ipv6Addresses(
          _i6.ListBuilder<_i2.InstanceIpv6AddressRequest>? ipv6Addresses) =>
      _$this._ipv6Addresses = ipv6Addresses;

  String? _networkInterfaceId;
  String? get networkInterfaceId => _$this._networkInterfaceId;
  set networkInterfaceId(String? networkInterfaceId) =>
      _$this._networkInterfaceId = networkInterfaceId;

  String? _privateIpAddress;
  String? get privateIpAddress => _$this._privateIpAddress;
  set privateIpAddress(String? privateIpAddress) =>
      _$this._privateIpAddress = privateIpAddress;

  _i6.ListBuilder<_i3.PrivateIpAddressSpecification>? _privateIpAddresses;
  _i6.ListBuilder<_i3.PrivateIpAddressSpecification> get privateIpAddresses =>
      _$this._privateIpAddresses ??=
          new _i6.ListBuilder<_i3.PrivateIpAddressSpecification>();
  set privateIpAddresses(
          _i6.ListBuilder<_i3.PrivateIpAddressSpecification>?
              privateIpAddresses) =>
      _$this._privateIpAddresses = privateIpAddresses;

  int? _secondaryPrivateIpAddressCount;
  int? get secondaryPrivateIpAddressCount =>
      _$this._secondaryPrivateIpAddressCount;
  set secondaryPrivateIpAddressCount(int? secondaryPrivateIpAddressCount) =>
      _$this._secondaryPrivateIpAddressCount = secondaryPrivateIpAddressCount;

  String? _subnetId;
  String? get subnetId => _$this._subnetId;
  set subnetId(String? subnetId) => _$this._subnetId = subnetId;

  int? _networkCardIndex;
  int? get networkCardIndex => _$this._networkCardIndex;
  set networkCardIndex(int? networkCardIndex) =>
      _$this._networkCardIndex = networkCardIndex;

  _i6.ListBuilder<_i4.Ipv4PrefixSpecificationRequest>? _ipv4Prefixes;
  _i6.ListBuilder<_i4.Ipv4PrefixSpecificationRequest> get ipv4Prefixes =>
      _$this._ipv4Prefixes ??=
          new _i6.ListBuilder<_i4.Ipv4PrefixSpecificationRequest>();
  set ipv4Prefixes(
          _i6.ListBuilder<_i4.Ipv4PrefixSpecificationRequest>? ipv4Prefixes) =>
      _$this._ipv4Prefixes = ipv4Prefixes;

  int? _ipv4PrefixCount;
  int? get ipv4PrefixCount => _$this._ipv4PrefixCount;
  set ipv4PrefixCount(int? ipv4PrefixCount) =>
      _$this._ipv4PrefixCount = ipv4PrefixCount;

  _i6.ListBuilder<_i5.Ipv6PrefixSpecificationRequest>? _ipv6Prefixes;
  _i6.ListBuilder<_i5.Ipv6PrefixSpecificationRequest> get ipv6Prefixes =>
      _$this._ipv6Prefixes ??=
          new _i6.ListBuilder<_i5.Ipv6PrefixSpecificationRequest>();
  set ipv6Prefixes(
          _i6.ListBuilder<_i5.Ipv6PrefixSpecificationRequest>? ipv6Prefixes) =>
      _$this._ipv6Prefixes = ipv6Prefixes;

  int? _ipv6PrefixCount;
  int? get ipv6PrefixCount => _$this._ipv6PrefixCount;
  set ipv6PrefixCount(int? ipv6PrefixCount) =>
      _$this._ipv6PrefixCount = ipv6PrefixCount;

  LaunchTemplateInstanceNetworkInterfaceSpecificationRequestBuilder() {
    LaunchTemplateInstanceNetworkInterfaceSpecificationRequest._init(this);
  }

  LaunchTemplateInstanceNetworkInterfaceSpecificationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _associateCarrierIpAddress = $v.associateCarrierIpAddress;
      _associatePublicIpAddress = $v.associatePublicIpAddress;
      _deleteOnTermination = $v.deleteOnTermination;
      _description = $v.description;
      _deviceIndex = $v.deviceIndex;
      _groups = $v.groups?.toBuilder();
      _interfaceType = $v.interfaceType;
      _ipv6AddressCount = $v.ipv6AddressCount;
      _ipv6Addresses = $v.ipv6Addresses?.toBuilder();
      _networkInterfaceId = $v.networkInterfaceId;
      _privateIpAddress = $v.privateIpAddress;
      _privateIpAddresses = $v.privateIpAddresses?.toBuilder();
      _secondaryPrivateIpAddressCount = $v.secondaryPrivateIpAddressCount;
      _subnetId = $v.subnetId;
      _networkCardIndex = $v.networkCardIndex;
      _ipv4Prefixes = $v.ipv4Prefixes?.toBuilder();
      _ipv4PrefixCount = $v.ipv4PrefixCount;
      _ipv6Prefixes = $v.ipv6Prefixes?.toBuilder();
      _ipv6PrefixCount = $v.ipv6PrefixCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      LaunchTemplateInstanceNetworkInterfaceSpecificationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LaunchTemplateInstanceNetworkInterfaceSpecificationRequest;
  }

  @override
  void update(
      void Function(
              LaunchTemplateInstanceNetworkInterfaceSpecificationRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  LaunchTemplateInstanceNetworkInterfaceSpecificationRequest build() =>
      _build();

  _$LaunchTemplateInstanceNetworkInterfaceSpecificationRequest _build() {
    _$LaunchTemplateInstanceNetworkInterfaceSpecificationRequest _$result;
    try {
      _$result = _$v ??
          new _$LaunchTemplateInstanceNetworkInterfaceSpecificationRequest._(
              associateCarrierIpAddress: BuiltValueNullFieldError.checkNotNull(
                  associateCarrierIpAddress,
                  r'LaunchTemplateInstanceNetworkInterfaceSpecificationRequest',
                  'associateCarrierIpAddress'),
              associatePublicIpAddress: BuiltValueNullFieldError.checkNotNull(
                  associatePublicIpAddress,
                  r'LaunchTemplateInstanceNetworkInterfaceSpecificationRequest',
                  'associatePublicIpAddress'),
              deleteOnTermination: BuiltValueNullFieldError.checkNotNull(
                  deleteOnTermination,
                  r'LaunchTemplateInstanceNetworkInterfaceSpecificationRequest',
                  'deleteOnTermination'),
              description: description,
              deviceIndex: BuiltValueNullFieldError.checkNotNull(
                  deviceIndex, r'LaunchTemplateInstanceNetworkInterfaceSpecificationRequest', 'deviceIndex'),
              groups: _groups?.build(),
              interfaceType: interfaceType,
              ipv6AddressCount: BuiltValueNullFieldError.checkNotNull(
                  ipv6AddressCount, r'LaunchTemplateInstanceNetworkInterfaceSpecificationRequest', 'ipv6AddressCount'),
              ipv6Addresses: _ipv6Addresses?.build(),
              networkInterfaceId: networkInterfaceId,
              privateIpAddress: privateIpAddress,
              privateIpAddresses: _privateIpAddresses?.build(),
              secondaryPrivateIpAddressCount: BuiltValueNullFieldError.checkNotNull(secondaryPrivateIpAddressCount, r'LaunchTemplateInstanceNetworkInterfaceSpecificationRequest', 'secondaryPrivateIpAddressCount'),
              subnetId: subnetId,
              networkCardIndex: BuiltValueNullFieldError.checkNotNull(networkCardIndex, r'LaunchTemplateInstanceNetworkInterfaceSpecificationRequest', 'networkCardIndex'),
              ipv4Prefixes: _ipv4Prefixes?.build(),
              ipv4PrefixCount: BuiltValueNullFieldError.checkNotNull(ipv4PrefixCount, r'LaunchTemplateInstanceNetworkInterfaceSpecificationRequest', 'ipv4PrefixCount'),
              ipv6Prefixes: _ipv6Prefixes?.build(),
              ipv6PrefixCount: BuiltValueNullFieldError.checkNotNull(ipv6PrefixCount, r'LaunchTemplateInstanceNetworkInterfaceSpecificationRequest', 'ipv6PrefixCount'));
    } catch (_) {
      late String _$failedField;
      try {
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
            r'LaunchTemplateInstanceNetworkInterfaceSpecificationRequest',
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
