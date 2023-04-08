// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.request_spot_instances_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RequestSpotInstancesRequest extends RequestSpotInstancesRequest {
  @override
  final String? availabilityZoneGroup;
  @override
  final int blockDurationMinutes;
  @override
  final String? clientToken;
  @override
  final bool dryRun;
  @override
  final int instanceCount;
  @override
  final String? launchGroup;
  @override
  final _i3.RequestSpotLaunchSpecification? launchSpecification;
  @override
  final String? spotPrice;
  @override
  final _i4.SpotInstanceType? type;
  @override
  final DateTime? validFrom;
  @override
  final DateTime? validUntil;
  @override
  final _i7.BuiltList<_i5.TagSpecification>? tagSpecifications;
  @override
  final _i6.InstanceInterruptionBehavior? instanceInterruptionBehavior;

  factory _$RequestSpotInstancesRequest(
          [void Function(RequestSpotInstancesRequestBuilder)? updates]) =>
      (new RequestSpotInstancesRequestBuilder()..update(updates))._build();

  _$RequestSpotInstancesRequest._(
      {this.availabilityZoneGroup,
      required this.blockDurationMinutes,
      this.clientToken,
      required this.dryRun,
      required this.instanceCount,
      this.launchGroup,
      this.launchSpecification,
      this.spotPrice,
      this.type,
      this.validFrom,
      this.validUntil,
      this.tagSpecifications,
      this.instanceInterruptionBehavior})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(blockDurationMinutes,
        r'RequestSpotInstancesRequest', 'blockDurationMinutes');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'RequestSpotInstancesRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        instanceCount, r'RequestSpotInstancesRequest', 'instanceCount');
  }

  @override
  RequestSpotInstancesRequest rebuild(
          void Function(RequestSpotInstancesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RequestSpotInstancesRequestBuilder toBuilder() =>
      new RequestSpotInstancesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RequestSpotInstancesRequest &&
        availabilityZoneGroup == other.availabilityZoneGroup &&
        blockDurationMinutes == other.blockDurationMinutes &&
        clientToken == other.clientToken &&
        dryRun == other.dryRun &&
        instanceCount == other.instanceCount &&
        launchGroup == other.launchGroup &&
        launchSpecification == other.launchSpecification &&
        spotPrice == other.spotPrice &&
        type == other.type &&
        validFrom == other.validFrom &&
        validUntil == other.validUntil &&
        tagSpecifications == other.tagSpecifications &&
        instanceInterruptionBehavior == other.instanceInterruptionBehavior;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, availabilityZoneGroup.hashCode);
    _$hash = $jc(_$hash, blockDurationMinutes.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, instanceCount.hashCode);
    _$hash = $jc(_$hash, launchGroup.hashCode);
    _$hash = $jc(_$hash, launchSpecification.hashCode);
    _$hash = $jc(_$hash, spotPrice.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, validFrom.hashCode);
    _$hash = $jc(_$hash, validUntil.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, instanceInterruptionBehavior.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RequestSpotInstancesRequestBuilder
    implements
        Builder<RequestSpotInstancesRequest,
            RequestSpotInstancesRequestBuilder> {
  _$RequestSpotInstancesRequest? _$v;

  String? _availabilityZoneGroup;
  String? get availabilityZoneGroup => _$this._availabilityZoneGroup;
  set availabilityZoneGroup(String? availabilityZoneGroup) =>
      _$this._availabilityZoneGroup = availabilityZoneGroup;

  int? _blockDurationMinutes;
  int? get blockDurationMinutes => _$this._blockDurationMinutes;
  set blockDurationMinutes(int? blockDurationMinutes) =>
      _$this._blockDurationMinutes = blockDurationMinutes;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  int? _instanceCount;
  int? get instanceCount => _$this._instanceCount;
  set instanceCount(int? instanceCount) =>
      _$this._instanceCount = instanceCount;

  String? _launchGroup;
  String? get launchGroup => _$this._launchGroup;
  set launchGroup(String? launchGroup) => _$this._launchGroup = launchGroup;

  _i3.RequestSpotLaunchSpecificationBuilder? _launchSpecification;
  _i3.RequestSpotLaunchSpecificationBuilder get launchSpecification =>
      _$this._launchSpecification ??=
          new _i3.RequestSpotLaunchSpecificationBuilder();
  set launchSpecification(
          _i3.RequestSpotLaunchSpecificationBuilder? launchSpecification) =>
      _$this._launchSpecification = launchSpecification;

  String? _spotPrice;
  String? get spotPrice => _$this._spotPrice;
  set spotPrice(String? spotPrice) => _$this._spotPrice = spotPrice;

  _i4.SpotInstanceType? _type;
  _i4.SpotInstanceType? get type => _$this._type;
  set type(_i4.SpotInstanceType? type) => _$this._type = type;

  DateTime? _validFrom;
  DateTime? get validFrom => _$this._validFrom;
  set validFrom(DateTime? validFrom) => _$this._validFrom = validFrom;

  DateTime? _validUntil;
  DateTime? get validUntil => _$this._validUntil;
  set validUntil(DateTime? validUntil) => _$this._validUntil = validUntil;

  _i7.ListBuilder<_i5.TagSpecification>? _tagSpecifications;
  _i7.ListBuilder<_i5.TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i7.ListBuilder<_i5.TagSpecification>();
  set tagSpecifications(
          _i7.ListBuilder<_i5.TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  _i6.InstanceInterruptionBehavior? _instanceInterruptionBehavior;
  _i6.InstanceInterruptionBehavior? get instanceInterruptionBehavior =>
      _$this._instanceInterruptionBehavior;
  set instanceInterruptionBehavior(
          _i6.InstanceInterruptionBehavior? instanceInterruptionBehavior) =>
      _$this._instanceInterruptionBehavior = instanceInterruptionBehavior;

  RequestSpotInstancesRequestBuilder() {
    RequestSpotInstancesRequest._init(this);
  }

  RequestSpotInstancesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _availabilityZoneGroup = $v.availabilityZoneGroup;
      _blockDurationMinutes = $v.blockDurationMinutes;
      _clientToken = $v.clientToken;
      _dryRun = $v.dryRun;
      _instanceCount = $v.instanceCount;
      _launchGroup = $v.launchGroup;
      _launchSpecification = $v.launchSpecification?.toBuilder();
      _spotPrice = $v.spotPrice;
      _type = $v.type;
      _validFrom = $v.validFrom;
      _validUntil = $v.validUntil;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _instanceInterruptionBehavior = $v.instanceInterruptionBehavior;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RequestSpotInstancesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RequestSpotInstancesRequest;
  }

  @override
  void update(void Function(RequestSpotInstancesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RequestSpotInstancesRequest build() => _build();

  _$RequestSpotInstancesRequest _build() {
    _$RequestSpotInstancesRequest _$result;
    try {
      _$result = _$v ??
          new _$RequestSpotInstancesRequest._(
              availabilityZoneGroup: availabilityZoneGroup,
              blockDurationMinutes: BuiltValueNullFieldError.checkNotNull(
                  blockDurationMinutes,
                  r'RequestSpotInstancesRequest',
                  'blockDurationMinutes'),
              clientToken: clientToken,
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'RequestSpotInstancesRequest', 'dryRun'),
              instanceCount: BuiltValueNullFieldError.checkNotNull(
                  instanceCount,
                  r'RequestSpotInstancesRequest',
                  'instanceCount'),
              launchGroup: launchGroup,
              launchSpecification: _launchSpecification?.build(),
              spotPrice: spotPrice,
              type: type,
              validFrom: validFrom,
              validUntil: validUntil,
              tagSpecifications: _tagSpecifications?.build(),
              instanceInterruptionBehavior: instanceInterruptionBehavior);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'launchSpecification';
        _launchSpecification?.build();

        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RequestSpotInstancesRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
