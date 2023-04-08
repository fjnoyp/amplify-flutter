// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.start_network_insights_access_scope_analysis_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StartNetworkInsightsAccessScopeAnalysisResult
    extends StartNetworkInsightsAccessScopeAnalysisResult {
  @override
  final _i2.NetworkInsightsAccessScopeAnalysis?
      networkInsightsAccessScopeAnalysis;

  factory _$StartNetworkInsightsAccessScopeAnalysisResult(
          [void Function(StartNetworkInsightsAccessScopeAnalysisResultBuilder)?
              updates]) =>
      (new StartNetworkInsightsAccessScopeAnalysisResultBuilder()
            ..update(updates))
          ._build();

  _$StartNetworkInsightsAccessScopeAnalysisResult._(
      {this.networkInsightsAccessScopeAnalysis})
      : super._();

  @override
  StartNetworkInsightsAccessScopeAnalysisResult rebuild(
          void Function(StartNetworkInsightsAccessScopeAnalysisResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StartNetworkInsightsAccessScopeAnalysisResultBuilder toBuilder() =>
      new StartNetworkInsightsAccessScopeAnalysisResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StartNetworkInsightsAccessScopeAnalysisResult &&
        networkInsightsAccessScopeAnalysis ==
            other.networkInsightsAccessScopeAnalysis;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, networkInsightsAccessScopeAnalysis.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StartNetworkInsightsAccessScopeAnalysisResultBuilder
    implements
        Builder<StartNetworkInsightsAccessScopeAnalysisResult,
            StartNetworkInsightsAccessScopeAnalysisResultBuilder> {
  _$StartNetworkInsightsAccessScopeAnalysisResult? _$v;

  _i2.NetworkInsightsAccessScopeAnalysisBuilder?
      _networkInsightsAccessScopeAnalysis;
  _i2.NetworkInsightsAccessScopeAnalysisBuilder
      get networkInsightsAccessScopeAnalysis =>
          _$this._networkInsightsAccessScopeAnalysis ??=
              new _i2.NetworkInsightsAccessScopeAnalysisBuilder();
  set networkInsightsAccessScopeAnalysis(
          _i2.NetworkInsightsAccessScopeAnalysisBuilder?
              networkInsightsAccessScopeAnalysis) =>
      _$this._networkInsightsAccessScopeAnalysis =
          networkInsightsAccessScopeAnalysis;

  StartNetworkInsightsAccessScopeAnalysisResultBuilder() {
    StartNetworkInsightsAccessScopeAnalysisResult._init(this);
  }

  StartNetworkInsightsAccessScopeAnalysisResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _networkInsightsAccessScopeAnalysis =
          $v.networkInsightsAccessScopeAnalysis?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StartNetworkInsightsAccessScopeAnalysisResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StartNetworkInsightsAccessScopeAnalysisResult;
  }

  @override
  void update(
      void Function(StartNetworkInsightsAccessScopeAnalysisResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  StartNetworkInsightsAccessScopeAnalysisResult build() => _build();

  _$StartNetworkInsightsAccessScopeAnalysisResult _build() {
    _$StartNetworkInsightsAccessScopeAnalysisResult _$result;
    try {
      _$result = _$v ??
          new _$StartNetworkInsightsAccessScopeAnalysisResult._(
              networkInsightsAccessScopeAnalysis:
                  _networkInsightsAccessScopeAnalysis?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'networkInsightsAccessScopeAnalysis';
        _networkInsightsAccessScopeAnalysis?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'StartNetworkInsightsAccessScopeAnalysisResult',
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
