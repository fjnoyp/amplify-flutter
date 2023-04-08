// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.describe_vpc_classic_link_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeVpcClassicLinkResult extends DescribeVpcClassicLinkResult {
  @override
  final _i3.BuiltList<_i2.VpcClassicLink>? vpcs;

  factory _$DescribeVpcClassicLinkResult(
          [void Function(DescribeVpcClassicLinkResultBuilder)? updates]) =>
      (new DescribeVpcClassicLinkResultBuilder()..update(updates))._build();

  _$DescribeVpcClassicLinkResult._({this.vpcs}) : super._();

  @override
  DescribeVpcClassicLinkResult rebuild(
          void Function(DescribeVpcClassicLinkResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeVpcClassicLinkResultBuilder toBuilder() =>
      new DescribeVpcClassicLinkResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeVpcClassicLinkResult && vpcs == other.vpcs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vpcs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeVpcClassicLinkResultBuilder
    implements
        Builder<DescribeVpcClassicLinkResult,
            DescribeVpcClassicLinkResultBuilder> {
  _$DescribeVpcClassicLinkResult? _$v;

  _i3.ListBuilder<_i2.VpcClassicLink>? _vpcs;
  _i3.ListBuilder<_i2.VpcClassicLink> get vpcs =>
      _$this._vpcs ??= new _i3.ListBuilder<_i2.VpcClassicLink>();
  set vpcs(_i3.ListBuilder<_i2.VpcClassicLink>? vpcs) => _$this._vpcs = vpcs;

  DescribeVpcClassicLinkResultBuilder() {
    DescribeVpcClassicLinkResult._init(this);
  }

  DescribeVpcClassicLinkResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vpcs = $v.vpcs?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeVpcClassicLinkResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeVpcClassicLinkResult;
  }

  @override
  void update(void Function(DescribeVpcClassicLinkResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeVpcClassicLinkResult build() => _build();

  _$DescribeVpcClassicLinkResult _build() {
    _$DescribeVpcClassicLinkResult _$result;
    try {
      _$result =
          _$v ?? new _$DescribeVpcClassicLinkResult._(vpcs: _vpcs?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vpcs';
        _vpcs?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeVpcClassicLinkResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
