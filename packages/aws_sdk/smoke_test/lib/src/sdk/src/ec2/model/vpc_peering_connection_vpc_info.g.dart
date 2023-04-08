// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.vpc_peering_connection_vpc_info;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VpcPeeringConnectionVpcInfo extends VpcPeeringConnectionVpcInfo {
  @override
  final String? cidrBlock;
  @override
  final _i5.BuiltList<_i2.Ipv6CidrBlock>? ipv6CidrBlockSet;
  @override
  final _i5.BuiltList<_i3.CidrBlock>? cidrBlockSet;
  @override
  final String? ownerId;
  @override
  final _i4.VpcPeeringConnectionOptionsDescription? peeringOptions;
  @override
  final String? vpcId;
  @override
  final String? region;

  factory _$VpcPeeringConnectionVpcInfo(
          [void Function(VpcPeeringConnectionVpcInfoBuilder)? updates]) =>
      (new VpcPeeringConnectionVpcInfoBuilder()..update(updates))._build();

  _$VpcPeeringConnectionVpcInfo._(
      {this.cidrBlock,
      this.ipv6CidrBlockSet,
      this.cidrBlockSet,
      this.ownerId,
      this.peeringOptions,
      this.vpcId,
      this.region})
      : super._();

  @override
  VpcPeeringConnectionVpcInfo rebuild(
          void Function(VpcPeeringConnectionVpcInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VpcPeeringConnectionVpcInfoBuilder toBuilder() =>
      new VpcPeeringConnectionVpcInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VpcPeeringConnectionVpcInfo &&
        cidrBlock == other.cidrBlock &&
        ipv6CidrBlockSet == other.ipv6CidrBlockSet &&
        cidrBlockSet == other.cidrBlockSet &&
        ownerId == other.ownerId &&
        peeringOptions == other.peeringOptions &&
        vpcId == other.vpcId &&
        region == other.region;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cidrBlock.hashCode);
    _$hash = $jc(_$hash, ipv6CidrBlockSet.hashCode);
    _$hash = $jc(_$hash, cidrBlockSet.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jc(_$hash, peeringOptions.hashCode);
    _$hash = $jc(_$hash, vpcId.hashCode);
    _$hash = $jc(_$hash, region.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class VpcPeeringConnectionVpcInfoBuilder
    implements
        Builder<VpcPeeringConnectionVpcInfo,
            VpcPeeringConnectionVpcInfoBuilder> {
  _$VpcPeeringConnectionVpcInfo? _$v;

  String? _cidrBlock;
  String? get cidrBlock => _$this._cidrBlock;
  set cidrBlock(String? cidrBlock) => _$this._cidrBlock = cidrBlock;

  _i5.ListBuilder<_i2.Ipv6CidrBlock>? _ipv6CidrBlockSet;
  _i5.ListBuilder<_i2.Ipv6CidrBlock> get ipv6CidrBlockSet =>
      _$this._ipv6CidrBlockSet ??= new _i5.ListBuilder<_i2.Ipv6CidrBlock>();
  set ipv6CidrBlockSet(_i5.ListBuilder<_i2.Ipv6CidrBlock>? ipv6CidrBlockSet) =>
      _$this._ipv6CidrBlockSet = ipv6CidrBlockSet;

  _i5.ListBuilder<_i3.CidrBlock>? _cidrBlockSet;
  _i5.ListBuilder<_i3.CidrBlock> get cidrBlockSet =>
      _$this._cidrBlockSet ??= new _i5.ListBuilder<_i3.CidrBlock>();
  set cidrBlockSet(_i5.ListBuilder<_i3.CidrBlock>? cidrBlockSet) =>
      _$this._cidrBlockSet = cidrBlockSet;

  String? _ownerId;
  String? get ownerId => _$this._ownerId;
  set ownerId(String? ownerId) => _$this._ownerId = ownerId;

  _i4.VpcPeeringConnectionOptionsDescriptionBuilder? _peeringOptions;
  _i4.VpcPeeringConnectionOptionsDescriptionBuilder get peeringOptions =>
      _$this._peeringOptions ??=
          new _i4.VpcPeeringConnectionOptionsDescriptionBuilder();
  set peeringOptions(
          _i4.VpcPeeringConnectionOptionsDescriptionBuilder? peeringOptions) =>
      _$this._peeringOptions = peeringOptions;

  String? _vpcId;
  String? get vpcId => _$this._vpcId;
  set vpcId(String? vpcId) => _$this._vpcId = vpcId;

  String? _region;
  String? get region => _$this._region;
  set region(String? region) => _$this._region = region;

  VpcPeeringConnectionVpcInfoBuilder() {
    VpcPeeringConnectionVpcInfo._init(this);
  }

  VpcPeeringConnectionVpcInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cidrBlock = $v.cidrBlock;
      _ipv6CidrBlockSet = $v.ipv6CidrBlockSet?.toBuilder();
      _cidrBlockSet = $v.cidrBlockSet?.toBuilder();
      _ownerId = $v.ownerId;
      _peeringOptions = $v.peeringOptions?.toBuilder();
      _vpcId = $v.vpcId;
      _region = $v.region;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VpcPeeringConnectionVpcInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VpcPeeringConnectionVpcInfo;
  }

  @override
  void update(void Function(VpcPeeringConnectionVpcInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VpcPeeringConnectionVpcInfo build() => _build();

  _$VpcPeeringConnectionVpcInfo _build() {
    _$VpcPeeringConnectionVpcInfo _$result;
    try {
      _$result = _$v ??
          new _$VpcPeeringConnectionVpcInfo._(
              cidrBlock: cidrBlock,
              ipv6CidrBlockSet: _ipv6CidrBlockSet?.build(),
              cidrBlockSet: _cidrBlockSet?.build(),
              ownerId: ownerId,
              peeringOptions: _peeringOptions?.build(),
              vpcId: vpcId,
              region: region);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ipv6CidrBlockSet';
        _ipv6CidrBlockSet?.build();
        _$failedField = 'cidrBlockSet';
        _cidrBlockSet?.build();

        _$failedField = 'peeringOptions';
        _peeringOptions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'VpcPeeringConnectionVpcInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
