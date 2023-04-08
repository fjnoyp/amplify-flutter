// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.describe_network_insights_paths_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeNetworkInsightsPathsResult
    extends DescribeNetworkInsightsPathsResult {
  @override
  final _i3.BuiltList<_i2.NetworkInsightsPath>? networkInsightsPaths;
  @override
  final String? nextToken;

  factory _$DescribeNetworkInsightsPathsResult(
          [void Function(DescribeNetworkInsightsPathsResultBuilder)?
              updates]) =>
      (new DescribeNetworkInsightsPathsResultBuilder()..update(updates))
          ._build();

  _$DescribeNetworkInsightsPathsResult._(
      {this.networkInsightsPaths, this.nextToken})
      : super._();

  @override
  DescribeNetworkInsightsPathsResult rebuild(
          void Function(DescribeNetworkInsightsPathsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeNetworkInsightsPathsResultBuilder toBuilder() =>
      new DescribeNetworkInsightsPathsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeNetworkInsightsPathsResult &&
        networkInsightsPaths == other.networkInsightsPaths &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, networkInsightsPaths.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeNetworkInsightsPathsResultBuilder
    implements
        Builder<DescribeNetworkInsightsPathsResult,
            DescribeNetworkInsightsPathsResultBuilder> {
  _$DescribeNetworkInsightsPathsResult? _$v;

  _i3.ListBuilder<_i2.NetworkInsightsPath>? _networkInsightsPaths;
  _i3.ListBuilder<_i2.NetworkInsightsPath> get networkInsightsPaths =>
      _$this._networkInsightsPaths ??=
          new _i3.ListBuilder<_i2.NetworkInsightsPath>();
  set networkInsightsPaths(
          _i3.ListBuilder<_i2.NetworkInsightsPath>? networkInsightsPaths) =>
      _$this._networkInsightsPaths = networkInsightsPaths;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeNetworkInsightsPathsResultBuilder() {
    DescribeNetworkInsightsPathsResult._init(this);
  }

  DescribeNetworkInsightsPathsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _networkInsightsPaths = $v.networkInsightsPaths?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeNetworkInsightsPathsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeNetworkInsightsPathsResult;
  }

  @override
  void update(
      void Function(DescribeNetworkInsightsPathsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeNetworkInsightsPathsResult build() => _build();

  _$DescribeNetworkInsightsPathsResult _build() {
    _$DescribeNetworkInsightsPathsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeNetworkInsightsPathsResult._(
              networkInsightsPaths: _networkInsightsPaths?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'networkInsightsPaths';
        _networkInsightsPaths?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeNetworkInsightsPathsResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
