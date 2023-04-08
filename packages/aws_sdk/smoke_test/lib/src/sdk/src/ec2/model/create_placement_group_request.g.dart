// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.create_placement_group_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreatePlacementGroupRequest extends CreatePlacementGroupRequest {
  @override
  final bool dryRun;
  @override
  final String? groupName;
  @override
  final _i3.PlacementStrategy? strategy;
  @override
  final int partitionCount;
  @override
  final _i6.BuiltList<_i4.TagSpecification>? tagSpecifications;
  @override
  final _i5.SpreadLevel? spreadLevel;

  factory _$CreatePlacementGroupRequest(
          [void Function(CreatePlacementGroupRequestBuilder)? updates]) =>
      (new CreatePlacementGroupRequestBuilder()..update(updates))._build();

  _$CreatePlacementGroupRequest._(
      {required this.dryRun,
      this.groupName,
      this.strategy,
      required this.partitionCount,
      this.tagSpecifications,
      this.spreadLevel})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreatePlacementGroupRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        partitionCount, r'CreatePlacementGroupRequest', 'partitionCount');
  }

  @override
  CreatePlacementGroupRequest rebuild(
          void Function(CreatePlacementGroupRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreatePlacementGroupRequestBuilder toBuilder() =>
      new CreatePlacementGroupRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreatePlacementGroupRequest &&
        dryRun == other.dryRun &&
        groupName == other.groupName &&
        strategy == other.strategy &&
        partitionCount == other.partitionCount &&
        tagSpecifications == other.tagSpecifications &&
        spreadLevel == other.spreadLevel;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, groupName.hashCode);
    _$hash = $jc(_$hash, strategy.hashCode);
    _$hash = $jc(_$hash, partitionCount.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, spreadLevel.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreatePlacementGroupRequestBuilder
    implements
        Builder<CreatePlacementGroupRequest,
            CreatePlacementGroupRequestBuilder> {
  _$CreatePlacementGroupRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _groupName;
  String? get groupName => _$this._groupName;
  set groupName(String? groupName) => _$this._groupName = groupName;

  _i3.PlacementStrategy? _strategy;
  _i3.PlacementStrategy? get strategy => _$this._strategy;
  set strategy(_i3.PlacementStrategy? strategy) => _$this._strategy = strategy;

  int? _partitionCount;
  int? get partitionCount => _$this._partitionCount;
  set partitionCount(int? partitionCount) =>
      _$this._partitionCount = partitionCount;

  _i6.ListBuilder<_i4.TagSpecification>? _tagSpecifications;
  _i6.ListBuilder<_i4.TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i6.ListBuilder<_i4.TagSpecification>();
  set tagSpecifications(
          _i6.ListBuilder<_i4.TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  _i5.SpreadLevel? _spreadLevel;
  _i5.SpreadLevel? get spreadLevel => _$this._spreadLevel;
  set spreadLevel(_i5.SpreadLevel? spreadLevel) =>
      _$this._spreadLevel = spreadLevel;

  CreatePlacementGroupRequestBuilder() {
    CreatePlacementGroupRequest._init(this);
  }

  CreatePlacementGroupRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _groupName = $v.groupName;
      _strategy = $v.strategy;
      _partitionCount = $v.partitionCount;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _spreadLevel = $v.spreadLevel;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreatePlacementGroupRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreatePlacementGroupRequest;
  }

  @override
  void update(void Function(CreatePlacementGroupRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreatePlacementGroupRequest build() => _build();

  _$CreatePlacementGroupRequest _build() {
    _$CreatePlacementGroupRequest _$result;
    try {
      _$result = _$v ??
          new _$CreatePlacementGroupRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreatePlacementGroupRequest', 'dryRun'),
              groupName: groupName,
              strategy: strategy,
              partitionCount: BuiltValueNullFieldError.checkNotNull(
                  partitionCount,
                  r'CreatePlacementGroupRequest',
                  'partitionCount'),
              tagSpecifications: _tagSpecifications?.build(),
              spreadLevel: spreadLevel);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreatePlacementGroupRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
