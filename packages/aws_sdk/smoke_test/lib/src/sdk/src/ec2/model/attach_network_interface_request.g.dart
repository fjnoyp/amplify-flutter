// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.attach_network_interface_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AttachNetworkInterfaceRequest extends AttachNetworkInterfaceRequest {
  @override
  final int deviceIndex;
  @override
  final bool dryRun;
  @override
  final String instanceId;
  @override
  final String networkInterfaceId;
  @override
  final int networkCardIndex;

  factory _$AttachNetworkInterfaceRequest(
          [void Function(AttachNetworkInterfaceRequestBuilder)? updates]) =>
      (new AttachNetworkInterfaceRequestBuilder()..update(updates))._build();

  _$AttachNetworkInterfaceRequest._(
      {required this.deviceIndex,
      required this.dryRun,
      required this.instanceId,
      required this.networkInterfaceId,
      required this.networkCardIndex})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        deviceIndex, r'AttachNetworkInterfaceRequest', 'deviceIndex');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'AttachNetworkInterfaceRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        instanceId, r'AttachNetworkInterfaceRequest', 'instanceId');
    BuiltValueNullFieldError.checkNotNull(networkInterfaceId,
        r'AttachNetworkInterfaceRequest', 'networkInterfaceId');
    BuiltValueNullFieldError.checkNotNull(
        networkCardIndex, r'AttachNetworkInterfaceRequest', 'networkCardIndex');
  }

  @override
  AttachNetworkInterfaceRequest rebuild(
          void Function(AttachNetworkInterfaceRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AttachNetworkInterfaceRequestBuilder toBuilder() =>
      new AttachNetworkInterfaceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AttachNetworkInterfaceRequest &&
        deviceIndex == other.deviceIndex &&
        dryRun == other.dryRun &&
        instanceId == other.instanceId &&
        networkInterfaceId == other.networkInterfaceId &&
        networkCardIndex == other.networkCardIndex;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deviceIndex.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, networkInterfaceId.hashCode);
    _$hash = $jc(_$hash, networkCardIndex.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AttachNetworkInterfaceRequestBuilder
    implements
        Builder<AttachNetworkInterfaceRequest,
            AttachNetworkInterfaceRequestBuilder> {
  _$AttachNetworkInterfaceRequest? _$v;

  int? _deviceIndex;
  int? get deviceIndex => _$this._deviceIndex;
  set deviceIndex(int? deviceIndex) => _$this._deviceIndex = deviceIndex;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  String? _networkInterfaceId;
  String? get networkInterfaceId => _$this._networkInterfaceId;
  set networkInterfaceId(String? networkInterfaceId) =>
      _$this._networkInterfaceId = networkInterfaceId;

  int? _networkCardIndex;
  int? get networkCardIndex => _$this._networkCardIndex;
  set networkCardIndex(int? networkCardIndex) =>
      _$this._networkCardIndex = networkCardIndex;

  AttachNetworkInterfaceRequestBuilder() {
    AttachNetworkInterfaceRequest._init(this);
  }

  AttachNetworkInterfaceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deviceIndex = $v.deviceIndex;
      _dryRun = $v.dryRun;
      _instanceId = $v.instanceId;
      _networkInterfaceId = $v.networkInterfaceId;
      _networkCardIndex = $v.networkCardIndex;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AttachNetworkInterfaceRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AttachNetworkInterfaceRequest;
  }

  @override
  void update(void Function(AttachNetworkInterfaceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AttachNetworkInterfaceRequest build() => _build();

  _$AttachNetworkInterfaceRequest _build() {
    final _$result = _$v ??
        new _$AttachNetworkInterfaceRequest._(
            deviceIndex: BuiltValueNullFieldError.checkNotNull(
                deviceIndex, r'AttachNetworkInterfaceRequest', 'deviceIndex'),
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'AttachNetworkInterfaceRequest', 'dryRun'),
            instanceId: BuiltValueNullFieldError.checkNotNull(
                instanceId, r'AttachNetworkInterfaceRequest', 'instanceId'),
            networkInterfaceId: BuiltValueNullFieldError.checkNotNull(
                networkInterfaceId,
                r'AttachNetworkInterfaceRequest',
                'networkInterfaceId'),
            networkCardIndex: BuiltValueNullFieldError.checkNotNull(
                networkCardIndex,
                r'AttachNetworkInterfaceRequest',
                'networkCardIndex'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
