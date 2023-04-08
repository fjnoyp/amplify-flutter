// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.disassociate_transit_gateway_policy_table_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DisassociateTransitGatewayPolicyTableRequest
    extends DisassociateTransitGatewayPolicyTableRequest {
  @override
  final String transitGatewayPolicyTableId;
  @override
  final String transitGatewayAttachmentId;
  @override
  final bool dryRun;

  factory _$DisassociateTransitGatewayPolicyTableRequest(
          [void Function(DisassociateTransitGatewayPolicyTableRequestBuilder)?
              updates]) =>
      (new DisassociateTransitGatewayPolicyTableRequestBuilder()
            ..update(updates))
          ._build();

  _$DisassociateTransitGatewayPolicyTableRequest._(
      {required this.transitGatewayPolicyTableId,
      required this.transitGatewayAttachmentId,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        transitGatewayPolicyTableId,
        r'DisassociateTransitGatewayPolicyTableRequest',
        'transitGatewayPolicyTableId');
    BuiltValueNullFieldError.checkNotNull(
        transitGatewayAttachmentId,
        r'DisassociateTransitGatewayPolicyTableRequest',
        'transitGatewayAttachmentId');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DisassociateTransitGatewayPolicyTableRequest', 'dryRun');
  }

  @override
  DisassociateTransitGatewayPolicyTableRequest rebuild(
          void Function(DisassociateTransitGatewayPolicyTableRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisassociateTransitGatewayPolicyTableRequestBuilder toBuilder() =>
      new DisassociateTransitGatewayPolicyTableRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisassociateTransitGatewayPolicyTableRequest &&
        transitGatewayPolicyTableId == other.transitGatewayPolicyTableId &&
        transitGatewayAttachmentId == other.transitGatewayAttachmentId &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayPolicyTableId.hashCode);
    _$hash = $jc(_$hash, transitGatewayAttachmentId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DisassociateTransitGatewayPolicyTableRequestBuilder
    implements
        Builder<DisassociateTransitGatewayPolicyTableRequest,
            DisassociateTransitGatewayPolicyTableRequestBuilder> {
  _$DisassociateTransitGatewayPolicyTableRequest? _$v;

  String? _transitGatewayPolicyTableId;
  String? get transitGatewayPolicyTableId =>
      _$this._transitGatewayPolicyTableId;
  set transitGatewayPolicyTableId(String? transitGatewayPolicyTableId) =>
      _$this._transitGatewayPolicyTableId = transitGatewayPolicyTableId;

  String? _transitGatewayAttachmentId;
  String? get transitGatewayAttachmentId => _$this._transitGatewayAttachmentId;
  set transitGatewayAttachmentId(String? transitGatewayAttachmentId) =>
      _$this._transitGatewayAttachmentId = transitGatewayAttachmentId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DisassociateTransitGatewayPolicyTableRequestBuilder() {
    DisassociateTransitGatewayPolicyTableRequest._init(this);
  }

  DisassociateTransitGatewayPolicyTableRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayPolicyTableId = $v.transitGatewayPolicyTableId;
      _transitGatewayAttachmentId = $v.transitGatewayAttachmentId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DisassociateTransitGatewayPolicyTableRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DisassociateTransitGatewayPolicyTableRequest;
  }

  @override
  void update(
      void Function(DisassociateTransitGatewayPolicyTableRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DisassociateTransitGatewayPolicyTableRequest build() => _build();

  _$DisassociateTransitGatewayPolicyTableRequest _build() {
    final _$result = _$v ??
        new _$DisassociateTransitGatewayPolicyTableRequest._(
            transitGatewayPolicyTableId: BuiltValueNullFieldError.checkNotNull(
                transitGatewayPolicyTableId,
                r'DisassociateTransitGatewayPolicyTableRequest',
                'transitGatewayPolicyTableId'),
            transitGatewayAttachmentId: BuiltValueNullFieldError.checkNotNull(
                transitGatewayAttachmentId,
                r'DisassociateTransitGatewayPolicyTableRequest',
                'transitGatewayAttachmentId'),
            dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                r'DisassociateTransitGatewayPolicyTableRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
