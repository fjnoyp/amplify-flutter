// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.get_transit_gateway_attachment_propagations_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetTransitGatewayAttachmentPropagationsResult
    extends GetTransitGatewayAttachmentPropagationsResult {
  @override
  final _i3.BuiltList<_i2.TransitGatewayAttachmentPropagation>?
      transitGatewayAttachmentPropagations;
  @override
  final String? nextToken;

  factory _$GetTransitGatewayAttachmentPropagationsResult(
          [void Function(GetTransitGatewayAttachmentPropagationsResultBuilder)?
              updates]) =>
      (new GetTransitGatewayAttachmentPropagationsResultBuilder()
            ..update(updates))
          ._build();

  _$GetTransitGatewayAttachmentPropagationsResult._(
      {this.transitGatewayAttachmentPropagations, this.nextToken})
      : super._();

  @override
  GetTransitGatewayAttachmentPropagationsResult rebuild(
          void Function(GetTransitGatewayAttachmentPropagationsResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetTransitGatewayAttachmentPropagationsResultBuilder toBuilder() =>
      new GetTransitGatewayAttachmentPropagationsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetTransitGatewayAttachmentPropagationsResult &&
        transitGatewayAttachmentPropagations ==
            other.transitGatewayAttachmentPropagations &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayAttachmentPropagations.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetTransitGatewayAttachmentPropagationsResultBuilder
    implements
        Builder<GetTransitGatewayAttachmentPropagationsResult,
            GetTransitGatewayAttachmentPropagationsResultBuilder> {
  _$GetTransitGatewayAttachmentPropagationsResult? _$v;

  _i3.ListBuilder<_i2.TransitGatewayAttachmentPropagation>?
      _transitGatewayAttachmentPropagations;
  _i3.ListBuilder<_i2.TransitGatewayAttachmentPropagation>
      get transitGatewayAttachmentPropagations =>
          _$this._transitGatewayAttachmentPropagations ??=
              new _i3.ListBuilder<_i2.TransitGatewayAttachmentPropagation>();
  set transitGatewayAttachmentPropagations(
          _i3.ListBuilder<_i2.TransitGatewayAttachmentPropagation>?
              transitGatewayAttachmentPropagations) =>
      _$this._transitGatewayAttachmentPropagations =
          transitGatewayAttachmentPropagations;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  GetTransitGatewayAttachmentPropagationsResultBuilder() {
    GetTransitGatewayAttachmentPropagationsResult._init(this);
  }

  GetTransitGatewayAttachmentPropagationsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayAttachmentPropagations =
          $v.transitGatewayAttachmentPropagations?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetTransitGatewayAttachmentPropagationsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetTransitGatewayAttachmentPropagationsResult;
  }

  @override
  void update(
      void Function(GetTransitGatewayAttachmentPropagationsResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetTransitGatewayAttachmentPropagationsResult build() => _build();

  _$GetTransitGatewayAttachmentPropagationsResult _build() {
    _$GetTransitGatewayAttachmentPropagationsResult _$result;
    try {
      _$result = _$v ??
          new _$GetTransitGatewayAttachmentPropagationsResult._(
              transitGatewayAttachmentPropagations:
                  _transitGatewayAttachmentPropagations?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transitGatewayAttachmentPropagations';
        _transitGatewayAttachmentPropagations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetTransitGatewayAttachmentPropagationsResult',
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
