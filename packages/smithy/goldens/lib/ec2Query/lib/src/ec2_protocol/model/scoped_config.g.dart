// GENERATED CODE - DO NOT MODIFY BY HAND

part of ec2_query_v1.ec2_protocol.model.scoped_config;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ScopedConfig extends ScopedConfig {
  @override
  final _i2.EnvironmentConfig? environment;
  @override
  final _i6.BuiltMap<String, _i3.FileConfigSettings>? configFile;
  @override
  final _i6.BuiltMap<String, _i3.FileConfigSettings>? credentialsFile;
  @override
  final _i4.ClientConfig? client;
  @override
  final _i5.OperationConfig? operation;

  factory _$ScopedConfig([void Function(ScopedConfigBuilder)? updates]) =>
      (new ScopedConfigBuilder()..update(updates))._build();

  _$ScopedConfig._(
      {this.environment,
      this.configFile,
      this.credentialsFile,
      this.client,
      this.operation})
      : super._();

  @override
  ScopedConfig rebuild(void Function(ScopedConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScopedConfigBuilder toBuilder() => new ScopedConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScopedConfig &&
        environment == other.environment &&
        configFile == other.configFile &&
        credentialsFile == other.credentialsFile &&
        client == other.client &&
        operation == other.operation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, environment.hashCode);
    _$hash = $jc(_$hash, configFile.hashCode);
    _$hash = $jc(_$hash, credentialsFile.hashCode);
    _$hash = $jc(_$hash, client.hashCode);
    _$hash = $jc(_$hash, operation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ScopedConfigBuilder
    implements Builder<ScopedConfig, ScopedConfigBuilder> {
  _$ScopedConfig? _$v;

  _i2.EnvironmentConfigBuilder? _environment;
  _i2.EnvironmentConfigBuilder get environment =>
      _$this._environment ??= new _i2.EnvironmentConfigBuilder();
  set environment(_i2.EnvironmentConfigBuilder? environment) =>
      _$this._environment = environment;

  _i6.MapBuilder<String, _i3.FileConfigSettings>? _configFile;
  _i6.MapBuilder<String, _i3.FileConfigSettings> get configFile =>
      _$this._configFile ??=
          new _i6.MapBuilder<String, _i3.FileConfigSettings>();
  set configFile(_i6.MapBuilder<String, _i3.FileConfigSettings>? configFile) =>
      _$this._configFile = configFile;

  _i6.MapBuilder<String, _i3.FileConfigSettings>? _credentialsFile;
  _i6.MapBuilder<String, _i3.FileConfigSettings> get credentialsFile =>
      _$this._credentialsFile ??=
          new _i6.MapBuilder<String, _i3.FileConfigSettings>();
  set credentialsFile(
          _i6.MapBuilder<String, _i3.FileConfigSettings>? credentialsFile) =>
      _$this._credentialsFile = credentialsFile;

  _i4.ClientConfigBuilder? _client;
  _i4.ClientConfigBuilder get client =>
      _$this._client ??= new _i4.ClientConfigBuilder();
  set client(_i4.ClientConfigBuilder? client) => _$this._client = client;

  _i5.OperationConfigBuilder? _operation;
  _i5.OperationConfigBuilder get operation =>
      _$this._operation ??= new _i5.OperationConfigBuilder();
  set operation(_i5.OperationConfigBuilder? operation) =>
      _$this._operation = operation;

  ScopedConfigBuilder() {
    ScopedConfig._init(this);
  }

  ScopedConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _environment = $v.environment?.toBuilder();
      _configFile = $v.configFile?.toBuilder();
      _credentialsFile = $v.credentialsFile?.toBuilder();
      _client = $v.client?.toBuilder();
      _operation = $v.operation?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScopedConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ScopedConfig;
  }

  @override
  void update(void Function(ScopedConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ScopedConfig build() => _build();

  _$ScopedConfig _build() {
    _$ScopedConfig _$result;
    try {
      _$result = _$v ??
          new _$ScopedConfig._(
              environment: _environment?.build(),
              configFile: _configFile?.build(),
              credentialsFile: _credentialsFile?.build(),
              client: _client?.build(),
              operation: _operation?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'environment';
        _environment?.build();
        _$failedField = 'configFile';
        _configFile?.build();
        _$failedField = 'credentialsFile';
        _credentialsFile?.build();
        _$failedField = 'client';
        _client?.build();
        _$failedField = 'operation';
        _operation?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ScopedConfig', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
