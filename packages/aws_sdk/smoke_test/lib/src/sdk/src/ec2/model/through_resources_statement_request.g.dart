// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.through_resources_statement_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ThroughResourcesStatementRequest
    extends ThroughResourcesStatementRequest {
  @override
  final _i2.ResourceStatementRequest? resourceStatement;

  factory _$ThroughResourcesStatementRequest(
          [void Function(ThroughResourcesStatementRequestBuilder)? updates]) =>
      (new ThroughResourcesStatementRequestBuilder()..update(updates))._build();

  _$ThroughResourcesStatementRequest._({this.resourceStatement}) : super._();

  @override
  ThroughResourcesStatementRequest rebuild(
          void Function(ThroughResourcesStatementRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ThroughResourcesStatementRequestBuilder toBuilder() =>
      new ThroughResourcesStatementRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ThroughResourcesStatementRequest &&
        resourceStatement == other.resourceStatement;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, resourceStatement.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ThroughResourcesStatementRequestBuilder
    implements
        Builder<ThroughResourcesStatementRequest,
            ThroughResourcesStatementRequestBuilder> {
  _$ThroughResourcesStatementRequest? _$v;

  _i2.ResourceStatementRequestBuilder? _resourceStatement;
  _i2.ResourceStatementRequestBuilder get resourceStatement =>
      _$this._resourceStatement ??= new _i2.ResourceStatementRequestBuilder();
  set resourceStatement(
          _i2.ResourceStatementRequestBuilder? resourceStatement) =>
      _$this._resourceStatement = resourceStatement;

  ThroughResourcesStatementRequestBuilder() {
    ThroughResourcesStatementRequest._init(this);
  }

  ThroughResourcesStatementRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resourceStatement = $v.resourceStatement?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ThroughResourcesStatementRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ThroughResourcesStatementRequest;
  }

  @override
  void update(void Function(ThroughResourcesStatementRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ThroughResourcesStatementRequest build() => _build();

  _$ThroughResourcesStatementRequest _build() {
    _$ThroughResourcesStatementRequest _$result;
    try {
      _$result = _$v ??
          new _$ThroughResourcesStatementRequest._(
              resourceStatement: _resourceStatement?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'resourceStatement';
        _resourceStatement?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ThroughResourcesStatementRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
