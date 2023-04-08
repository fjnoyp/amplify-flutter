// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.modify_instance_metadata_options_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyInstanceMetadataOptionsRequest
    extends ModifyInstanceMetadataOptionsRequest {
  @override
  final String instanceId;
  @override
  final _i3.HttpTokensState? httpTokens;
  @override
  final int httpPutResponseHopLimit;
  @override
  final _i4.InstanceMetadataEndpointState? httpEndpoint;
  @override
  final bool dryRun;
  @override
  final _i5.InstanceMetadataProtocolState? httpProtocolIpv6;
  @override
  final _i6.InstanceMetadataTagsState? instanceMetadataTags;

  factory _$ModifyInstanceMetadataOptionsRequest(
          [void Function(ModifyInstanceMetadataOptionsRequestBuilder)?
              updates]) =>
      (new ModifyInstanceMetadataOptionsRequestBuilder()..update(updates))
          ._build();

  _$ModifyInstanceMetadataOptionsRequest._(
      {required this.instanceId,
      this.httpTokens,
      required this.httpPutResponseHopLimit,
      this.httpEndpoint,
      required this.dryRun,
      this.httpProtocolIpv6,
      this.instanceMetadataTags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        instanceId, r'ModifyInstanceMetadataOptionsRequest', 'instanceId');
    BuiltValueNullFieldError.checkNotNull(httpPutResponseHopLimit,
        r'ModifyInstanceMetadataOptionsRequest', 'httpPutResponseHopLimit');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ModifyInstanceMetadataOptionsRequest', 'dryRun');
  }

  @override
  ModifyInstanceMetadataOptionsRequest rebuild(
          void Function(ModifyInstanceMetadataOptionsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyInstanceMetadataOptionsRequestBuilder toBuilder() =>
      new ModifyInstanceMetadataOptionsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyInstanceMetadataOptionsRequest &&
        instanceId == other.instanceId &&
        httpTokens == other.httpTokens &&
        httpPutResponseHopLimit == other.httpPutResponseHopLimit &&
        httpEndpoint == other.httpEndpoint &&
        dryRun == other.dryRun &&
        httpProtocolIpv6 == other.httpProtocolIpv6 &&
        instanceMetadataTags == other.instanceMetadataTags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, httpTokens.hashCode);
    _$hash = $jc(_$hash, httpPutResponseHopLimit.hashCode);
    _$hash = $jc(_$hash, httpEndpoint.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, httpProtocolIpv6.hashCode);
    _$hash = $jc(_$hash, instanceMetadataTags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyInstanceMetadataOptionsRequestBuilder
    implements
        Builder<ModifyInstanceMetadataOptionsRequest,
            ModifyInstanceMetadataOptionsRequestBuilder> {
  _$ModifyInstanceMetadataOptionsRequest? _$v;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  _i3.HttpTokensState? _httpTokens;
  _i3.HttpTokensState? get httpTokens => _$this._httpTokens;
  set httpTokens(_i3.HttpTokensState? httpTokens) =>
      _$this._httpTokens = httpTokens;

  int? _httpPutResponseHopLimit;
  int? get httpPutResponseHopLimit => _$this._httpPutResponseHopLimit;
  set httpPutResponseHopLimit(int? httpPutResponseHopLimit) =>
      _$this._httpPutResponseHopLimit = httpPutResponseHopLimit;

  _i4.InstanceMetadataEndpointState? _httpEndpoint;
  _i4.InstanceMetadataEndpointState? get httpEndpoint => _$this._httpEndpoint;
  set httpEndpoint(_i4.InstanceMetadataEndpointState? httpEndpoint) =>
      _$this._httpEndpoint = httpEndpoint;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i5.InstanceMetadataProtocolState? _httpProtocolIpv6;
  _i5.InstanceMetadataProtocolState? get httpProtocolIpv6 =>
      _$this._httpProtocolIpv6;
  set httpProtocolIpv6(_i5.InstanceMetadataProtocolState? httpProtocolIpv6) =>
      _$this._httpProtocolIpv6 = httpProtocolIpv6;

  _i6.InstanceMetadataTagsState? _instanceMetadataTags;
  _i6.InstanceMetadataTagsState? get instanceMetadataTags =>
      _$this._instanceMetadataTags;
  set instanceMetadataTags(
          _i6.InstanceMetadataTagsState? instanceMetadataTags) =>
      _$this._instanceMetadataTags = instanceMetadataTags;

  ModifyInstanceMetadataOptionsRequestBuilder() {
    ModifyInstanceMetadataOptionsRequest._init(this);
  }

  ModifyInstanceMetadataOptionsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _instanceId = $v.instanceId;
      _httpTokens = $v.httpTokens;
      _httpPutResponseHopLimit = $v.httpPutResponseHopLimit;
      _httpEndpoint = $v.httpEndpoint;
      _dryRun = $v.dryRun;
      _httpProtocolIpv6 = $v.httpProtocolIpv6;
      _instanceMetadataTags = $v.instanceMetadataTags;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyInstanceMetadataOptionsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyInstanceMetadataOptionsRequest;
  }

  @override
  void update(
      void Function(ModifyInstanceMetadataOptionsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyInstanceMetadataOptionsRequest build() => _build();

  _$ModifyInstanceMetadataOptionsRequest _build() {
    final _$result = _$v ??
        new _$ModifyInstanceMetadataOptionsRequest._(
            instanceId: BuiltValueNullFieldError.checkNotNull(instanceId,
                r'ModifyInstanceMetadataOptionsRequest', 'instanceId'),
            httpTokens: httpTokens,
            httpPutResponseHopLimit: BuiltValueNullFieldError.checkNotNull(
                httpPutResponseHopLimit,
                r'ModifyInstanceMetadataOptionsRequest',
                'httpPutResponseHopLimit'),
            httpEndpoint: httpEndpoint,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'ModifyInstanceMetadataOptionsRequest', 'dryRun'),
            httpProtocolIpv6: httpProtocolIpv6,
            instanceMetadataTags: instanceMetadataTags);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
