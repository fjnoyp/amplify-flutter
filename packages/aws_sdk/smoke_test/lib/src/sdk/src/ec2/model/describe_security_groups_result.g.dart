// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.describe_security_groups_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeSecurityGroupsResult extends DescribeSecurityGroupsResult {
  @override
  final _i3.BuiltList<_i2.SecurityGroup>? securityGroups;
  @override
  final String? nextToken;

  factory _$DescribeSecurityGroupsResult(
          [void Function(DescribeSecurityGroupsResultBuilder)? updates]) =>
      (new DescribeSecurityGroupsResultBuilder()..update(updates))._build();

  _$DescribeSecurityGroupsResult._({this.securityGroups, this.nextToken})
      : super._();

  @override
  DescribeSecurityGroupsResult rebuild(
          void Function(DescribeSecurityGroupsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeSecurityGroupsResultBuilder toBuilder() =>
      new DescribeSecurityGroupsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeSecurityGroupsResult &&
        securityGroups == other.securityGroups &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, securityGroups.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeSecurityGroupsResultBuilder
    implements
        Builder<DescribeSecurityGroupsResult,
            DescribeSecurityGroupsResultBuilder> {
  _$DescribeSecurityGroupsResult? _$v;

  _i3.ListBuilder<_i2.SecurityGroup>? _securityGroups;
  _i3.ListBuilder<_i2.SecurityGroup> get securityGroups =>
      _$this._securityGroups ??= new _i3.ListBuilder<_i2.SecurityGroup>();
  set securityGroups(_i3.ListBuilder<_i2.SecurityGroup>? securityGroups) =>
      _$this._securityGroups = securityGroups;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeSecurityGroupsResultBuilder() {
    DescribeSecurityGroupsResult._init(this);
  }

  DescribeSecurityGroupsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _securityGroups = $v.securityGroups?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeSecurityGroupsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeSecurityGroupsResult;
  }

  @override
  void update(void Function(DescribeSecurityGroupsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeSecurityGroupsResult build() => _build();

  _$DescribeSecurityGroupsResult _build() {
    _$DescribeSecurityGroupsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeSecurityGroupsResult._(
              securityGroups: _securityGroups?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'securityGroups';
        _securityGroups?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeSecurityGroupsResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
