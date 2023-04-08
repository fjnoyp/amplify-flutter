// GENERATED CODE - DO NOT MODIFY BY HAND

part of ec2_query_v1.ec2_protocol.model.query_idempotency_token_auto_fill_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QueryIdempotencyTokenAutoFillInput
    extends QueryIdempotencyTokenAutoFillInput {
  @override
  final String? token;

  factory _$QueryIdempotencyTokenAutoFillInput(
          [void Function(QueryIdempotencyTokenAutoFillInputBuilder)?
              updates]) =>
      (new QueryIdempotencyTokenAutoFillInputBuilder()..update(updates))
          ._build();

  _$QueryIdempotencyTokenAutoFillInput._({this.token}) : super._();

  @override
  QueryIdempotencyTokenAutoFillInput rebuild(
          void Function(QueryIdempotencyTokenAutoFillInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QueryIdempotencyTokenAutoFillInputBuilder toBuilder() =>
      new QueryIdempotencyTokenAutoFillInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QueryIdempotencyTokenAutoFillInput && token == other.token;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class QueryIdempotencyTokenAutoFillInputBuilder
    implements
        Builder<QueryIdempotencyTokenAutoFillInput,
            QueryIdempotencyTokenAutoFillInputBuilder> {
  _$QueryIdempotencyTokenAutoFillInput? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  QueryIdempotencyTokenAutoFillInputBuilder() {
    QueryIdempotencyTokenAutoFillInput._init(this);
  }

  QueryIdempotencyTokenAutoFillInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QueryIdempotencyTokenAutoFillInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QueryIdempotencyTokenAutoFillInput;
  }

  @override
  void update(
      void Function(QueryIdempotencyTokenAutoFillInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QueryIdempotencyTokenAutoFillInput build() => _build();

  _$QueryIdempotencyTokenAutoFillInput _build() {
    final _$result =
        _$v ?? new _$QueryIdempotencyTokenAutoFillInput._(token: token);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
