// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.describe_vpcs_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeVpcsResult extends DescribeVpcsResult {
  @override
  final _i3.BuiltList<_i2.Vpc>? vpcs;
  @override
  final String? nextToken;

  factory _$DescribeVpcsResult(
          [void Function(DescribeVpcsResultBuilder)? updates]) =>
      (new DescribeVpcsResultBuilder()..update(updates))._build();

  _$DescribeVpcsResult._({this.vpcs, this.nextToken}) : super._();

  @override
  DescribeVpcsResult rebuild(
          void Function(DescribeVpcsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeVpcsResultBuilder toBuilder() =>
      new DescribeVpcsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeVpcsResult &&
        vpcs == other.vpcs &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vpcs.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeVpcsResultBuilder
    implements Builder<DescribeVpcsResult, DescribeVpcsResultBuilder> {
  _$DescribeVpcsResult? _$v;

  _i3.ListBuilder<_i2.Vpc>? _vpcs;
  _i3.ListBuilder<_i2.Vpc> get vpcs =>
      _$this._vpcs ??= new _i3.ListBuilder<_i2.Vpc>();
  set vpcs(_i3.ListBuilder<_i2.Vpc>? vpcs) => _$this._vpcs = vpcs;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeVpcsResultBuilder() {
    DescribeVpcsResult._init(this);
  }

  DescribeVpcsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vpcs = $v.vpcs?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeVpcsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeVpcsResult;
  }

  @override
  void update(void Function(DescribeVpcsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeVpcsResult build() => _build();

  _$DescribeVpcsResult _build() {
    _$DescribeVpcsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeVpcsResult._(
              vpcs: _vpcs?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vpcs';
        _vpcs?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeVpcsResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
