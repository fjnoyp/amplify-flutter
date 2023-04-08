// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.describe_vpc_endpoint_connections_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeVpcEndpointConnectionsResult
    extends DescribeVpcEndpointConnectionsResult {
  @override
  final _i3.BuiltList<_i2.VpcEndpointConnection>? vpcEndpointConnections;
  @override
  final String? nextToken;

  factory _$DescribeVpcEndpointConnectionsResult(
          [void Function(DescribeVpcEndpointConnectionsResultBuilder)?
              updates]) =>
      (new DescribeVpcEndpointConnectionsResultBuilder()..update(updates))
          ._build();

  _$DescribeVpcEndpointConnectionsResult._(
      {this.vpcEndpointConnections, this.nextToken})
      : super._();

  @override
  DescribeVpcEndpointConnectionsResult rebuild(
          void Function(DescribeVpcEndpointConnectionsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeVpcEndpointConnectionsResultBuilder toBuilder() =>
      new DescribeVpcEndpointConnectionsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeVpcEndpointConnectionsResult &&
        vpcEndpointConnections == other.vpcEndpointConnections &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vpcEndpointConnections.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeVpcEndpointConnectionsResultBuilder
    implements
        Builder<DescribeVpcEndpointConnectionsResult,
            DescribeVpcEndpointConnectionsResultBuilder> {
  _$DescribeVpcEndpointConnectionsResult? _$v;

  _i3.ListBuilder<_i2.VpcEndpointConnection>? _vpcEndpointConnections;
  _i3.ListBuilder<_i2.VpcEndpointConnection> get vpcEndpointConnections =>
      _$this._vpcEndpointConnections ??=
          new _i3.ListBuilder<_i2.VpcEndpointConnection>();
  set vpcEndpointConnections(
          _i3.ListBuilder<_i2.VpcEndpointConnection>? vpcEndpointConnections) =>
      _$this._vpcEndpointConnections = vpcEndpointConnections;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeVpcEndpointConnectionsResultBuilder() {
    DescribeVpcEndpointConnectionsResult._init(this);
  }

  DescribeVpcEndpointConnectionsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vpcEndpointConnections = $v.vpcEndpointConnections?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeVpcEndpointConnectionsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeVpcEndpointConnectionsResult;
  }

  @override
  void update(
      void Function(DescribeVpcEndpointConnectionsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeVpcEndpointConnectionsResult build() => _build();

  _$DescribeVpcEndpointConnectionsResult _build() {
    _$DescribeVpcEndpointConnectionsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeVpcEndpointConnectionsResult._(
              vpcEndpointConnections: _vpcEndpointConnections?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vpcEndpointConnections';
        _vpcEndpointConnections?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeVpcEndpointConnectionsResult',
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
