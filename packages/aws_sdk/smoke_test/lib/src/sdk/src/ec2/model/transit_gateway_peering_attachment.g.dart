// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.transit_gateway_peering_attachment;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransitGatewayPeeringAttachment
    extends TransitGatewayPeeringAttachment {
  @override
  final String? transitGatewayAttachmentId;
  @override
  final String? accepterTransitGatewayAttachmentId;
  @override
  final _i2.PeeringTgwInfo? requesterTgwInfo;
  @override
  final _i2.PeeringTgwInfo? accepterTgwInfo;
  @override
  final _i3.TransitGatewayPeeringAttachmentOptions? options;
  @override
  final _i4.PeeringAttachmentStatus? status;
  @override
  final _i5.TransitGatewayAttachmentState? state;
  @override
  final DateTime? creationTime;
  @override
  final _i7.BuiltList<_i6.Tag>? tags;

  factory _$TransitGatewayPeeringAttachment(
          [void Function(TransitGatewayPeeringAttachmentBuilder)? updates]) =>
      (new TransitGatewayPeeringAttachmentBuilder()..update(updates))._build();

  _$TransitGatewayPeeringAttachment._(
      {this.transitGatewayAttachmentId,
      this.accepterTransitGatewayAttachmentId,
      this.requesterTgwInfo,
      this.accepterTgwInfo,
      this.options,
      this.status,
      this.state,
      this.creationTime,
      this.tags})
      : super._();

  @override
  TransitGatewayPeeringAttachment rebuild(
          void Function(TransitGatewayPeeringAttachmentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransitGatewayPeeringAttachmentBuilder toBuilder() =>
      new TransitGatewayPeeringAttachmentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransitGatewayPeeringAttachment &&
        transitGatewayAttachmentId == other.transitGatewayAttachmentId &&
        accepterTransitGatewayAttachmentId ==
            other.accepterTransitGatewayAttachmentId &&
        requesterTgwInfo == other.requesterTgwInfo &&
        accepterTgwInfo == other.accepterTgwInfo &&
        options == other.options &&
        status == other.status &&
        state == other.state &&
        creationTime == other.creationTime &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayAttachmentId.hashCode);
    _$hash = $jc(_$hash, accepterTransitGatewayAttachmentId.hashCode);
    _$hash = $jc(_$hash, requesterTgwInfo.hashCode);
    _$hash = $jc(_$hash, accepterTgwInfo.hashCode);
    _$hash = $jc(_$hash, options.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, creationTime.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TransitGatewayPeeringAttachmentBuilder
    implements
        Builder<TransitGatewayPeeringAttachment,
            TransitGatewayPeeringAttachmentBuilder> {
  _$TransitGatewayPeeringAttachment? _$v;

  String? _transitGatewayAttachmentId;
  String? get transitGatewayAttachmentId => _$this._transitGatewayAttachmentId;
  set transitGatewayAttachmentId(String? transitGatewayAttachmentId) =>
      _$this._transitGatewayAttachmentId = transitGatewayAttachmentId;

  String? _accepterTransitGatewayAttachmentId;
  String? get accepterTransitGatewayAttachmentId =>
      _$this._accepterTransitGatewayAttachmentId;
  set accepterTransitGatewayAttachmentId(
          String? accepterTransitGatewayAttachmentId) =>
      _$this._accepterTransitGatewayAttachmentId =
          accepterTransitGatewayAttachmentId;

  _i2.PeeringTgwInfoBuilder? _requesterTgwInfo;
  _i2.PeeringTgwInfoBuilder get requesterTgwInfo =>
      _$this._requesterTgwInfo ??= new _i2.PeeringTgwInfoBuilder();
  set requesterTgwInfo(_i2.PeeringTgwInfoBuilder? requesterTgwInfo) =>
      _$this._requesterTgwInfo = requesterTgwInfo;

  _i2.PeeringTgwInfoBuilder? _accepterTgwInfo;
  _i2.PeeringTgwInfoBuilder get accepterTgwInfo =>
      _$this._accepterTgwInfo ??= new _i2.PeeringTgwInfoBuilder();
  set accepterTgwInfo(_i2.PeeringTgwInfoBuilder? accepterTgwInfo) =>
      _$this._accepterTgwInfo = accepterTgwInfo;

  _i3.TransitGatewayPeeringAttachmentOptionsBuilder? _options;
  _i3.TransitGatewayPeeringAttachmentOptionsBuilder get options =>
      _$this._options ??=
          new _i3.TransitGatewayPeeringAttachmentOptionsBuilder();
  set options(_i3.TransitGatewayPeeringAttachmentOptionsBuilder? options) =>
      _$this._options = options;

  _i4.PeeringAttachmentStatusBuilder? _status;
  _i4.PeeringAttachmentStatusBuilder get status =>
      _$this._status ??= new _i4.PeeringAttachmentStatusBuilder();
  set status(_i4.PeeringAttachmentStatusBuilder? status) =>
      _$this._status = status;

  _i5.TransitGatewayAttachmentState? _state;
  _i5.TransitGatewayAttachmentState? get state => _$this._state;
  set state(_i5.TransitGatewayAttachmentState? state) => _$this._state = state;

  DateTime? _creationTime;
  DateTime? get creationTime => _$this._creationTime;
  set creationTime(DateTime? creationTime) =>
      _$this._creationTime = creationTime;

  _i7.ListBuilder<_i6.Tag>? _tags;
  _i7.ListBuilder<_i6.Tag> get tags =>
      _$this._tags ??= new _i7.ListBuilder<_i6.Tag>();
  set tags(_i7.ListBuilder<_i6.Tag>? tags) => _$this._tags = tags;

  TransitGatewayPeeringAttachmentBuilder() {
    TransitGatewayPeeringAttachment._init(this);
  }

  TransitGatewayPeeringAttachmentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayAttachmentId = $v.transitGatewayAttachmentId;
      _accepterTransitGatewayAttachmentId =
          $v.accepterTransitGatewayAttachmentId;
      _requesterTgwInfo = $v.requesterTgwInfo?.toBuilder();
      _accepterTgwInfo = $v.accepterTgwInfo?.toBuilder();
      _options = $v.options?.toBuilder();
      _status = $v.status?.toBuilder();
      _state = $v.state;
      _creationTime = $v.creationTime;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransitGatewayPeeringAttachment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransitGatewayPeeringAttachment;
  }

  @override
  void update(void Function(TransitGatewayPeeringAttachmentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransitGatewayPeeringAttachment build() => _build();

  _$TransitGatewayPeeringAttachment _build() {
    _$TransitGatewayPeeringAttachment _$result;
    try {
      _$result = _$v ??
          new _$TransitGatewayPeeringAttachment._(
              transitGatewayAttachmentId: transitGatewayAttachmentId,
              accepterTransitGatewayAttachmentId:
                  accepterTransitGatewayAttachmentId,
              requesterTgwInfo: _requesterTgwInfo?.build(),
              accepterTgwInfo: _accepterTgwInfo?.build(),
              options: _options?.build(),
              status: _status?.build(),
              state: state,
              creationTime: creationTime,
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'requesterTgwInfo';
        _requesterTgwInfo?.build();
        _$failedField = 'accepterTgwInfo';
        _accepterTgwInfo?.build();
        _$failedField = 'options';
        _options?.build();
        _$failedField = 'status';
        _status?.build();

        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TransitGatewayPeeringAttachment', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
