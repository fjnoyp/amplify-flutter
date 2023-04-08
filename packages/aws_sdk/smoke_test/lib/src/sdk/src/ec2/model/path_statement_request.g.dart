// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.path_statement_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PathStatementRequest extends PathStatementRequest {
  @override
  final _i2.PacketHeaderStatementRequest? packetHeaderStatement;
  @override
  final _i3.ResourceStatementRequest? resourceStatement;

  factory _$PathStatementRequest(
          [void Function(PathStatementRequestBuilder)? updates]) =>
      (new PathStatementRequestBuilder()..update(updates))._build();

  _$PathStatementRequest._({this.packetHeaderStatement, this.resourceStatement})
      : super._();

  @override
  PathStatementRequest rebuild(
          void Function(PathStatementRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PathStatementRequestBuilder toBuilder() =>
      new PathStatementRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PathStatementRequest &&
        packetHeaderStatement == other.packetHeaderStatement &&
        resourceStatement == other.resourceStatement;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, packetHeaderStatement.hashCode);
    _$hash = $jc(_$hash, resourceStatement.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PathStatementRequestBuilder
    implements Builder<PathStatementRequest, PathStatementRequestBuilder> {
  _$PathStatementRequest? _$v;

  _i2.PacketHeaderStatementRequestBuilder? _packetHeaderStatement;
  _i2.PacketHeaderStatementRequestBuilder get packetHeaderStatement =>
      _$this._packetHeaderStatement ??=
          new _i2.PacketHeaderStatementRequestBuilder();
  set packetHeaderStatement(
          _i2.PacketHeaderStatementRequestBuilder? packetHeaderStatement) =>
      _$this._packetHeaderStatement = packetHeaderStatement;

  _i3.ResourceStatementRequestBuilder? _resourceStatement;
  _i3.ResourceStatementRequestBuilder get resourceStatement =>
      _$this._resourceStatement ??= new _i3.ResourceStatementRequestBuilder();
  set resourceStatement(
          _i3.ResourceStatementRequestBuilder? resourceStatement) =>
      _$this._resourceStatement = resourceStatement;

  PathStatementRequestBuilder() {
    PathStatementRequest._init(this);
  }

  PathStatementRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _packetHeaderStatement = $v.packetHeaderStatement?.toBuilder();
      _resourceStatement = $v.resourceStatement?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PathStatementRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PathStatementRequest;
  }

  @override
  void update(void Function(PathStatementRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PathStatementRequest build() => _build();

  _$PathStatementRequest _build() {
    _$PathStatementRequest _$result;
    try {
      _$result = _$v ??
          new _$PathStatementRequest._(
              packetHeaderStatement: _packetHeaderStatement?.build(),
              resourceStatement: _resourceStatement?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'packetHeaderStatement';
        _packetHeaderStatement?.build();
        _$failedField = 'resourceStatement';
        _resourceStatement?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PathStatementRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
