// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.instance_metadata_options_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InstanceMetadataOptionsResponse
    extends InstanceMetadataOptionsResponse {
  @override
  final _i2.InstanceMetadataOptionsState? state;
  @override
  final _i3.HttpTokensState? httpTokens;
  @override
  final int httpPutResponseHopLimit;
  @override
  final _i4.InstanceMetadataEndpointState? httpEndpoint;
  @override
  final _i5.InstanceMetadataProtocolState? httpProtocolIpv6;
  @override
  final _i6.InstanceMetadataTagsState? instanceMetadataTags;

  factory _$InstanceMetadataOptionsResponse(
          [void Function(InstanceMetadataOptionsResponseBuilder)? updates]) =>
      (new InstanceMetadataOptionsResponseBuilder()..update(updates))._build();

  _$InstanceMetadataOptionsResponse._(
      {this.state,
      this.httpTokens,
      required this.httpPutResponseHopLimit,
      this.httpEndpoint,
      this.httpProtocolIpv6,
      this.instanceMetadataTags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(httpPutResponseHopLimit,
        r'InstanceMetadataOptionsResponse', 'httpPutResponseHopLimit');
  }

  @override
  InstanceMetadataOptionsResponse rebuild(
          void Function(InstanceMetadataOptionsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstanceMetadataOptionsResponseBuilder toBuilder() =>
      new InstanceMetadataOptionsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstanceMetadataOptionsResponse &&
        state == other.state &&
        httpTokens == other.httpTokens &&
        httpPutResponseHopLimit == other.httpPutResponseHopLimit &&
        httpEndpoint == other.httpEndpoint &&
        httpProtocolIpv6 == other.httpProtocolIpv6 &&
        instanceMetadataTags == other.instanceMetadataTags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, httpTokens.hashCode);
    _$hash = $jc(_$hash, httpPutResponseHopLimit.hashCode);
    _$hash = $jc(_$hash, httpEndpoint.hashCode);
    _$hash = $jc(_$hash, httpProtocolIpv6.hashCode);
    _$hash = $jc(_$hash, instanceMetadataTags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InstanceMetadataOptionsResponseBuilder
    implements
        Builder<InstanceMetadataOptionsResponse,
            InstanceMetadataOptionsResponseBuilder> {
  _$InstanceMetadataOptionsResponse? _$v;

  _i2.InstanceMetadataOptionsState? _state;
  _i2.InstanceMetadataOptionsState? get state => _$this._state;
  set state(_i2.InstanceMetadataOptionsState? state) => _$this._state = state;

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

  InstanceMetadataOptionsResponseBuilder() {
    InstanceMetadataOptionsResponse._init(this);
  }

  InstanceMetadataOptionsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _state = $v.state;
      _httpTokens = $v.httpTokens;
      _httpPutResponseHopLimit = $v.httpPutResponseHopLimit;
      _httpEndpoint = $v.httpEndpoint;
      _httpProtocolIpv6 = $v.httpProtocolIpv6;
      _instanceMetadataTags = $v.instanceMetadataTags;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstanceMetadataOptionsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InstanceMetadataOptionsResponse;
  }

  @override
  void update(void Function(InstanceMetadataOptionsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InstanceMetadataOptionsResponse build() => _build();

  _$InstanceMetadataOptionsResponse _build() {
    final _$result = _$v ??
        new _$InstanceMetadataOptionsResponse._(
            state: state,
            httpTokens: httpTokens,
            httpPutResponseHopLimit: BuiltValueNullFieldError.checkNotNull(
                httpPutResponseHopLimit,
                r'InstanceMetadataOptionsResponse',
                'httpPutResponseHopLimit'),
            httpEndpoint: httpEndpoint,
            httpProtocolIpv6: httpProtocolIpv6,
            instanceMetadataTags: instanceMetadataTags);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
