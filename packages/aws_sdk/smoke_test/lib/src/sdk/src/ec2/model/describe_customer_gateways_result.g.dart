// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.describe_customer_gateways_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeCustomerGatewaysResult extends DescribeCustomerGatewaysResult {
  @override
  final _i3.BuiltList<_i2.CustomerGateway>? customerGateways;

  factory _$DescribeCustomerGatewaysResult(
          [void Function(DescribeCustomerGatewaysResultBuilder)? updates]) =>
      (new DescribeCustomerGatewaysResultBuilder()..update(updates))._build();

  _$DescribeCustomerGatewaysResult._({this.customerGateways}) : super._();

  @override
  DescribeCustomerGatewaysResult rebuild(
          void Function(DescribeCustomerGatewaysResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeCustomerGatewaysResultBuilder toBuilder() =>
      new DescribeCustomerGatewaysResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeCustomerGatewaysResult &&
        customerGateways == other.customerGateways;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, customerGateways.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeCustomerGatewaysResultBuilder
    implements
        Builder<DescribeCustomerGatewaysResult,
            DescribeCustomerGatewaysResultBuilder> {
  _$DescribeCustomerGatewaysResult? _$v;

  _i3.ListBuilder<_i2.CustomerGateway>? _customerGateways;
  _i3.ListBuilder<_i2.CustomerGateway> get customerGateways =>
      _$this._customerGateways ??= new _i3.ListBuilder<_i2.CustomerGateway>();
  set customerGateways(
          _i3.ListBuilder<_i2.CustomerGateway>? customerGateways) =>
      _$this._customerGateways = customerGateways;

  DescribeCustomerGatewaysResultBuilder() {
    DescribeCustomerGatewaysResult._init(this);
  }

  DescribeCustomerGatewaysResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _customerGateways = $v.customerGateways?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeCustomerGatewaysResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeCustomerGatewaysResult;
  }

  @override
  void update(void Function(DescribeCustomerGatewaysResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeCustomerGatewaysResult build() => _build();

  _$DescribeCustomerGatewaysResult _build() {
    _$DescribeCustomerGatewaysResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeCustomerGatewaysResult._(
              customerGateways: _customerGateways?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'customerGateways';
        _customerGateways?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeCustomerGatewaysResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
