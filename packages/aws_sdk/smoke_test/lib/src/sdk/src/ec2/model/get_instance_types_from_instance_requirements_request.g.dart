// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.get_instance_types_from_instance_requirements_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetInstanceTypesFromInstanceRequirementsRequest
    extends GetInstanceTypesFromInstanceRequirementsRequest {
  @override
  final bool dryRun;
  @override
  final _i6.BuiltList<_i3.ArchitectureType> architectureTypes;
  @override
  final _i6.BuiltList<_i4.VirtualizationType> virtualizationTypes;
  @override
  final _i5.InstanceRequirementsRequest instanceRequirements;
  @override
  final int maxResults;
  @override
  final String? nextToken;

  factory _$GetInstanceTypesFromInstanceRequirementsRequest(
          [void Function(
                  GetInstanceTypesFromInstanceRequirementsRequestBuilder)?
              updates]) =>
      (new GetInstanceTypesFromInstanceRequirementsRequestBuilder()
            ..update(updates))
          ._build();

  _$GetInstanceTypesFromInstanceRequirementsRequest._(
      {required this.dryRun,
      required this.architectureTypes,
      required this.virtualizationTypes,
      required this.instanceRequirements,
      required this.maxResults,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'GetInstanceTypesFromInstanceRequirementsRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        architectureTypes,
        r'GetInstanceTypesFromInstanceRequirementsRequest',
        'architectureTypes');
    BuiltValueNullFieldError.checkNotNull(
        virtualizationTypes,
        r'GetInstanceTypesFromInstanceRequirementsRequest',
        'virtualizationTypes');
    BuiltValueNullFieldError.checkNotNull(
        instanceRequirements,
        r'GetInstanceTypesFromInstanceRequirementsRequest',
        'instanceRequirements');
    BuiltValueNullFieldError.checkNotNull(maxResults,
        r'GetInstanceTypesFromInstanceRequirementsRequest', 'maxResults');
  }

  @override
  GetInstanceTypesFromInstanceRequirementsRequest rebuild(
          void Function(GetInstanceTypesFromInstanceRequirementsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetInstanceTypesFromInstanceRequirementsRequestBuilder toBuilder() =>
      new GetInstanceTypesFromInstanceRequirementsRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetInstanceTypesFromInstanceRequirementsRequest &&
        dryRun == other.dryRun &&
        architectureTypes == other.architectureTypes &&
        virtualizationTypes == other.virtualizationTypes &&
        instanceRequirements == other.instanceRequirements &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, architectureTypes.hashCode);
    _$hash = $jc(_$hash, virtualizationTypes.hashCode);
    _$hash = $jc(_$hash, instanceRequirements.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetInstanceTypesFromInstanceRequirementsRequestBuilder
    implements
        Builder<GetInstanceTypesFromInstanceRequirementsRequest,
            GetInstanceTypesFromInstanceRequirementsRequestBuilder> {
  _$GetInstanceTypesFromInstanceRequirementsRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i6.ListBuilder<_i3.ArchitectureType>? _architectureTypes;
  _i6.ListBuilder<_i3.ArchitectureType> get architectureTypes =>
      _$this._architectureTypes ??= new _i6.ListBuilder<_i3.ArchitectureType>();
  set architectureTypes(
          _i6.ListBuilder<_i3.ArchitectureType>? architectureTypes) =>
      _$this._architectureTypes = architectureTypes;

  _i6.ListBuilder<_i4.VirtualizationType>? _virtualizationTypes;
  _i6.ListBuilder<_i4.VirtualizationType> get virtualizationTypes =>
      _$this._virtualizationTypes ??=
          new _i6.ListBuilder<_i4.VirtualizationType>();
  set virtualizationTypes(
          _i6.ListBuilder<_i4.VirtualizationType>? virtualizationTypes) =>
      _$this._virtualizationTypes = virtualizationTypes;

  _i5.InstanceRequirementsRequestBuilder? _instanceRequirements;
  _i5.InstanceRequirementsRequestBuilder get instanceRequirements =>
      _$this._instanceRequirements ??=
          new _i5.InstanceRequirementsRequestBuilder();
  set instanceRequirements(
          _i5.InstanceRequirementsRequestBuilder? instanceRequirements) =>
      _$this._instanceRequirements = instanceRequirements;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  GetInstanceTypesFromInstanceRequirementsRequestBuilder() {
    GetInstanceTypesFromInstanceRequirementsRequest._init(this);
  }

  GetInstanceTypesFromInstanceRequirementsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _architectureTypes = $v.architectureTypes.toBuilder();
      _virtualizationTypes = $v.virtualizationTypes.toBuilder();
      _instanceRequirements = $v.instanceRequirements.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetInstanceTypesFromInstanceRequirementsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetInstanceTypesFromInstanceRequirementsRequest;
  }

  @override
  void update(
      void Function(GetInstanceTypesFromInstanceRequirementsRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetInstanceTypesFromInstanceRequirementsRequest build() => _build();

  _$GetInstanceTypesFromInstanceRequirementsRequest _build() {
    _$GetInstanceTypesFromInstanceRequirementsRequest _$result;
    try {
      _$result = _$v ??
          new _$GetInstanceTypesFromInstanceRequirementsRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                  r'GetInstanceTypesFromInstanceRequirementsRequest', 'dryRun'),
              architectureTypes: architectureTypes.build(),
              virtualizationTypes: virtualizationTypes.build(),
              instanceRequirements: instanceRequirements.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults,
                  r'GetInstanceTypesFromInstanceRequirementsRequest',
                  'maxResults'),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'architectureTypes';
        architectureTypes.build();
        _$failedField = 'virtualizationTypes';
        virtualizationTypes.build();
        _$failedField = 'instanceRequirements';
        instanceRequirements.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetInstanceTypesFromInstanceRequirementsRequest',
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
