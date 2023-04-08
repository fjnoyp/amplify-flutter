// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.describe_stale_security_groups_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeStaleSecurityGroupsResult
    extends DescribeStaleSecurityGroupsResult {
  @override
  final String? nextToken;
  @override
  final _i3.BuiltList<_i2.StaleSecurityGroup>? staleSecurityGroupSet;

  factory _$DescribeStaleSecurityGroupsResult(
          [void Function(DescribeStaleSecurityGroupsResultBuilder)? updates]) =>
      (new DescribeStaleSecurityGroupsResultBuilder()..update(updates))
          ._build();

  _$DescribeStaleSecurityGroupsResult._(
      {this.nextToken, this.staleSecurityGroupSet})
      : super._();

  @override
  DescribeStaleSecurityGroupsResult rebuild(
          void Function(DescribeStaleSecurityGroupsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeStaleSecurityGroupsResultBuilder toBuilder() =>
      new DescribeStaleSecurityGroupsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeStaleSecurityGroupsResult &&
        nextToken == other.nextToken &&
        staleSecurityGroupSet == other.staleSecurityGroupSet;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, staleSecurityGroupSet.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeStaleSecurityGroupsResultBuilder
    implements
        Builder<DescribeStaleSecurityGroupsResult,
            DescribeStaleSecurityGroupsResultBuilder> {
  _$DescribeStaleSecurityGroupsResult? _$v;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i3.ListBuilder<_i2.StaleSecurityGroup>? _staleSecurityGroupSet;
  _i3.ListBuilder<_i2.StaleSecurityGroup> get staleSecurityGroupSet =>
      _$this._staleSecurityGroupSet ??=
          new _i3.ListBuilder<_i2.StaleSecurityGroup>();
  set staleSecurityGroupSet(
          _i3.ListBuilder<_i2.StaleSecurityGroup>? staleSecurityGroupSet) =>
      _$this._staleSecurityGroupSet = staleSecurityGroupSet;

  DescribeStaleSecurityGroupsResultBuilder() {
    DescribeStaleSecurityGroupsResult._init(this);
  }

  DescribeStaleSecurityGroupsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nextToken = $v.nextToken;
      _staleSecurityGroupSet = $v.staleSecurityGroupSet?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeStaleSecurityGroupsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeStaleSecurityGroupsResult;
  }

  @override
  void update(
      void Function(DescribeStaleSecurityGroupsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeStaleSecurityGroupsResult build() => _build();

  _$DescribeStaleSecurityGroupsResult _build() {
    _$DescribeStaleSecurityGroupsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeStaleSecurityGroupsResult._(
              nextToken: nextToken,
              staleSecurityGroupSet: _staleSecurityGroupSet?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'staleSecurityGroupSet';
        _staleSecurityGroupSet?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeStaleSecurityGroupsResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
