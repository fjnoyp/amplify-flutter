// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.describe_vpc_endpoints_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeVpcEndpointsResult extends DescribeVpcEndpointsResult {
  @override
  final _i3.BuiltList<_i2.VpcEndpoint>? vpcEndpoints;
  @override
  final String? nextToken;

  factory _$DescribeVpcEndpointsResult(
          [void Function(DescribeVpcEndpointsResultBuilder)? updates]) =>
      (new DescribeVpcEndpointsResultBuilder()..update(updates))._build();

  _$DescribeVpcEndpointsResult._({this.vpcEndpoints, this.nextToken})
      : super._();

  @override
  DescribeVpcEndpointsResult rebuild(
          void Function(DescribeVpcEndpointsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeVpcEndpointsResultBuilder toBuilder() =>
      new DescribeVpcEndpointsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeVpcEndpointsResult &&
        vpcEndpoints == other.vpcEndpoints &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vpcEndpoints.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeVpcEndpointsResultBuilder
    implements
        Builder<DescribeVpcEndpointsResult, DescribeVpcEndpointsResultBuilder> {
  _$DescribeVpcEndpointsResult? _$v;

  _i3.ListBuilder<_i2.VpcEndpoint>? _vpcEndpoints;
  _i3.ListBuilder<_i2.VpcEndpoint> get vpcEndpoints =>
      _$this._vpcEndpoints ??= new _i3.ListBuilder<_i2.VpcEndpoint>();
  set vpcEndpoints(_i3.ListBuilder<_i2.VpcEndpoint>? vpcEndpoints) =>
      _$this._vpcEndpoints = vpcEndpoints;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeVpcEndpointsResultBuilder() {
    DescribeVpcEndpointsResult._init(this);
  }

  DescribeVpcEndpointsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vpcEndpoints = $v.vpcEndpoints?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeVpcEndpointsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeVpcEndpointsResult;
  }

  @override
  void update(void Function(DescribeVpcEndpointsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeVpcEndpointsResult build() => _build();

  _$DescribeVpcEndpointsResult _build() {
    _$DescribeVpcEndpointsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeVpcEndpointsResult._(
              vpcEndpoints: _vpcEndpoints?.build(), nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vpcEndpoints';
        _vpcEndpoints?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeVpcEndpointsResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
