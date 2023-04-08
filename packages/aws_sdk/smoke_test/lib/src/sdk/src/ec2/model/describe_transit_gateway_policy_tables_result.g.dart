// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.describe_transit_gateway_policy_tables_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeTransitGatewayPolicyTablesResult
    extends DescribeTransitGatewayPolicyTablesResult {
  @override
  final _i3.BuiltList<_i2.TransitGatewayPolicyTable>?
      transitGatewayPolicyTables;
  @override
  final String? nextToken;

  factory _$DescribeTransitGatewayPolicyTablesResult(
          [void Function(DescribeTransitGatewayPolicyTablesResultBuilder)?
              updates]) =>
      (new DescribeTransitGatewayPolicyTablesResultBuilder()..update(updates))
          ._build();

  _$DescribeTransitGatewayPolicyTablesResult._(
      {this.transitGatewayPolicyTables, this.nextToken})
      : super._();

  @override
  DescribeTransitGatewayPolicyTablesResult rebuild(
          void Function(DescribeTransitGatewayPolicyTablesResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeTransitGatewayPolicyTablesResultBuilder toBuilder() =>
      new DescribeTransitGatewayPolicyTablesResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeTransitGatewayPolicyTablesResult &&
        transitGatewayPolicyTables == other.transitGatewayPolicyTables &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayPolicyTables.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeTransitGatewayPolicyTablesResultBuilder
    implements
        Builder<DescribeTransitGatewayPolicyTablesResult,
            DescribeTransitGatewayPolicyTablesResultBuilder> {
  _$DescribeTransitGatewayPolicyTablesResult? _$v;

  _i3.ListBuilder<_i2.TransitGatewayPolicyTable>? _transitGatewayPolicyTables;
  _i3.ListBuilder<_i2.TransitGatewayPolicyTable>
      get transitGatewayPolicyTables => _$this._transitGatewayPolicyTables ??=
          new _i3.ListBuilder<_i2.TransitGatewayPolicyTable>();
  set transitGatewayPolicyTables(
          _i3.ListBuilder<_i2.TransitGatewayPolicyTable>?
              transitGatewayPolicyTables) =>
      _$this._transitGatewayPolicyTables = transitGatewayPolicyTables;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeTransitGatewayPolicyTablesResultBuilder() {
    DescribeTransitGatewayPolicyTablesResult._init(this);
  }

  DescribeTransitGatewayPolicyTablesResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayPolicyTables = $v.transitGatewayPolicyTables?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeTransitGatewayPolicyTablesResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeTransitGatewayPolicyTablesResult;
  }

  @override
  void update(
      void Function(DescribeTransitGatewayPolicyTablesResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeTransitGatewayPolicyTablesResult build() => _build();

  _$DescribeTransitGatewayPolicyTablesResult _build() {
    _$DescribeTransitGatewayPolicyTablesResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeTransitGatewayPolicyTablesResult._(
              transitGatewayPolicyTables: _transitGatewayPolicyTables?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transitGatewayPolicyTables';
        _transitGatewayPolicyTables?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeTransitGatewayPolicyTablesResult',
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
