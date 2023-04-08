// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.delete_transit_gateway_connect_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteTransitGatewayConnectRequest
    extends DeleteTransitGatewayConnectRequest {
  @override
  final String transitGatewayAttachmentId;
  @override
  final bool dryRun;

  factory _$DeleteTransitGatewayConnectRequest(
          [void Function(DeleteTransitGatewayConnectRequestBuilder)?
              updates]) =>
      (new DeleteTransitGatewayConnectRequestBuilder()..update(updates))
          ._build();

  _$DeleteTransitGatewayConnectRequest._(
      {required this.transitGatewayAttachmentId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(transitGatewayAttachmentId,
        r'DeleteTransitGatewayConnectRequest', 'transitGatewayAttachmentId');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteTransitGatewayConnectRequest', 'dryRun');
  }

  @override
  DeleteTransitGatewayConnectRequest rebuild(
          void Function(DeleteTransitGatewayConnectRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteTransitGatewayConnectRequestBuilder toBuilder() =>
      new DeleteTransitGatewayConnectRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteTransitGatewayConnectRequest &&
        transitGatewayAttachmentId == other.transitGatewayAttachmentId &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayAttachmentId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteTransitGatewayConnectRequestBuilder
    implements
        Builder<DeleteTransitGatewayConnectRequest,
            DeleteTransitGatewayConnectRequestBuilder> {
  _$DeleteTransitGatewayConnectRequest? _$v;

  String? _transitGatewayAttachmentId;
  String? get transitGatewayAttachmentId => _$this._transitGatewayAttachmentId;
  set transitGatewayAttachmentId(String? transitGatewayAttachmentId) =>
      _$this._transitGatewayAttachmentId = transitGatewayAttachmentId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DeleteTransitGatewayConnectRequestBuilder() {
    DeleteTransitGatewayConnectRequest._init(this);
  }

  DeleteTransitGatewayConnectRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayAttachmentId = $v.transitGatewayAttachmentId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteTransitGatewayConnectRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteTransitGatewayConnectRequest;
  }

  @override
  void update(
      void Function(DeleteTransitGatewayConnectRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteTransitGatewayConnectRequest build() => _build();

  _$DeleteTransitGatewayConnectRequest _build() {
    final _$result = _$v ??
        new _$DeleteTransitGatewayConnectRequest._(
            transitGatewayAttachmentId: BuiltValueNullFieldError.checkNotNull(
                transitGatewayAttachmentId,
                r'DeleteTransitGatewayConnectRequest',
                'transitGatewayAttachmentId'),
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeleteTransitGatewayConnectRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
