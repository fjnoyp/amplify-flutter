// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.create_network_insights_path_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateNetworkInsightsPathResult
    extends CreateNetworkInsightsPathResult {
  @override
  final _i2.NetworkInsightsPath? networkInsightsPath;

  factory _$CreateNetworkInsightsPathResult(
          [void Function(CreateNetworkInsightsPathResultBuilder)? updates]) =>
      (new CreateNetworkInsightsPathResultBuilder()..update(updates))._build();

  _$CreateNetworkInsightsPathResult._({this.networkInsightsPath}) : super._();

  @override
  CreateNetworkInsightsPathResult rebuild(
          void Function(CreateNetworkInsightsPathResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateNetworkInsightsPathResultBuilder toBuilder() =>
      new CreateNetworkInsightsPathResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateNetworkInsightsPathResult &&
        networkInsightsPath == other.networkInsightsPath;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, networkInsightsPath.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateNetworkInsightsPathResultBuilder
    implements
        Builder<CreateNetworkInsightsPathResult,
            CreateNetworkInsightsPathResultBuilder> {
  _$CreateNetworkInsightsPathResult? _$v;

  _i2.NetworkInsightsPathBuilder? _networkInsightsPath;
  _i2.NetworkInsightsPathBuilder get networkInsightsPath =>
      _$this._networkInsightsPath ??= new _i2.NetworkInsightsPathBuilder();
  set networkInsightsPath(
          _i2.NetworkInsightsPathBuilder? networkInsightsPath) =>
      _$this._networkInsightsPath = networkInsightsPath;

  CreateNetworkInsightsPathResultBuilder() {
    CreateNetworkInsightsPathResult._init(this);
  }

  CreateNetworkInsightsPathResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _networkInsightsPath = $v.networkInsightsPath?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateNetworkInsightsPathResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateNetworkInsightsPathResult;
  }

  @override
  void update(void Function(CreateNetworkInsightsPathResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateNetworkInsightsPathResult build() => _build();

  _$CreateNetworkInsightsPathResult _build() {
    _$CreateNetworkInsightsPathResult _$result;
    try {
      _$result = _$v ??
          new _$CreateNetworkInsightsPathResult._(
              networkInsightsPath: _networkInsightsPath?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'networkInsightsPath';
        _networkInsightsPath?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateNetworkInsightsPathResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
