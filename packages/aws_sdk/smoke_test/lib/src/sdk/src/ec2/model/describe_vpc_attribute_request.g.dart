// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.describe_vpc_attribute_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeVpcAttributeRequest extends DescribeVpcAttributeRequest {
  @override
  final _i3.VpcAttributeName attribute;
  @override
  final String vpcId;
  @override
  final bool dryRun;

  factory _$DescribeVpcAttributeRequest(
          [void Function(DescribeVpcAttributeRequestBuilder)? updates]) =>
      (new DescribeVpcAttributeRequestBuilder()..update(updates))._build();

  _$DescribeVpcAttributeRequest._(
      {required this.attribute, required this.vpcId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        attribute, r'DescribeVpcAttributeRequest', 'attribute');
    BuiltValueNullFieldError.checkNotNull(
        vpcId, r'DescribeVpcAttributeRequest', 'vpcId');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeVpcAttributeRequest', 'dryRun');
  }

  @override
  DescribeVpcAttributeRequest rebuild(
          void Function(DescribeVpcAttributeRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeVpcAttributeRequestBuilder toBuilder() =>
      new DescribeVpcAttributeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeVpcAttributeRequest &&
        attribute == other.attribute &&
        vpcId == other.vpcId &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, attribute.hashCode);
    _$hash = $jc(_$hash, vpcId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeVpcAttributeRequestBuilder
    implements
        Builder<DescribeVpcAttributeRequest,
            DescribeVpcAttributeRequestBuilder> {
  _$DescribeVpcAttributeRequest? _$v;

  _i3.VpcAttributeName? _attribute;
  _i3.VpcAttributeName? get attribute => _$this._attribute;
  set attribute(_i3.VpcAttributeName? attribute) =>
      _$this._attribute = attribute;

  String? _vpcId;
  String? get vpcId => _$this._vpcId;
  set vpcId(String? vpcId) => _$this._vpcId = vpcId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DescribeVpcAttributeRequestBuilder() {
    DescribeVpcAttributeRequest._init(this);
  }

  DescribeVpcAttributeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attribute = $v.attribute;
      _vpcId = $v.vpcId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeVpcAttributeRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeVpcAttributeRequest;
  }

  @override
  void update(void Function(DescribeVpcAttributeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeVpcAttributeRequest build() => _build();

  _$DescribeVpcAttributeRequest _build() {
    final _$result = _$v ??
        new _$DescribeVpcAttributeRequest._(
            attribute: BuiltValueNullFieldError.checkNotNull(
                attribute, r'DescribeVpcAttributeRequest', 'attribute'),
            vpcId: BuiltValueNullFieldError.checkNotNull(
                vpcId, r'DescribeVpcAttributeRequest', 'vpcId'),
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DescribeVpcAttributeRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
