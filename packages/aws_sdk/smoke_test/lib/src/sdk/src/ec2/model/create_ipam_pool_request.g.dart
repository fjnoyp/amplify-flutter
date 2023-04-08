// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.create_ipam_pool_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateIpamPoolRequest extends CreateIpamPoolRequest {
  @override
  final bool dryRun;
  @override
  final String ipamScopeId;
  @override
  final String? locale;
  @override
  final String? sourceIpamPoolId;
  @override
  final String? description;
  @override
  final _i3.AddressFamily addressFamily;
  @override
  final bool autoImport;
  @override
  final bool publiclyAdvertisable;
  @override
  final int allocationMinNetmaskLength;
  @override
  final int allocationMaxNetmaskLength;
  @override
  final int allocationDefaultNetmaskLength;
  @override
  final _i7.BuiltList<_i4.RequestIpamResourceTag>? allocationResourceTags;
  @override
  final _i7.BuiltList<_i5.TagSpecification>? tagSpecifications;
  @override
  final String? clientToken;
  @override
  final _i6.IpamPoolAwsService? awsService;

  factory _$CreateIpamPoolRequest(
          [void Function(CreateIpamPoolRequestBuilder)? updates]) =>
      (new CreateIpamPoolRequestBuilder()..update(updates))._build();

  _$CreateIpamPoolRequest._(
      {required this.dryRun,
      required this.ipamScopeId,
      this.locale,
      this.sourceIpamPoolId,
      this.description,
      required this.addressFamily,
      required this.autoImport,
      required this.publiclyAdvertisable,
      required this.allocationMinNetmaskLength,
      required this.allocationMaxNetmaskLength,
      required this.allocationDefaultNetmaskLength,
      this.allocationResourceTags,
      this.tagSpecifications,
      this.clientToken,
      this.awsService})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateIpamPoolRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        ipamScopeId, r'CreateIpamPoolRequest', 'ipamScopeId');
    BuiltValueNullFieldError.checkNotNull(
        addressFamily, r'CreateIpamPoolRequest', 'addressFamily');
    BuiltValueNullFieldError.checkNotNull(
        autoImport, r'CreateIpamPoolRequest', 'autoImport');
    BuiltValueNullFieldError.checkNotNull(
        publiclyAdvertisable, r'CreateIpamPoolRequest', 'publiclyAdvertisable');
    BuiltValueNullFieldError.checkNotNull(allocationMinNetmaskLength,
        r'CreateIpamPoolRequest', 'allocationMinNetmaskLength');
    BuiltValueNullFieldError.checkNotNull(allocationMaxNetmaskLength,
        r'CreateIpamPoolRequest', 'allocationMaxNetmaskLength');
    BuiltValueNullFieldError.checkNotNull(allocationDefaultNetmaskLength,
        r'CreateIpamPoolRequest', 'allocationDefaultNetmaskLength');
  }

  @override
  CreateIpamPoolRequest rebuild(
          void Function(CreateIpamPoolRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateIpamPoolRequestBuilder toBuilder() =>
      new CreateIpamPoolRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateIpamPoolRequest &&
        dryRun == other.dryRun &&
        ipamScopeId == other.ipamScopeId &&
        locale == other.locale &&
        sourceIpamPoolId == other.sourceIpamPoolId &&
        description == other.description &&
        addressFamily == other.addressFamily &&
        autoImport == other.autoImport &&
        publiclyAdvertisable == other.publiclyAdvertisable &&
        allocationMinNetmaskLength == other.allocationMinNetmaskLength &&
        allocationMaxNetmaskLength == other.allocationMaxNetmaskLength &&
        allocationDefaultNetmaskLength ==
            other.allocationDefaultNetmaskLength &&
        allocationResourceTags == other.allocationResourceTags &&
        tagSpecifications == other.tagSpecifications &&
        clientToken == other.clientToken &&
        awsService == other.awsService;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, ipamScopeId.hashCode);
    _$hash = $jc(_$hash, locale.hashCode);
    _$hash = $jc(_$hash, sourceIpamPoolId.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, addressFamily.hashCode);
    _$hash = $jc(_$hash, autoImport.hashCode);
    _$hash = $jc(_$hash, publiclyAdvertisable.hashCode);
    _$hash = $jc(_$hash, allocationMinNetmaskLength.hashCode);
    _$hash = $jc(_$hash, allocationMaxNetmaskLength.hashCode);
    _$hash = $jc(_$hash, allocationDefaultNetmaskLength.hashCode);
    _$hash = $jc(_$hash, allocationResourceTags.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, awsService.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateIpamPoolRequestBuilder
    implements Builder<CreateIpamPoolRequest, CreateIpamPoolRequestBuilder> {
  _$CreateIpamPoolRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _ipamScopeId;
  String? get ipamScopeId => _$this._ipamScopeId;
  set ipamScopeId(String? ipamScopeId) => _$this._ipamScopeId = ipamScopeId;

  String? _locale;
  String? get locale => _$this._locale;
  set locale(String? locale) => _$this._locale = locale;

  String? _sourceIpamPoolId;
  String? get sourceIpamPoolId => _$this._sourceIpamPoolId;
  set sourceIpamPoolId(String? sourceIpamPoolId) =>
      _$this._sourceIpamPoolId = sourceIpamPoolId;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  _i3.AddressFamily? _addressFamily;
  _i3.AddressFamily? get addressFamily => _$this._addressFamily;
  set addressFamily(_i3.AddressFamily? addressFamily) =>
      _$this._addressFamily = addressFamily;

  bool? _autoImport;
  bool? get autoImport => _$this._autoImport;
  set autoImport(bool? autoImport) => _$this._autoImport = autoImport;

  bool? _publiclyAdvertisable;
  bool? get publiclyAdvertisable => _$this._publiclyAdvertisable;
  set publiclyAdvertisable(bool? publiclyAdvertisable) =>
      _$this._publiclyAdvertisable = publiclyAdvertisable;

  int? _allocationMinNetmaskLength;
  int? get allocationMinNetmaskLength => _$this._allocationMinNetmaskLength;
  set allocationMinNetmaskLength(int? allocationMinNetmaskLength) =>
      _$this._allocationMinNetmaskLength = allocationMinNetmaskLength;

  int? _allocationMaxNetmaskLength;
  int? get allocationMaxNetmaskLength => _$this._allocationMaxNetmaskLength;
  set allocationMaxNetmaskLength(int? allocationMaxNetmaskLength) =>
      _$this._allocationMaxNetmaskLength = allocationMaxNetmaskLength;

  int? _allocationDefaultNetmaskLength;
  int? get allocationDefaultNetmaskLength =>
      _$this._allocationDefaultNetmaskLength;
  set allocationDefaultNetmaskLength(int? allocationDefaultNetmaskLength) =>
      _$this._allocationDefaultNetmaskLength = allocationDefaultNetmaskLength;

  _i7.ListBuilder<_i4.RequestIpamResourceTag>? _allocationResourceTags;
  _i7.ListBuilder<_i4.RequestIpamResourceTag> get allocationResourceTags =>
      _$this._allocationResourceTags ??=
          new _i7.ListBuilder<_i4.RequestIpamResourceTag>();
  set allocationResourceTags(
          _i7.ListBuilder<_i4.RequestIpamResourceTag>?
              allocationResourceTags) =>
      _$this._allocationResourceTags = allocationResourceTags;

  _i7.ListBuilder<_i5.TagSpecification>? _tagSpecifications;
  _i7.ListBuilder<_i5.TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i7.ListBuilder<_i5.TagSpecification>();
  set tagSpecifications(
          _i7.ListBuilder<_i5.TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  _i6.IpamPoolAwsService? _awsService;
  _i6.IpamPoolAwsService? get awsService => _$this._awsService;
  set awsService(_i6.IpamPoolAwsService? awsService) =>
      _$this._awsService = awsService;

  CreateIpamPoolRequestBuilder() {
    CreateIpamPoolRequest._init(this);
  }

  CreateIpamPoolRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _ipamScopeId = $v.ipamScopeId;
      _locale = $v.locale;
      _sourceIpamPoolId = $v.sourceIpamPoolId;
      _description = $v.description;
      _addressFamily = $v.addressFamily;
      _autoImport = $v.autoImport;
      _publiclyAdvertisable = $v.publiclyAdvertisable;
      _allocationMinNetmaskLength = $v.allocationMinNetmaskLength;
      _allocationMaxNetmaskLength = $v.allocationMaxNetmaskLength;
      _allocationDefaultNetmaskLength = $v.allocationDefaultNetmaskLength;
      _allocationResourceTags = $v.allocationResourceTags?.toBuilder();
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _clientToken = $v.clientToken;
      _awsService = $v.awsService;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateIpamPoolRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateIpamPoolRequest;
  }

  @override
  void update(void Function(CreateIpamPoolRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateIpamPoolRequest build() => _build();

  _$CreateIpamPoolRequest _build() {
    _$CreateIpamPoolRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateIpamPoolRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreateIpamPoolRequest', 'dryRun'),
              ipamScopeId: BuiltValueNullFieldError.checkNotNull(
                  ipamScopeId, r'CreateIpamPoolRequest', 'ipamScopeId'),
              locale: locale,
              sourceIpamPoolId: sourceIpamPoolId,
              description: description,
              addressFamily: BuiltValueNullFieldError.checkNotNull(
                  addressFamily, r'CreateIpamPoolRequest', 'addressFamily'),
              autoImport: BuiltValueNullFieldError.checkNotNull(
                  autoImport, r'CreateIpamPoolRequest', 'autoImport'),
              publiclyAdvertisable: BuiltValueNullFieldError.checkNotNull(
                  publiclyAdvertisable, r'CreateIpamPoolRequest', 'publiclyAdvertisable'),
              allocationMinNetmaskLength: BuiltValueNullFieldError.checkNotNull(
                  allocationMinNetmaskLength, r'CreateIpamPoolRequest', 'allocationMinNetmaskLength'),
              allocationMaxNetmaskLength: BuiltValueNullFieldError.checkNotNull(
                  allocationMaxNetmaskLength, r'CreateIpamPoolRequest', 'allocationMaxNetmaskLength'),
              allocationDefaultNetmaskLength:
                  BuiltValueNullFieldError.checkNotNull(allocationDefaultNetmaskLength, r'CreateIpamPoolRequest', 'allocationDefaultNetmaskLength'),
              allocationResourceTags: _allocationResourceTags?.build(),
              tagSpecifications: _tagSpecifications?.build(),
              clientToken: clientToken,
              awsService: awsService);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'allocationResourceTags';
        _allocationResourceTags?.build();
        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateIpamPoolRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
