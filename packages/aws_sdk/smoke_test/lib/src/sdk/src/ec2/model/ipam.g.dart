// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.ipam;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Ipam extends Ipam {
  @override
  final String? ownerId;
  @override
  final String? ipamId;
  @override
  final String? ipamArn;
  @override
  final String? ipamRegion;
  @override
  final String? publicDefaultScopeId;
  @override
  final String? privateDefaultScopeId;
  @override
  final int scopeCount;
  @override
  final String? description;
  @override
  final _i5.BuiltList<_i2.IpamOperatingRegion>? operatingRegions;
  @override
  final _i3.IpamState? state;
  @override
  final _i5.BuiltList<_i4.Tag>? tags;

  factory _$Ipam([void Function(IpamBuilder)? updates]) =>
      (new IpamBuilder()..update(updates))._build();

  _$Ipam._(
      {this.ownerId,
      this.ipamId,
      this.ipamArn,
      this.ipamRegion,
      this.publicDefaultScopeId,
      this.privateDefaultScopeId,
      required this.scopeCount,
      this.description,
      this.operatingRegions,
      this.state,
      this.tags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(scopeCount, r'Ipam', 'scopeCount');
  }

  @override
  Ipam rebuild(void Function(IpamBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IpamBuilder toBuilder() => new IpamBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Ipam &&
        ownerId == other.ownerId &&
        ipamId == other.ipamId &&
        ipamArn == other.ipamArn &&
        ipamRegion == other.ipamRegion &&
        publicDefaultScopeId == other.publicDefaultScopeId &&
        privateDefaultScopeId == other.privateDefaultScopeId &&
        scopeCount == other.scopeCount &&
        description == other.description &&
        operatingRegions == other.operatingRegions &&
        state == other.state &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jc(_$hash, ipamId.hashCode);
    _$hash = $jc(_$hash, ipamArn.hashCode);
    _$hash = $jc(_$hash, ipamRegion.hashCode);
    _$hash = $jc(_$hash, publicDefaultScopeId.hashCode);
    _$hash = $jc(_$hash, privateDefaultScopeId.hashCode);
    _$hash = $jc(_$hash, scopeCount.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, operatingRegions.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class IpamBuilder implements Builder<Ipam, IpamBuilder> {
  _$Ipam? _$v;

  String? _ownerId;
  String? get ownerId => _$this._ownerId;
  set ownerId(String? ownerId) => _$this._ownerId = ownerId;

  String? _ipamId;
  String? get ipamId => _$this._ipamId;
  set ipamId(String? ipamId) => _$this._ipamId = ipamId;

  String? _ipamArn;
  String? get ipamArn => _$this._ipamArn;
  set ipamArn(String? ipamArn) => _$this._ipamArn = ipamArn;

  String? _ipamRegion;
  String? get ipamRegion => _$this._ipamRegion;
  set ipamRegion(String? ipamRegion) => _$this._ipamRegion = ipamRegion;

  String? _publicDefaultScopeId;
  String? get publicDefaultScopeId => _$this._publicDefaultScopeId;
  set publicDefaultScopeId(String? publicDefaultScopeId) =>
      _$this._publicDefaultScopeId = publicDefaultScopeId;

  String? _privateDefaultScopeId;
  String? get privateDefaultScopeId => _$this._privateDefaultScopeId;
  set privateDefaultScopeId(String? privateDefaultScopeId) =>
      _$this._privateDefaultScopeId = privateDefaultScopeId;

  int? _scopeCount;
  int? get scopeCount => _$this._scopeCount;
  set scopeCount(int? scopeCount) => _$this._scopeCount = scopeCount;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  _i5.ListBuilder<_i2.IpamOperatingRegion>? _operatingRegions;
  _i5.ListBuilder<_i2.IpamOperatingRegion> get operatingRegions =>
      _$this._operatingRegions ??=
          new _i5.ListBuilder<_i2.IpamOperatingRegion>();
  set operatingRegions(
          _i5.ListBuilder<_i2.IpamOperatingRegion>? operatingRegions) =>
      _$this._operatingRegions = operatingRegions;

  _i3.IpamState? _state;
  _i3.IpamState? get state => _$this._state;
  set state(_i3.IpamState? state) => _$this._state = state;

  _i5.ListBuilder<_i4.Tag>? _tags;
  _i5.ListBuilder<_i4.Tag> get tags =>
      _$this._tags ??= new _i5.ListBuilder<_i4.Tag>();
  set tags(_i5.ListBuilder<_i4.Tag>? tags) => _$this._tags = tags;

  IpamBuilder() {
    Ipam._init(this);
  }

  IpamBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ownerId = $v.ownerId;
      _ipamId = $v.ipamId;
      _ipamArn = $v.ipamArn;
      _ipamRegion = $v.ipamRegion;
      _publicDefaultScopeId = $v.publicDefaultScopeId;
      _privateDefaultScopeId = $v.privateDefaultScopeId;
      _scopeCount = $v.scopeCount;
      _description = $v.description;
      _operatingRegions = $v.operatingRegions?.toBuilder();
      _state = $v.state;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Ipam other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Ipam;
  }

  @override
  void update(void Function(IpamBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Ipam build() => _build();

  _$Ipam _build() {
    _$Ipam _$result;
    try {
      _$result = _$v ??
          new _$Ipam._(
              ownerId: ownerId,
              ipamId: ipamId,
              ipamArn: ipamArn,
              ipamRegion: ipamRegion,
              publicDefaultScopeId: publicDefaultScopeId,
              privateDefaultScopeId: privateDefaultScopeId,
              scopeCount: BuiltValueNullFieldError.checkNotNull(
                  scopeCount, r'Ipam', 'scopeCount'),
              description: description,
              operatingRegions: _operatingRegions?.build(),
              state: state,
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'operatingRegions';
        _operatingRegions?.build();

        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Ipam', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
