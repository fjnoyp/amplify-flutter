// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.access_scope_path_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccessScopePathRequest extends AccessScopePathRequest {
  @override
  final _i2.PathStatementRequest? source;
  @override
  final _i2.PathStatementRequest? destination;
  @override
  final _i4.BuiltList<_i3.ThroughResourcesStatementRequest>? throughResources;

  factory _$AccessScopePathRequest(
          [void Function(AccessScopePathRequestBuilder)? updates]) =>
      (new AccessScopePathRequestBuilder()..update(updates))._build();

  _$AccessScopePathRequest._(
      {this.source, this.destination, this.throughResources})
      : super._();

  @override
  AccessScopePathRequest rebuild(
          void Function(AccessScopePathRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccessScopePathRequestBuilder toBuilder() =>
      new AccessScopePathRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccessScopePathRequest &&
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

class AccessScopePathRequestBuilder
    implements Builder<AccessScopePathRequest, AccessScopePathRequestBuilder> {
  _$AccessScopePathRequest? _$v;

  _i2.PathStatementRequestBuilder? _source;
  _i2.PathStatementRequestBuilder get source =>
      _$this._source ??= new _i2.PathStatementRequestBuilder();
  set source(_i2.PathStatementRequestBuilder? source) =>
      _$this._source = source;

  _i2.PathStatementRequestBuilder? _destination;
  _i2.PathStatementRequestBuilder get destination =>
      _$this._destination ??= new _i2.PathStatementRequestBuilder();
  set destination(_i2.PathStatementRequestBuilder? destination) =>
      _$this._destination = destination;

  _i4.ListBuilder<_i3.ThroughResourcesStatementRequest>? _throughResources;
  _i4.ListBuilder<_i3.ThroughResourcesStatementRequest> get throughResources =>
      _$this._throughResources ??=
          new _i4.ListBuilder<_i3.ThroughResourcesStatementRequest>();
  set throughResources(
          _i4.ListBuilder<_i3.ThroughResourcesStatementRequest>?
              throughResources) =>
      _$this._throughResources = throughResources;

  AccessScopePathRequestBuilder() {
    AccessScopePathRequest._init(this);
  }

  AccessScopePathRequestBuilder get _$this {
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
  void replace(AccessScopePathRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccessScopePathRequest;
  }

  @override
  void update(void Function(AccessScopePathRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccessScopePathRequest build() => _build();

  _$AccessScopePathRequest _build() {
    _$AccessScopePathRequest _$result;
    try {
      _$result = _$v ??
          new _$AccessScopePathRequest._(
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
            r'AccessScopePathRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
