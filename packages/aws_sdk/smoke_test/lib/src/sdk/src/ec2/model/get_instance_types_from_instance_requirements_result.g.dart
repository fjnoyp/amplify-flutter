// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.get_instance_types_from_instance_requirements_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetInstanceTypesFromInstanceRequirementsResult
    extends GetInstanceTypesFromInstanceRequirementsResult {
  @override
  final _i3.BuiltList<_i2.InstanceTypeInfoFromInstanceRequirements>?
      instanceTypes;
  @override
  final String? nextToken;

  factory _$GetInstanceTypesFromInstanceRequirementsResult(
          [void Function(GetInstanceTypesFromInstanceRequirementsResultBuilder)?
              updates]) =>
      (new GetInstanceTypesFromInstanceRequirementsResultBuilder()
            ..update(updates))
          ._build();

  _$GetInstanceTypesFromInstanceRequirementsResult._(
      {this.instanceTypes, this.nextToken})
      : super._();

  @override
  GetInstanceTypesFromInstanceRequirementsResult rebuild(
          void Function(GetInstanceTypesFromInstanceRequirementsResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetInstanceTypesFromInstanceRequirementsResultBuilder toBuilder() =>
      new GetInstanceTypesFromInstanceRequirementsResultBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetInstanceTypesFromInstanceRequirementsResult &&
        instanceTypes == other.instanceTypes &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceTypes.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetInstanceTypesFromInstanceRequirementsResultBuilder
    implements
        Builder<GetInstanceTypesFromInstanceRequirementsResult,
            GetInstanceTypesFromInstanceRequirementsResultBuilder> {
  _$GetInstanceTypesFromInstanceRequirementsResult? _$v;

  _i3.ListBuilder<_i2.InstanceTypeInfoFromInstanceRequirements>? _instanceTypes;
  _i3.ListBuilder<_i2.InstanceTypeInfoFromInstanceRequirements>
      get instanceTypes => _$this._instanceTypes ??=
          new _i3.ListBuilder<_i2.InstanceTypeInfoFromInstanceRequirements>();
  set instanceTypes(
          _i3.ListBuilder<_i2.InstanceTypeInfoFromInstanceRequirements>?
              instanceTypes) =>
      _$this._instanceTypes = instanceTypes;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  GetInstanceTypesFromInstanceRequirementsResultBuilder() {
    GetInstanceTypesFromInstanceRequirementsResult._init(this);
  }

  GetInstanceTypesFromInstanceRequirementsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceTypes = $v.instanceTypes?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetInstanceTypesFromInstanceRequirementsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetInstanceTypesFromInstanceRequirementsResult;
  }

  @override
  void update(
      void Function(GetInstanceTypesFromInstanceRequirementsResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetInstanceTypesFromInstanceRequirementsResult build() => _build();

  _$GetInstanceTypesFromInstanceRequirementsResult _build() {
    _$GetInstanceTypesFromInstanceRequirementsResult _$result;
    try {
      _$result = _$v ??
          new _$GetInstanceTypesFromInstanceRequirementsResult._(
              instanceTypes: _instanceTypes?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'instanceTypes';
        _instanceTypes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetInstanceTypesFromInstanceRequirementsResult',
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
