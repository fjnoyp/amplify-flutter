// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.create_transit_gateway_peering_attachment_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateTransitGatewayPeeringAttachmentRequest
    extends CreateTransitGatewayPeeringAttachmentRequest {
  @override
  final String transitGatewayId;
  @override
  final String peerTransitGatewayId;
  @override
  final String peerAccountId;
  @override
  final String peerRegion;
  @override
  final _i3.CreateTransitGatewayPeeringAttachmentRequestOptions? options;
  @override
  final _i5.BuiltList<_i4.TagSpecification>? tagSpecifications;
  @override
  final bool dryRun;

  factory _$CreateTransitGatewayPeeringAttachmentRequest(
          [void Function(CreateTransitGatewayPeeringAttachmentRequestBuilder)?
              updates]) =>
      (new CreateTransitGatewayPeeringAttachmentRequestBuilder()
            ..update(updates))
          ._build();

  _$CreateTransitGatewayPeeringAttachmentRequest._(
      {required this.transitGatewayId,
      required this.peerTransitGatewayId,
      required this.peerAccountId,
      required this.peerRegion,
      this.options,
      this.tagSpecifications,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(transitGatewayId,
        r'CreateTransitGatewayPeeringAttachmentRequest', 'transitGatewayId');
    BuiltValueNullFieldError.checkNotNull(
        peerTransitGatewayId,
        r'CreateTransitGatewayPeeringAttachmentRequest',
        'peerTransitGatewayId');
    BuiltValueNullFieldError.checkNotNull(peerAccountId,
        r'CreateTransitGatewayPeeringAttachmentRequest', 'peerAccountId');
    BuiltValueNullFieldError.checkNotNull(peerRegion,
        r'CreateTransitGatewayPeeringAttachmentRequest', 'peerRegion');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateTransitGatewayPeeringAttachmentRequest', 'dryRun');
  }

  @override
  CreateTransitGatewayPeeringAttachmentRequest rebuild(
          void Function(CreateTransitGatewayPeeringAttachmentRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateTransitGatewayPeeringAttachmentRequestBuilder toBuilder() =>
      new CreateTransitGatewayPeeringAttachmentRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateTransitGatewayPeeringAttachmentRequest &&
        transitGatewayId == other.transitGatewayId &&
        peerTransitGatewayId == other.peerTransitGatewayId &&
        peerAccountId == other.peerAccountId &&
        peerRegion == other.peerRegion &&
        options == other.options &&
        tagSpecifications == other.tagSpecifications &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayId.hashCode);
    _$hash = $jc(_$hash, peerTransitGatewayId.hashCode);
    _$hash = $jc(_$hash, peerAccountId.hashCode);
    _$hash = $jc(_$hash, peerRegion.hashCode);
    _$hash = $jc(_$hash, options.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateTransitGatewayPeeringAttachmentRequestBuilder
    implements
        Builder<CreateTransitGatewayPeeringAttachmentRequest,
            CreateTransitGatewayPeeringAttachmentRequestBuilder> {
  _$CreateTransitGatewayPeeringAttachmentRequest? _$v;

  String? _transitGatewayId;
  String? get transitGatewayId => _$this._transitGatewayId;
  set transitGatewayId(String? transitGatewayId) =>
      _$this._transitGatewayId = transitGatewayId;

  String? _peerTransitGatewayId;
  String? get peerTransitGatewayId => _$this._peerTransitGatewayId;
  set peerTransitGatewayId(String? peerTransitGatewayId) =>
      _$this._peerTransitGatewayId = peerTransitGatewayId;

  String? _peerAccountId;
  String? get peerAccountId => _$this._peerAccountId;
  set peerAccountId(String? peerAccountId) =>
      _$this._peerAccountId = peerAccountId;

  String? _peerRegion;
  String? get peerRegion => _$this._peerRegion;
  set peerRegion(String? peerRegion) => _$this._peerRegion = peerRegion;

  _i3.CreateTransitGatewayPeeringAttachmentRequestOptionsBuilder? _options;
  _i3.CreateTransitGatewayPeeringAttachmentRequestOptionsBuilder get options =>
      _$this._options ??=
          new _i3.CreateTransitGatewayPeeringAttachmentRequestOptionsBuilder();
  set options(
          _i3.CreateTransitGatewayPeeringAttachmentRequestOptionsBuilder?
              options) =>
      _$this._options = options;

  _i5.ListBuilder<_i4.TagSpecification>? _tagSpecifications;
  _i5.ListBuilder<_i4.TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i5.ListBuilder<_i4.TagSpecification>();
  set tagSpecifications(
          _i5.ListBuilder<_i4.TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  CreateTransitGatewayPeeringAttachmentRequestBuilder() {
    CreateTransitGatewayPeeringAttachmentRequest._init(this);
  }

  CreateTransitGatewayPeeringAttachmentRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayId = $v.transitGatewayId;
      _peerTransitGatewayId = $v.peerTransitGatewayId;
      _peerAccountId = $v.peerAccountId;
      _peerRegion = $v.peerRegion;
      _options = $v.options?.toBuilder();
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateTransitGatewayPeeringAttachmentRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateTransitGatewayPeeringAttachmentRequest;
  }

  @override
  void update(
      void Function(CreateTransitGatewayPeeringAttachmentRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateTransitGatewayPeeringAttachmentRequest build() => _build();

  _$CreateTransitGatewayPeeringAttachmentRequest _build() {
    _$CreateTransitGatewayPeeringAttachmentRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateTransitGatewayPeeringAttachmentRequest._(
              transitGatewayId: BuiltValueNullFieldError.checkNotNull(
                  transitGatewayId,
                  r'CreateTransitGatewayPeeringAttachmentRequest',
                  'transitGatewayId'),
              peerTransitGatewayId: BuiltValueNullFieldError.checkNotNull(
                  peerTransitGatewayId,
                  r'CreateTransitGatewayPeeringAttachmentRequest',
                  'peerTransitGatewayId'),
              peerAccountId: BuiltValueNullFieldError.checkNotNull(
                  peerAccountId,
                  r'CreateTransitGatewayPeeringAttachmentRequest',
                  'peerAccountId'),
              peerRegion: BuiltValueNullFieldError.checkNotNull(
                  peerRegion, r'CreateTransitGatewayPeeringAttachmentRequest', 'peerRegion'),
              options: _options?.build(),
              tagSpecifications: _tagSpecifications?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreateTransitGatewayPeeringAttachmentRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'options';
        _options?.build();
        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateTransitGatewayPeeringAttachmentRequest',
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
