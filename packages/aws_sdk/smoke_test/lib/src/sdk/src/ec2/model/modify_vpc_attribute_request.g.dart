// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.modify_vpc_attribute_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyVpcAttributeRequest extends ModifyVpcAttributeRequest {
  @override
  final _i3.AttributeBooleanValue? enableDnsHostnames;
  @override
  final _i3.AttributeBooleanValue? enableDnsSupport;
  @override
  final String vpcId;
  @override
  final _i3.AttributeBooleanValue? enableNetworkAddressUsageMetrics;

  factory _$ModifyVpcAttributeRequest(
          [void Function(ModifyVpcAttributeRequestBuilder)? updates]) =>
      (new ModifyVpcAttributeRequestBuilder()..update(updates))._build();

  _$ModifyVpcAttributeRequest._(
      {this.enableDnsHostnames,
      this.enableDnsSupport,
      required this.vpcId,
      this.enableNetworkAddressUsageMetrics})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vpcId, r'ModifyVpcAttributeRequest', 'vpcId');
  }

  @override
  ModifyVpcAttributeRequest rebuild(
          void Function(ModifyVpcAttributeRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyVpcAttributeRequestBuilder toBuilder() =>
      new ModifyVpcAttributeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyVpcAttributeRequest &&
        enableDnsHostnames == other.enableDnsHostnames &&
        enableDnsSupport == other.enableDnsSupport &&
        vpcId == other.vpcId &&
        enableNetworkAddressUsageMetrics ==
            other.enableNetworkAddressUsageMetrics;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enableDnsHostnames.hashCode);
    _$hash = $jc(_$hash, enableDnsSupport.hashCode);
    _$hash = $jc(_$hash, vpcId.hashCode);
    _$hash = $jc(_$hash, enableNetworkAddressUsageMetrics.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyVpcAttributeRequestBuilder
    implements
        Builder<ModifyVpcAttributeRequest, ModifyVpcAttributeRequestBuilder> {
  _$ModifyVpcAttributeRequest? _$v;

  _i3.AttributeBooleanValueBuilder? _enableDnsHostnames;
  _i3.AttributeBooleanValueBuilder get enableDnsHostnames =>
      _$this._enableDnsHostnames ??= new _i3.AttributeBooleanValueBuilder();
  set enableDnsHostnames(
          _i3.AttributeBooleanValueBuilder? enableDnsHostnames) =>
      _$this._enableDnsHostnames = enableDnsHostnames;

  _i3.AttributeBooleanValueBuilder? _enableDnsSupport;
  _i3.AttributeBooleanValueBuilder get enableDnsSupport =>
      _$this._enableDnsSupport ??= new _i3.AttributeBooleanValueBuilder();
  set enableDnsSupport(_i3.AttributeBooleanValueBuilder? enableDnsSupport) =>
      _$this._enableDnsSupport = enableDnsSupport;

  String? _vpcId;
  String? get vpcId => _$this._vpcId;
  set vpcId(String? vpcId) => _$this._vpcId = vpcId;

  _i3.AttributeBooleanValueBuilder? _enableNetworkAddressUsageMetrics;
  _i3.AttributeBooleanValueBuilder get enableNetworkAddressUsageMetrics =>
      _$this._enableNetworkAddressUsageMetrics ??=
          new _i3.AttributeBooleanValueBuilder();
  set enableNetworkAddressUsageMetrics(
          _i3.AttributeBooleanValueBuilder? enableNetworkAddressUsageMetrics) =>
      _$this._enableNetworkAddressUsageMetrics =
          enableNetworkAddressUsageMetrics;

  ModifyVpcAttributeRequestBuilder() {
    ModifyVpcAttributeRequest._init(this);
  }

  ModifyVpcAttributeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enableDnsHostnames = $v.enableDnsHostnames?.toBuilder();
      _enableDnsSupport = $v.enableDnsSupport?.toBuilder();
      _vpcId = $v.vpcId;
      _enableNetworkAddressUsageMetrics =
          $v.enableNetworkAddressUsageMetrics?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyVpcAttributeRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyVpcAttributeRequest;
  }

  @override
  void update(void Function(ModifyVpcAttributeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyVpcAttributeRequest build() => _build();

  _$ModifyVpcAttributeRequest _build() {
    _$ModifyVpcAttributeRequest _$result;
    try {
      _$result = _$v ??
          new _$ModifyVpcAttributeRequest._(
              enableDnsHostnames: _enableDnsHostnames?.build(),
              enableDnsSupport: _enableDnsSupport?.build(),
              vpcId: BuiltValueNullFieldError.checkNotNull(
                  vpcId, r'ModifyVpcAttributeRequest', 'vpcId'),
              enableNetworkAddressUsageMetrics:
                  _enableNetworkAddressUsageMetrics?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'enableDnsHostnames';
        _enableDnsHostnames?.build();
        _$failedField = 'enableDnsSupport';
        _enableDnsSupport?.build();

        _$failedField = 'enableNetworkAddressUsageMetrics';
        _enableNetworkAddressUsageMetrics?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyVpcAttributeRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
