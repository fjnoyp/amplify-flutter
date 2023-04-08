// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.path_statement;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PathStatement extends PathStatement {
  @override
  final _i2.PacketHeaderStatement? packetHeaderStatement;
  @override
  final _i3.ResourceStatement? resourceStatement;

  factory _$PathStatement([void Function(PathStatementBuilder)? updates]) =>
      (new PathStatementBuilder()..update(updates))._build();

  _$PathStatement._({this.packetHeaderStatement, this.resourceStatement})
      : super._();

  @override
  PathStatement rebuild(void Function(PathStatementBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PathStatementBuilder toBuilder() => new PathStatementBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PathStatement &&
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

class PathStatementBuilder
    implements Builder<PathStatement, PathStatementBuilder> {
  _$PathStatement? _$v;

  _i2.PacketHeaderStatementBuilder? _packetHeaderStatement;
  _i2.PacketHeaderStatementBuilder get packetHeaderStatement =>
      _$this._packetHeaderStatement ??= new _i2.PacketHeaderStatementBuilder();
  set packetHeaderStatement(
          _i2.PacketHeaderStatementBuilder? packetHeaderStatement) =>
      _$this._packetHeaderStatement = packetHeaderStatement;

  _i3.ResourceStatementBuilder? _resourceStatement;
  _i3.ResourceStatementBuilder get resourceStatement =>
      _$this._resourceStatement ??= new _i3.ResourceStatementBuilder();
  set resourceStatement(_i3.ResourceStatementBuilder? resourceStatement) =>
      _$this._resourceStatement = resourceStatement;

  PathStatementBuilder() {
    PathStatement._init(this);
  }

  PathStatementBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _packetHeaderStatement = $v.packetHeaderStatement?.toBuilder();
      _resourceStatement = $v.resourceStatement?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PathStatement other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PathStatement;
  }

  @override
  void update(void Function(PathStatementBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PathStatement build() => _build();

  _$PathStatement _build() {
    _$PathStatement _$result;
    try {
      _$result = _$v ??
          new _$PathStatement._(
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
            r'PathStatement', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
