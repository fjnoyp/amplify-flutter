// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.create_network_acl_entry_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateNetworkAclEntryRequest extends CreateNetworkAclEntryRequest {
  @override
  final String? cidrBlock;
  @override
  final bool dryRun;
  @override
  final bool egress;
  @override
  final _i3.IcmpTypeCode? icmpTypeCode;
  @override
  final String? ipv6CidrBlock;
  @override
  final String networkAclId;
  @override
  final _i4.PortRange? portRange;
  @override
  final String protocol;
  @override
  final _i5.RuleAction ruleAction;
  @override
  final int ruleNumber;

  factory _$CreateNetworkAclEntryRequest(
          [void Function(CreateNetworkAclEntryRequestBuilder)? updates]) =>
      (new CreateNetworkAclEntryRequestBuilder()..update(updates))._build();

  _$CreateNetworkAclEntryRequest._(
      {this.cidrBlock,
      required this.dryRun,
      required this.egress,
      this.icmpTypeCode,
      this.ipv6CidrBlock,
      required this.networkAclId,
      this.portRange,
      required this.protocol,
      required this.ruleAction,
      required this.ruleNumber})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateNetworkAclEntryRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        egress, r'CreateNetworkAclEntryRequest', 'egress');
    BuiltValueNullFieldError.checkNotNull(
        networkAclId, r'CreateNetworkAclEntryRequest', 'networkAclId');
    BuiltValueNullFieldError.checkNotNull(
        protocol, r'CreateNetworkAclEntryRequest', 'protocol');
    BuiltValueNullFieldError.checkNotNull(
        ruleAction, r'CreateNetworkAclEntryRequest', 'ruleAction');
    BuiltValueNullFieldError.checkNotNull(
        ruleNumber, r'CreateNetworkAclEntryRequest', 'ruleNumber');
  }

  @override
  CreateNetworkAclEntryRequest rebuild(
          void Function(CreateNetworkAclEntryRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateNetworkAclEntryRequestBuilder toBuilder() =>
      new CreateNetworkAclEntryRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateNetworkAclEntryRequest &&
        cidrBlock == other.cidrBlock &&
        dryRun == other.dryRun &&
        egress == other.egress &&
        icmpTypeCode == other.icmpTypeCode &&
        ipv6CidrBlock == other.ipv6CidrBlock &&
        networkAclId == other.networkAclId &&
        portRange == other.portRange &&
        protocol == other.protocol &&
        ruleAction == other.ruleAction &&
        ruleNumber == other.ruleNumber;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cidrBlock.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, egress.hashCode);
    _$hash = $jc(_$hash, icmpTypeCode.hashCode);
    _$hash = $jc(_$hash, ipv6CidrBlock.hashCode);
    _$hash = $jc(_$hash, networkAclId.hashCode);
    _$hash = $jc(_$hash, portRange.hashCode);
    _$hash = $jc(_$hash, protocol.hashCode);
    _$hash = $jc(_$hash, ruleAction.hashCode);
    _$hash = $jc(_$hash, ruleNumber.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateNetworkAclEntryRequestBuilder
    implements
        Builder<CreateNetworkAclEntryRequest,
            CreateNetworkAclEntryRequestBuilder> {
  _$CreateNetworkAclEntryRequest? _$v;

  String? _cidrBlock;
  String? get cidrBlock => _$this._cidrBlock;
  set cidrBlock(String? cidrBlock) => _$this._cidrBlock = cidrBlock;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  bool? _egress;
  bool? get egress => _$this._egress;
  set egress(bool? egress) => _$this._egress = egress;

  _i3.IcmpTypeCodeBuilder? _icmpTypeCode;
  _i3.IcmpTypeCodeBuilder get icmpTypeCode =>
      _$this._icmpTypeCode ??= new _i3.IcmpTypeCodeBuilder();
  set icmpTypeCode(_i3.IcmpTypeCodeBuilder? icmpTypeCode) =>
      _$this._icmpTypeCode = icmpTypeCode;

  String? _ipv6CidrBlock;
  String? get ipv6CidrBlock => _$this._ipv6CidrBlock;
  set ipv6CidrBlock(String? ipv6CidrBlock) =>
      _$this._ipv6CidrBlock = ipv6CidrBlock;

  String? _networkAclId;
  String? get networkAclId => _$this._networkAclId;
  set networkAclId(String? networkAclId) => _$this._networkAclId = networkAclId;

  _i4.PortRangeBuilder? _portRange;
  _i4.PortRangeBuilder get portRange =>
      _$this._portRange ??= new _i4.PortRangeBuilder();
  set portRange(_i4.PortRangeBuilder? portRange) =>
      _$this._portRange = portRange;

  String? _protocol;
  String? get protocol => _$this._protocol;
  set protocol(String? protocol) => _$this._protocol = protocol;

  _i5.RuleAction? _ruleAction;
  _i5.RuleAction? get ruleAction => _$this._ruleAction;
  set ruleAction(_i5.RuleAction? ruleAction) => _$this._ruleAction = ruleAction;

  int? _ruleNumber;
  int? get ruleNumber => _$this._ruleNumber;
  set ruleNumber(int? ruleNumber) => _$this._ruleNumber = ruleNumber;

  CreateNetworkAclEntryRequestBuilder() {
    CreateNetworkAclEntryRequest._init(this);
  }

  CreateNetworkAclEntryRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cidrBlock = $v.cidrBlock;
      _dryRun = $v.dryRun;
      _egress = $v.egress;
      _icmpTypeCode = $v.icmpTypeCode?.toBuilder();
      _ipv6CidrBlock = $v.ipv6CidrBlock;
      _networkAclId = $v.networkAclId;
      _portRange = $v.portRange?.toBuilder();
      _protocol = $v.protocol;
      _ruleAction = $v.ruleAction;
      _ruleNumber = $v.ruleNumber;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateNetworkAclEntryRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateNetworkAclEntryRequest;
  }

  @override
  void update(void Function(CreateNetworkAclEntryRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateNetworkAclEntryRequest build() => _build();

  _$CreateNetworkAclEntryRequest _build() {
    _$CreateNetworkAclEntryRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateNetworkAclEntryRequest._(
              cidrBlock: cidrBlock,
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreateNetworkAclEntryRequest', 'dryRun'),
              egress: BuiltValueNullFieldError.checkNotNull(
                  egress, r'CreateNetworkAclEntryRequest', 'egress'),
              icmpTypeCode: _icmpTypeCode?.build(),
              ipv6CidrBlock: ipv6CidrBlock,
              networkAclId: BuiltValueNullFieldError.checkNotNull(networkAclId,
                  r'CreateNetworkAclEntryRequest', 'networkAclId'),
              portRange: _portRange?.build(),
              protocol: BuiltValueNullFieldError.checkNotNull(
                  protocol, r'CreateNetworkAclEntryRequest', 'protocol'),
              ruleAction: BuiltValueNullFieldError.checkNotNull(
                  ruleAction, r'CreateNetworkAclEntryRequest', 'ruleAction'),
              ruleNumber: BuiltValueNullFieldError.checkNotNull(
                  ruleNumber, r'CreateNetworkAclEntryRequest', 'ruleNumber'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'icmpTypeCode';
        _icmpTypeCode?.build();

        _$failedField = 'portRange';
        _portRange?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateNetworkAclEntryRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
