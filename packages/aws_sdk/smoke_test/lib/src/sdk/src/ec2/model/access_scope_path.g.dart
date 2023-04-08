// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.access_scope_path;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccessScopePath extends AccessScopePath {
  @override
  final _i2.PathStatement? source;
  @override
  final _i2.PathStatement? destination;
  @override
  final _i4.BuiltList<_i3.ThroughResourcesStatement>? throughResources;

  factory _$AccessScopePath([void Function(AccessScopePathBuilder)? updates]) =>
      (new AccessScopePathBuilder()..update(updates))._build();

  _$AccessScopePath._({this.source, this.destination, this.throughResources})
      : super._();

  @override
  AccessScopePath rebuild(void Function(AccessScopePathBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccessScopePathBuilder toBuilder() =>
      new AccessScopePathBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccessScopePath &&
        source == other.source &&
        destination == other.destination &&
        throughResources == other.throughResources;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, source.hashCode);
    _$hash = $jc(_$hash, destination.hashCode);
    _$hash = $jc(_$hash, throughResources.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AccessScopePathBuilder
    implements Builder<AccessScopePath, AccessScopePathBuilder> {
  _$AccessScopePath? _$v;

  _i2.PathStatementBuilder? _source;
  _i2.PathStatementBuilder get source =>
      _$this._source ??= new _i2.PathStatementBuilder();
  set source(_i2.PathStatementBuilder? source) => _$this._source = source;

  _i2.PathStatementBuilder? _destination;
  _i2.PathStatementBuilder get destination =>
      _$this._destination ??= new _i2.PathStatementBuilder();
  set destination(_i2.PathStatementBuilder? destination) =>
      _$this._destination = destination;

  _i4.ListBuilder<_i3.ThroughResourcesStatement>? _throughResources;
  _i4.ListBuilder<_i3.ThroughResourcesStatement> get throughResources =>
      _$this._throughResources ??=
          new _i4.ListBuilder<_i3.ThroughResourcesStatement>();
  set throughResources(
          _i4.ListBuilder<_i3.ThroughResourcesStatement>? throughResources) =>
      _$this._throughResources = throughResources;

  AccessScopePathBuilder() {
    AccessScopePath._init(this);
  }

  AccessScopePathBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _source = $v.source?.toBuilder();
      _destination = $v.destination?.toBuilder();
      _throughResources = $v.throughResources?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccessScopePath other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccessScopePath;
  }

  @override
  void update(void Function(AccessScopePathBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccessScopePath build() => _build();

  _$AccessScopePath _build() {
    _$AccessScopePath _$result;
    try {
      _$result = _$v ??
          new _$AccessScopePath._(
              source: _source?.build(),
              destination: _destination?.build(),
              throughResources: _throughResources?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'source';
        _source?.build();
        _$failedField = 'destination';
        _destination?.build();
        _$failedField = 'throughResources';
        _throughResources?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AccessScopePath', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
