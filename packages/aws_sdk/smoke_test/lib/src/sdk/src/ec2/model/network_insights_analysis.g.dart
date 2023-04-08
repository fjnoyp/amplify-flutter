// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.network_insights_analysis;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NetworkInsightsAnalysis extends NetworkInsightsAnalysis {
  @override
  final String? networkInsightsAnalysisId;
  @override
  final String? networkInsightsAnalysisArn;
  @override
  final String? networkInsightsPathId;
  @override
  final _i7.BuiltList<String>? filterInArns;
  @override
  final DateTime? startDate;
  @override
  final _i2.AnalysisStatus? status;
  @override
  final String? statusMessage;
  @override
  final String? warningMessage;
  @override
  final bool networkPathFound;
  @override
  final _i7.BuiltList<_i3.PathComponent>? forwardPathComponents;
  @override
  final _i7.BuiltList<_i3.PathComponent>? returnPathComponents;
  @override
  final _i7.BuiltList<_i4.Explanation>? explanations;
  @override
  final _i7.BuiltList<_i5.AlternatePathHint>? alternatePathHints;
  @override
  final _i7.BuiltList<_i6.Tag>? tags;

  factory _$NetworkInsightsAnalysis(
          [void Function(NetworkInsightsAnalysisBuilder)? updates]) =>
      (new NetworkInsightsAnalysisBuilder()..update(updates))._build();

  _$NetworkInsightsAnalysis._(
      {this.networkInsightsAnalysisId,
      this.networkInsightsAnalysisArn,
      this.networkInsightsPathId,
      this.filterInArns,
      this.startDate,
      this.status,
      this.statusMessage,
      this.warningMessage,
      required this.networkPathFound,
      this.forwardPathComponents,
      this.returnPathComponents,
      this.explanations,
      this.alternatePathHints,
      this.tags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        networkPathFound, r'NetworkInsightsAnalysis', 'networkPathFound');
  }

  @override
  NetworkInsightsAnalysis rebuild(
          void Function(NetworkInsightsAnalysisBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NetworkInsightsAnalysisBuilder toBuilder() =>
      new NetworkInsightsAnalysisBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NetworkInsightsAnalysis &&
        networkInsightsAnalysisId == other.networkInsightsAnalysisId &&
        networkInsightsAnalysisArn == other.networkInsightsAnalysisArn &&
        networkInsightsPathId == other.networkInsightsPathId &&
        filterInArns == other.filterInArns &&
        startDate == other.startDate &&
        status == other.status &&
        statusMessage == other.statusMessage &&
        warningMessage == other.warningMessage &&
        networkPathFound == other.networkPathFound &&
        forwardPathComponents == other.forwardPathComponents &&
        returnPathComponents == other.returnPathComponents &&
        explanations == other.explanations &&
        alternatePathHints == other.alternatePathHints &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, networkInsightsAnalysisId.hashCode);
    _$hash = $jc(_$hash, networkInsightsAnalysisArn.hashCode);
    _$hash = $jc(_$hash, networkInsightsPathId.hashCode);
    _$hash = $jc(_$hash, filterInArns.hashCode);
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, statusMessage.hashCode);
    _$hash = $jc(_$hash, warningMessage.hashCode);
    _$hash = $jc(_$hash, networkPathFound.hashCode);
    _$hash = $jc(_$hash, forwardPathComponents.hashCode);
    _$hash = $jc(_$hash, returnPathComponents.hashCode);
    _$hash = $jc(_$hash, explanations.hashCode);
    _$hash = $jc(_$hash, alternatePathHints.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class NetworkInsightsAnalysisBuilder
    implements
        Builder<NetworkInsightsAnalysis, NetworkInsightsAnalysisBuilder> {
  _$NetworkInsightsAnalysis? _$v;

  String? _networkInsightsAnalysisId;
  String? get networkInsightsAnalysisId => _$this._networkInsightsAnalysisId;
  set networkInsightsAnalysisId(String? networkInsightsAnalysisId) =>
      _$this._networkInsightsAnalysisId = networkInsightsAnalysisId;

  String? _networkInsightsAnalysisArn;
  String? get networkInsightsAnalysisArn => _$this._networkInsightsAnalysisArn;
  set networkInsightsAnalysisArn(String? networkInsightsAnalysisArn) =>
      _$this._networkInsightsAnalysisArn = networkInsightsAnalysisArn;

  String? _networkInsightsPathId;
  String? get networkInsightsPathId => _$this._networkInsightsPathId;
  set networkInsightsPathId(String? networkInsightsPathId) =>
      _$this._networkInsightsPathId = networkInsightsPathId;

  _i7.ListBuilder<String>? _filterInArns;
  _i7.ListBuilder<String> get filterInArns =>
      _$this._filterInArns ??= new _i7.ListBuilder<String>();
  set filterInArns(_i7.ListBuilder<String>? filterInArns) =>
      _$this._filterInArns = filterInArns;

  DateTime? _startDate;
  DateTime? get startDate => _$this._startDate;
  set startDate(DateTime? startDate) => _$this._startDate = startDate;

  _i2.AnalysisStatus? _status;
  _i2.AnalysisStatus? get status => _$this._status;
  set status(_i2.AnalysisStatus? status) => _$this._status = status;

  String? _statusMessage;
  String? get statusMessage => _$this._statusMessage;
  set statusMessage(String? statusMessage) =>
      _$this._statusMessage = statusMessage;

  String? _warningMessage;
  String? get warningMessage => _$this._warningMessage;
  set warningMessage(String? warningMessage) =>
      _$this._warningMessage = warningMessage;

  bool? _networkPathFound;
  bool? get networkPathFound => _$this._networkPathFound;
  set networkPathFound(bool? networkPathFound) =>
      _$this._networkPathFound = networkPathFound;

  _i7.ListBuilder<_i3.PathComponent>? _forwardPathComponents;
  _i7.ListBuilder<_i3.PathComponent> get forwardPathComponents =>
      _$this._forwardPathComponents ??=
          new _i7.ListBuilder<_i3.PathComponent>();
  set forwardPathComponents(
          _i7.ListBuilder<_i3.PathComponent>? forwardPathComponents) =>
      _$this._forwardPathComponents = forwardPathComponents;

  _i7.ListBuilder<_i3.PathComponent>? _returnPathComponents;
  _i7.ListBuilder<_i3.PathComponent> get returnPathComponents =>
      _$this._returnPathComponents ??= new _i7.ListBuilder<_i3.PathComponent>();
  set returnPathComponents(
          _i7.ListBuilder<_i3.PathComponent>? returnPathComponents) =>
      _$this._returnPathComponents = returnPathComponents;

  _i7.ListBuilder<_i4.Explanation>? _explanations;
  _i7.ListBuilder<_i4.Explanation> get explanations =>
      _$this._explanations ??= new _i7.ListBuilder<_i4.Explanation>();
  set explanations(_i7.ListBuilder<_i4.Explanation>? explanations) =>
      _$this._explanations = explanations;

  _i7.ListBuilder<_i5.AlternatePathHint>? _alternatePathHints;
  _i7.ListBuilder<_i5.AlternatePathHint> get alternatePathHints =>
      _$this._alternatePathHints ??=
          new _i7.ListBuilder<_i5.AlternatePathHint>();
  set alternatePathHints(
          _i7.ListBuilder<_i5.AlternatePathHint>? alternatePathHints) =>
      _$this._alternatePathHints = alternatePathHints;

  _i7.ListBuilder<_i6.Tag>? _tags;
  _i7.ListBuilder<_i6.Tag> get tags =>
      _$this._tags ??= new _i7.ListBuilder<_i6.Tag>();
  set tags(_i7.ListBuilder<_i6.Tag>? tags) => _$this._tags = tags;

  NetworkInsightsAnalysisBuilder() {
    NetworkInsightsAnalysis._init(this);
  }

  NetworkInsightsAnalysisBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _networkInsightsAnalysisId = $v.networkInsightsAnalysisId;
      _networkInsightsAnalysisArn = $v.networkInsightsAnalysisArn;
      _networkInsightsPathId = $v.networkInsightsPathId;
      _filterInArns = $v.filterInArns?.toBuilder();
      _startDate = $v.startDate;
      _status = $v.status;
      _statusMessage = $v.statusMessage;
      _warningMessage = $v.warningMessage;
      _networkPathFound = $v.networkPathFound;
      _forwardPathComponents = $v.forwardPathComponents?.toBuilder();
      _returnPathComponents = $v.returnPathComponents?.toBuilder();
      _explanations = $v.explanations?.toBuilder();
      _alternatePathHints = $v.alternatePathHints?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NetworkInsightsAnalysis other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NetworkInsightsAnalysis;
  }

  @override
  void update(void Function(NetworkInsightsAnalysisBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NetworkInsightsAnalysis build() => _build();

  _$NetworkInsightsAnalysis _build() {
    _$NetworkInsightsAnalysis _$result;
    try {
      _$result = _$v ??
          new _$NetworkInsightsAnalysis._(
              networkInsightsAnalysisId: networkInsightsAnalysisId,
              networkInsightsAnalysisArn: networkInsightsAnalysisArn,
              networkInsightsPathId: networkInsightsPathId,
              filterInArns: _filterInArns?.build(),
              startDate: startDate,
              status: status,
              statusMessage: statusMessage,
              warningMessage: warningMessage,
              networkPathFound: BuiltValueNullFieldError.checkNotNull(
                  networkPathFound,
                  r'NetworkInsightsAnalysis',
                  'networkPathFound'),
              forwardPathComponents: _forwardPathComponents?.build(),
              returnPathComponents: _returnPathComponents?.build(),
              explanations: _explanations?.build(),
              alternatePathHints: _alternatePathHints?.build(),
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filterInArns';
        _filterInArns?.build();

        _$failedField = 'forwardPathComponents';
        _forwardPathComponents?.build();
        _$failedField = 'returnPathComponents';
        _returnPathComponents?.build();
        _$failedField = 'explanations';
        _explanations?.build();
        _$failedField = 'alternatePathHints';
        _alternatePathHints?.build();
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'NetworkInsightsAnalysis', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
