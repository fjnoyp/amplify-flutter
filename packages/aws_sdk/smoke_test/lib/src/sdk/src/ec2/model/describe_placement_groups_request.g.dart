// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.describe_placement_groups_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribePlacementGroupsRequest extends DescribePlacementGroupsRequest {
  @override
  final _i4.BuiltList<_i3.Filter>? filters;
  @override
  final bool dryRun;
  @override
  final _i4.BuiltList<String>? groupNames;
  @override
  final _i4.BuiltList<String>? groupIds;

  factory _$DescribePlacementGroupsRequest(
          [void Function(DescribePlacementGroupsRequestBuilder)? updates]) =>
      (new DescribePlacementGroupsRequestBuilder()..update(updates))._build();

  _$DescribePlacementGroupsRequest._(
      {this.filters, required this.dryRun, this.groupNames, this.groupIds})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribePlacementGroupsRequest', 'dryRun');
  }

  @override
  DescribePlacementGroupsRequest rebuild(
          void Function(DescribePlacementGroupsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribePlacementGroupsRequestBuilder toBuilder() =>
      new DescribePlacementGroupsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribePlacementGroupsRequest &&
        filters == other.filters &&
        dryRun == other.dryRun &&
        groupNames == other.groupNames &&
        groupIds == other.groupIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, groupNames.hashCode);
    _$hash = $jc(_$hash, groupIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribePlacementGroupsRequestBuilder
    implements
        Builder<DescribePlacementGroupsRequest,
            DescribePlacementGroupsRequestBuilder> {
  _$DescribePlacementGroupsRequest? _$v;

  _i4.ListBuilder<_i3.Filter>? _filters;
  _i4.ListBuilder<_i3.Filter> get filters =>
      _$this._filters ??= new _i4.ListBuilder<_i3.Filter>();
  set filters(_i4.ListBuilder<_i3.Filter>? filters) =>
      _$this._filters = filters;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i4.ListBuilder<String>? _groupNames;
  _i4.ListBuilder<String> get groupNames =>
      _$this._groupNames ??= new _i4.ListBuilder<String>();
  set groupNames(_i4.ListBuilder<String>? groupNames) =>
      _$this._groupNames = groupNames;

  _i4.ListBuilder<String>? _groupIds;
  _i4.ListBuilder<String> get groupIds =>
      _$this._groupIds ??= new _i4.ListBuilder<String>();
  set groupIds(_i4.ListBuilder<String>? groupIds) =>
      _$this._groupIds = groupIds;

  DescribePlacementGroupsRequestBuilder() {
    DescribePlacementGroupsRequest._init(this);
  }

  DescribePlacementGroupsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filters = $v.filters?.toBuilder();
      _dryRun = $v.dryRun;
      _groupNames = $v.groupNames?.toBuilder();
      _groupIds = $v.groupIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribePlacementGroupsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribePlacementGroupsRequest;
  }

  @override
  void update(void Function(DescribePlacementGroupsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribePlacementGroupsRequest build() => _build();

  _$DescribePlacementGroupsRequest _build() {
    _$DescribePlacementGroupsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribePlacementGroupsRequest._(
              filters: _filters?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribePlacementGroupsRequest', 'dryRun'),
              groupNames: _groupNames?.build(),
              groupIds: _groupIds?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();

        _$failedField = 'groupNames';
        _groupNames?.build();
        _$failedField = 'groupIds';
        _groupIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribePlacementGroupsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
