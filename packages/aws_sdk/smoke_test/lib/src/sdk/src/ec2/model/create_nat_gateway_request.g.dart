// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.create_nat_gateway_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateNatGatewayRequest extends CreateNatGatewayRequest {
  @override
  final String? allocationId;
  @override
  final String? clientToken;
  @override
  final bool dryRun;
  @override
  final String subnetId;
  @override
  final _i5.BuiltList<_i3.TagSpecification>? tagSpecifications;
  @override
  final _i4.ConnectivityType? connectivityType;

  factory _$CreateNatGatewayRequest(
          [void Function(CreateNatGatewayRequestBuilder)? updates]) =>
      (new CreateNatGatewayRequestBuilder()..update(updates))._build();

  _$CreateNatGatewayRequest._(
      {this.allocationId,
      this.clientToken,
      required this.dryRun,
      required this.subnetId,
      this.tagSpecifications,
      this.connectivityType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateNatGatewayRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        subnetId, r'CreateNatGatewayRequest', 'subnetId');
  }

  @override
  CreateNatGatewayRequest rebuild(
          void Function(CreateNatGatewayRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateNatGatewayRequestBuilder toBuilder() =>
      new CreateNatGatewayRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateNatGatewayRequest &&
        allocationId == other.allocationId &&
        clientToken == other.clientToken &&
        dryRun == other.dryRun &&
        subnetId == other.subnetId &&
        tagSpecifications == other.tagSpecifications &&
        connectivityType == other.connectivityType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, allocationId.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, subnetId.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, connectivityType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateNatGatewayRequestBuilder
    implements
        Builder<CreateNatGatewayRequest, CreateNatGatewayRequestBuilder> {
  _$CreateNatGatewayRequest? _$v;

  String? _allocationId;
  String? get allocationId => _$this._allocationId;
  set allocationId(String? allocationId) => _$this._allocationId = allocationId;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _subnetId;
  String? get subnetId => _$this._subnetId;
  set subnetId(String? subnetId) => _$this._subnetId = subnetId;

  _i5.ListBuilder<_i3.TagSpecification>? _tagSpecifications;
  _i5.ListBuilder<_i3.TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i5.ListBuilder<_i3.TagSpecification>();
  set tagSpecifications(
          _i5.ListBuilder<_i3.TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  _i4.ConnectivityType? _connectivityType;
  _i4.ConnectivityType? get connectivityType => _$this._connectivityType;
  set connectivityType(_i4.ConnectivityType? connectivityType) =>
      _$this._connectivityType = connectivityType;

  CreateNatGatewayRequestBuilder() {
    CreateNatGatewayRequest._init(this);
  }

  CreateNatGatewayRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _allocationId = $v.allocationId;
      _clientToken = $v.clientToken;
      _dryRun = $v.dryRun;
      _subnetId = $v.subnetId;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _connectivityType = $v.connectivityType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateNatGatewayRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateNatGatewayRequest;
  }

  @override
  void update(void Function(CreateNatGatewayRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateNatGatewayRequest build() => _build();

  _$CreateNatGatewayRequest _build() {
    _$CreateNatGatewayRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateNatGatewayRequest._(
              allocationId: allocationId,
              clientToken: clientToken,
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreateNatGatewayRequest', 'dryRun'),
              subnetId: BuiltValueNullFieldError.checkNotNull(
                  subnetId, r'CreateNatGatewayRequest', 'subnetId'),
              tagSpecifications: _tagSpecifications?.build(),
              connectivityType: connectivityType);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateNatGatewayRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
