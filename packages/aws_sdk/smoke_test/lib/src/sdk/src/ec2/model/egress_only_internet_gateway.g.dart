// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.egress_only_internet_gateway;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EgressOnlyInternetGateway extends EgressOnlyInternetGateway {
  @override
  final _i4.BuiltList<_i2.InternetGatewayAttachment>? attachments;
  @override
  final String? egressOnlyInternetGatewayId;
  @override
  final _i4.BuiltList<_i3.Tag>? tags;

  factory _$EgressOnlyInternetGateway(
          [void Function(EgressOnlyInternetGatewayBuilder)? updates]) =>
      (new EgressOnlyInternetGatewayBuilder()..update(updates))._build();

  _$EgressOnlyInternetGateway._(
      {this.attachments, this.egressOnlyInternetGatewayId, this.tags})
      : super._();

  @override
  EgressOnlyInternetGateway rebuild(
          void Function(EgressOnlyInternetGatewayBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EgressOnlyInternetGatewayBuilder toBuilder() =>
      new EgressOnlyInternetGatewayBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EgressOnlyInternetGateway &&
        attachments == other.attachments &&
        egressOnlyInternetGatewayId == other.egressOnlyInternetGatewayId &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, attachments.hashCode);
    _$hash = $jc(_$hash, egressOnlyInternetGatewayId.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EgressOnlyInternetGatewayBuilder
    implements
        Builder<EgressOnlyInternetGateway, EgressOnlyInternetGatewayBuilder> {
  _$EgressOnlyInternetGateway? _$v;

  _i4.ListBuilder<_i2.InternetGatewayAttachment>? _attachments;
  _i4.ListBuilder<_i2.InternetGatewayAttachment> get attachments =>
      _$this._attachments ??=
          new _i4.ListBuilder<_i2.InternetGatewayAttachment>();
  set attachments(
          _i4.ListBuilder<_i2.InternetGatewayAttachment>? attachments) =>
      _$this._attachments = attachments;

  String? _egressOnlyInternetGatewayId;
  String? get egressOnlyInternetGatewayId =>
      _$this._egressOnlyInternetGatewayId;
  set egressOnlyInternetGatewayId(String? egressOnlyInternetGatewayId) =>
      _$this._egressOnlyInternetGatewayId = egressOnlyInternetGatewayId;

  _i4.ListBuilder<_i3.Tag>? _tags;
  _i4.ListBuilder<_i3.Tag> get tags =>
      _$this._tags ??= new _i4.ListBuilder<_i3.Tag>();
  set tags(_i4.ListBuilder<_i3.Tag>? tags) => _$this._tags = tags;

  EgressOnlyInternetGatewayBuilder() {
    EgressOnlyInternetGateway._init(this);
  }

  EgressOnlyInternetGatewayBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attachments = $v.attachments?.toBuilder();
      _egressOnlyInternetGatewayId = $v.egressOnlyInternetGatewayId;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EgressOnlyInternetGateway other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EgressOnlyInternetGateway;
  }

  @override
  void update(void Function(EgressOnlyInternetGatewayBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EgressOnlyInternetGateway build() => _build();

  _$EgressOnlyInternetGateway _build() {
    _$EgressOnlyInternetGateway _$result;
    try {
      _$result = _$v ??
          new _$EgressOnlyInternetGateway._(
              attachments: _attachments?.build(),
              egressOnlyInternetGatewayId: egressOnlyInternetGatewayId,
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'attachments';
        _attachments?.build();

        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'EgressOnlyInternetGateway', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
