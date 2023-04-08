// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.create_transit_gateway_vpc_attachment_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateTransitGatewayVpcAttachmentRequest
    extends CreateTransitGatewayVpcAttachmentRequest {
  @override
  final String transitGatewayId;
  @override
  final String vpcId;
  @override
  final _i5.BuiltList<String> subnetIds;
  @override
  final _i3.CreateTransitGatewayVpcAttachmentRequestOptions? options;
  @override
  final _i5.BuiltList<_i4.TagSpecification>? tagSpecifications;
  @override
  final bool dryRun;

  factory _$CreateTransitGatewayVpcAttachmentRequest(
          [void Function(CreateTransitGatewayVpcAttachmentRequestBuilder)?
              updates]) =>
      (new CreateTransitGatewayVpcAttachmentRequestBuilder()..update(updates))
          ._build();

  _$CreateTransitGatewayVpcAttachmentRequest._(
      {required this.transitGatewayId,
      required this.vpcId,
      required this.subnetIds,
      this.options,
      this.tagSpecifications,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(transitGatewayId,
        r'CreateTransitGatewayVpcAttachmentRequest', 'transitGatewayId');
    BuiltValueNullFieldError.checkNotNull(
        vpcId, r'CreateTransitGatewayVpcAttachmentRequest', 'vpcId');
    BuiltValueNullFieldError.checkNotNull(
        subnetIds, r'CreateTransitGatewayVpcAttachmentRequest', 'subnetIds');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateTransitGatewayVpcAttachmentRequest', 'dryRun');
  }

  @override
  CreateTransitGatewayVpcAttachmentRequest rebuild(
          void Function(CreateTransitGatewayVpcAttachmentRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateTransitGatewayVpcAttachmentRequestBuilder toBuilder() =>
      new CreateTransitGatewayVpcAttachmentRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateTransitGatewayVpcAttachmentRequest &&
        transitGatewayId == other.transitGatewayId &&
        vpcId == other.vpcId &&
        subnetIds == other.subnetIds &&
        options == other.options &&
        tagSpecifications == other.tagSpecifications &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayId.hashCode);
    _$hash = $jc(_$hash, vpcId.hashCode);
    _$hash = $jc(_$hash, subnetIds.hashCode);
    _$hash = $jc(_$hash, options.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateTransitGatewayVpcAttachmentRequestBuilder
    implements
        Builder<CreateTransitGatewayVpcAttachmentRequest,
            CreateTransitGatewayVpcAttachmentRequestBuilder> {
  _$CreateTransitGatewayVpcAttachmentRequest? _$v;

  String? _transitGatewayId;
  String? get transitGatewayId => _$this._transitGatewayId;
  set transitGatewayId(String? transitGatewayId) =>
      _$this._transitGatewayId = transitGatewayId;

  String? _vpcId;
  String? get vpcId => _$this._vpcId;
  set vpcId(String? vpcId) => _$this._vpcId = vpcId;

  _i5.ListBuilder<String>? _subnetIds;
  _i5.ListBuilder<String> get subnetIds =>
      _$this._subnetIds ??= new _i5.ListBuilder<String>();
  set subnetIds(_i5.ListBuilder<String>? subnetIds) =>
      _$this._subnetIds = subnetIds;

  _i3.CreateTransitGatewayVpcAttachmentRequestOptionsBuilder? _options;
  _i3.CreateTransitGatewayVpcAttachmentRequestOptionsBuilder get options =>
      _$this._options ??=
          new _i3.CreateTransitGatewayVpcAttachmentRequestOptionsBuilder();
  set options(
          _i3.CreateTransitGatewayVpcAttachmentRequestOptionsBuilder?
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

  CreateTransitGatewayVpcAttachmentRequestBuilder() {
    CreateTransitGatewayVpcAttachmentRequest._init(this);
  }

  CreateTransitGatewayVpcAttachmentRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayId = $v.transitGatewayId;
      _vpcId = $v.vpcId;
      _subnetIds = $v.subnetIds.toBuilder();
      _options = $v.options?.toBuilder();
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateTransitGatewayVpcAttachmentRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateTransitGatewayVpcAttachmentRequest;
  }

  @override
  void update(
      void Function(CreateTransitGatewayVpcAttachmentRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateTransitGatewayVpcAttachmentRequest build() => _build();

  _$CreateTransitGatewayVpcAttachmentRequest _build() {
    _$CreateTransitGatewayVpcAttachmentRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateTransitGatewayVpcAttachmentRequest._(
              transitGatewayId: BuiltValueNullFieldError.checkNotNull(
                  transitGatewayId,
                  r'CreateTransitGatewayVpcAttachmentRequest',
                  'transitGatewayId'),
              vpcId: BuiltValueNullFieldError.checkNotNull(
                  vpcId, r'CreateTransitGatewayVpcAttachmentRequest', 'vpcId'),
              subnetIds: subnetIds.build(),
              options: _options?.build(),
              tagSpecifications: _tagSpecifications?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                  r'CreateTransitGatewayVpcAttachmentRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'subnetIds';
        subnetIds.build();
        _$failedField = 'options';
        _options?.build();
        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateTransitGatewayVpcAttachmentRequest',
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
