// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.launch_template_placement;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LaunchTemplatePlacement extends LaunchTemplatePlacement {
  @override
  final String? availabilityZone;
  @override
  final String? affinity;
  @override
  final String? groupName;
  @override
  final String? hostId;
  @override
  final _i2.Tenancy? tenancy;
  @override
  final String? spreadDomain;
  @override
  final String? hostResourceGroupArn;
  @override
  final int partitionNumber;

  factory _$LaunchTemplatePlacement(
          [void Function(LaunchTemplatePlacementBuilder)? updates]) =>
      (new LaunchTemplatePlacementBuilder()..update(updates))._build();

  _$LaunchTemplatePlacement._(
      {this.availabilityZone,
      this.affinity,
      this.groupName,
      this.hostId,
      this.tenancy,
      this.spreadDomain,
      this.hostResourceGroupArn,
      required this.partitionNumber})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        partitionNumber, r'LaunchTemplatePlacement', 'partitionNumber');
  }

  @override
  LaunchTemplatePlacement rebuild(
          void Function(LaunchTemplatePlacementBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LaunchTemplatePlacementBuilder toBuilder() =>
      new LaunchTemplatePlacementBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LaunchTemplatePlacement &&
        availabilityZone == other.availabilityZone &&
        affinity == other.affinity &&
        groupName == other.groupName &&
        hostId == other.hostId &&
        tenancy == other.tenancy &&
        spreadDomain == other.spreadDomain &&
        hostResourceGroupArn == other.hostResourceGroupArn &&
        partitionNumber == other.partitionNumber;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, availabilityZone.hashCode);
    _$hash = $jc(_$hash, affinity.hashCode);
    _$hash = $jc(_$hash, groupName.hashCode);
    _$hash = $jc(_$hash, hostId.hashCode);
    _$hash = $jc(_$hash, tenancy.hashCode);
    _$hash = $jc(_$hash, spreadDomain.hashCode);
    _$hash = $jc(_$hash, hostResourceGroupArn.hashCode);
    _$hash = $jc(_$hash, partitionNumber.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class LaunchTemplatePlacementBuilder
    implements
        Builder<LaunchTemplatePlacement, LaunchTemplatePlacementBuilder> {
  _$LaunchTemplatePlacement? _$v;

  String? _availabilityZone;
  String? get availabilityZone => _$this._availabilityZone;
  set availabilityZone(String? availabilityZone) =>
      _$this._availabilityZone = availabilityZone;

  String? _affinity;
  String? get affinity => _$this._affinity;
  set affinity(String? affinity) => _$this._affinity = affinity;

  String? _groupName;
  String? get groupName => _$this._groupName;
  set groupName(String? groupName) => _$this._groupName = groupName;

  String? _hostId;
  String? get hostId => _$this._hostId;
  set hostId(String? hostId) => _$this._hostId = hostId;

  _i2.Tenancy? _tenancy;
  _i2.Tenancy? get tenancy => _$this._tenancy;
  set tenancy(_i2.Tenancy? tenancy) => _$this._tenancy = tenancy;

  String? _spreadDomain;
  String? get spreadDomain => _$this._spreadDomain;
  set spreadDomain(String? spreadDomain) => _$this._spreadDomain = spreadDomain;

  String? _hostResourceGroupArn;
  String? get hostResourceGroupArn => _$this._hostResourceGroupArn;
  set hostResourceGroupArn(String? hostResourceGroupArn) =>
      _$this._hostResourceGroupArn = hostResourceGroupArn;

  int? _partitionNumber;
  int? get partitionNumber => _$this._partitionNumber;
  set partitionNumber(int? partitionNumber) =>
      _$this._partitionNumber = partitionNumber;

  LaunchTemplatePlacementBuilder() {
    LaunchTemplatePlacement._init(this);
  }

  LaunchTemplatePlacementBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _availabilityZone = $v.availabilityZone;
      _affinity = $v.affinity;
      _groupName = $v.groupName;
      _hostId = $v.hostId;
      _tenancy = $v.tenancy;
      _spreadDomain = $v.spreadDomain;
      _hostResourceGroupArn = $v.hostResourceGroupArn;
      _partitionNumber = $v.partitionNumber;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LaunchTemplatePlacement other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LaunchTemplatePlacement;
  }

  @override
  void update(void Function(LaunchTemplatePlacementBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LaunchTemplatePlacement build() => _build();

  _$LaunchTemplatePlacement _build() {
    final _$result = _$v ??
        new _$LaunchTemplatePlacement._(
            availabilityZone: availabilityZone,
            affinity: affinity,
            groupName: groupName,
            hostId: hostId,
            tenancy: tenancy,
            spreadDomain: spreadDomain,
            hostResourceGroupArn: hostResourceGroupArn,
            partitionNumber: BuiltValueNullFieldError.checkNotNull(
                partitionNumber,
                r'LaunchTemplatePlacement',
                'partitionNumber'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
