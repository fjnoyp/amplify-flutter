// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.create_capacity_reservation_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateCapacityReservationRequest
    extends CreateCapacityReservationRequest {
  @override
  final String? clientToken;
  @override
  final String instanceType;
  @override
  final _i3.CapacityReservationInstancePlatform instancePlatform;
  @override
  final String? availabilityZone;
  @override
  final String? availabilityZoneId;
  @override
  final _i4.CapacityReservationTenancy? tenancy;
  @override
  final int instanceCount;
  @override
  final bool ebsOptimized;
  @override
  final bool ephemeralStorage;
  @override
  final DateTime? endDate;
  @override
  final _i5.EndDateType? endDateType;
  @override
  final _i6.InstanceMatchCriteria? instanceMatchCriteria;
  @override
  final _i8.BuiltList<_i7.TagSpecification>? tagSpecifications;
  @override
  final bool dryRun;
  @override
  final String? outpostArn;
  @override
  final String? placementGroupArn;

  factory _$CreateCapacityReservationRequest(
          [void Function(CreateCapacityReservationRequestBuilder)? updates]) =>
      (new CreateCapacityReservationRequestBuilder()..update(updates))._build();

  _$CreateCapacityReservationRequest._(
      {this.clientToken,
      required this.instanceType,
      required this.instancePlatform,
      this.availabilityZone,
      this.availabilityZoneId,
      this.tenancy,
      required this.instanceCount,
      required this.ebsOptimized,
      required this.ephemeralStorage,
      this.endDate,
      this.endDateType,
      this.instanceMatchCriteria,
      this.tagSpecifications,
      required this.dryRun,
      this.outpostArn,
      this.placementGroupArn})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        instanceType, r'CreateCapacityReservationRequest', 'instanceType');
    BuiltValueNullFieldError.checkNotNull(instancePlatform,
        r'CreateCapacityReservationRequest', 'instancePlatform');
    BuiltValueNullFieldError.checkNotNull(
        instanceCount, r'CreateCapacityReservationRequest', 'instanceCount');
    BuiltValueNullFieldError.checkNotNull(
        ebsOptimized, r'CreateCapacityReservationRequest', 'ebsOptimized');
    BuiltValueNullFieldError.checkNotNull(ephemeralStorage,
        r'CreateCapacityReservationRequest', 'ephemeralStorage');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateCapacityReservationRequest', 'dryRun');
  }

  @override
  CreateCapacityReservationRequest rebuild(
          void Function(CreateCapacityReservationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateCapacityReservationRequestBuilder toBuilder() =>
      new CreateCapacityReservationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateCapacityReservationRequest &&
        clientToken == other.clientToken &&
        instanceType == other.instanceType &&
        instancePlatform == other.instancePlatform &&
        availabilityZone == other.availabilityZone &&
        availabilityZoneId == other.availabilityZoneId &&
        tenancy == other.tenancy &&
        instanceCount == other.instanceCount &&
        ebsOptimized == other.ebsOptimized &&
        ephemeralStorage == other.ephemeralStorage &&
        endDate == other.endDate &&
        endDateType == other.endDateType &&
        instanceMatchCriteria == other.instanceMatchCriteria &&
        tagSpecifications == other.tagSpecifications &&
        dryRun == other.dryRun &&
        outpostArn == other.outpostArn &&
        placementGroupArn == other.placementGroupArn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jc(_$hash, instanceType.hashCode);
    _$hash = $jc(_$hash, instancePlatform.hashCode);
    _$hash = $jc(_$hash, availabilityZone.hashCode);
    _$hash = $jc(_$hash, availabilityZoneId.hashCode);
    _$hash = $jc(_$hash, tenancy.hashCode);
    _$hash = $jc(_$hash, instanceCount.hashCode);
    _$hash = $jc(_$hash, ebsOptimized.hashCode);
    _$hash = $jc(_$hash, ephemeralStorage.hashCode);
    _$hash = $jc(_$hash, endDate.hashCode);
    _$hash = $jc(_$hash, endDateType.hashCode);
    _$hash = $jc(_$hash, instanceMatchCriteria.hashCode);
    _$hash = $jc(_$hash, tagSpecifications.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, outpostArn.hashCode);
    _$hash = $jc(_$hash, placementGroupArn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateCapacityReservationRequestBuilder
    implements
        Builder<CreateCapacityReservationRequest,
            CreateCapacityReservationRequestBuilder> {
  _$CreateCapacityReservationRequest? _$v;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  String? _instanceType;
  String? get instanceType => _$this._instanceType;
  set instanceType(String? instanceType) => _$this._instanceType = instanceType;

  _i3.CapacityReservationInstancePlatform? _instancePlatform;
  _i3.CapacityReservationInstancePlatform? get instancePlatform =>
      _$this._instancePlatform;
  set instancePlatform(
          _i3.CapacityReservationInstancePlatform? instancePlatform) =>
      _$this._instancePlatform = instancePlatform;

  String? _availabilityZone;
  String? get availabilityZone => _$this._availabilityZone;
  set availabilityZone(String? availabilityZone) =>
      _$this._availabilityZone = availabilityZone;

  String? _availabilityZoneId;
  String? get availabilityZoneId => _$this._availabilityZoneId;
  set availabilityZoneId(String? availabilityZoneId) =>
      _$this._availabilityZoneId = availabilityZoneId;

  _i4.CapacityReservationTenancy? _tenancy;
  _i4.CapacityReservationTenancy? get tenancy => _$this._tenancy;
  set tenancy(_i4.CapacityReservationTenancy? tenancy) =>
      _$this._tenancy = tenancy;

  int? _instanceCount;
  int? get instanceCount => _$this._instanceCount;
  set instanceCount(int? instanceCount) =>
      _$this._instanceCount = instanceCount;

  bool? _ebsOptimized;
  bool? get ebsOptimized => _$this._ebsOptimized;
  set ebsOptimized(bool? ebsOptimized) => _$this._ebsOptimized = ebsOptimized;

  bool? _ephemeralStorage;
  bool? get ephemeralStorage => _$this._ephemeralStorage;
  set ephemeralStorage(bool? ephemeralStorage) =>
      _$this._ephemeralStorage = ephemeralStorage;

  DateTime? _endDate;
  DateTime? get endDate => _$this._endDate;
  set endDate(DateTime? endDate) => _$this._endDate = endDate;

  _i5.EndDateType? _endDateType;
  _i5.EndDateType? get endDateType => _$this._endDateType;
  set endDateType(_i5.EndDateType? endDateType) =>
      _$this._endDateType = endDateType;

  _i6.InstanceMatchCriteria? _instanceMatchCriteria;
  _i6.InstanceMatchCriteria? get instanceMatchCriteria =>
      _$this._instanceMatchCriteria;
  set instanceMatchCriteria(_i6.InstanceMatchCriteria? instanceMatchCriteria) =>
      _$this._instanceMatchCriteria = instanceMatchCriteria;

  _i8.ListBuilder<_i7.TagSpecification>? _tagSpecifications;
  _i8.ListBuilder<_i7.TagSpecification> get tagSpecifications =>
      _$this._tagSpecifications ??= new _i8.ListBuilder<_i7.TagSpecification>();
  set tagSpecifications(
          _i8.ListBuilder<_i7.TagSpecification>? tagSpecifications) =>
      _$this._tagSpecifications = tagSpecifications;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _outpostArn;
  String? get outpostArn => _$this._outpostArn;
  set outpostArn(String? outpostArn) => _$this._outpostArn = outpostArn;

  String? _placementGroupArn;
  String? get placementGroupArn => _$this._placementGroupArn;
  set placementGroupArn(String? placementGroupArn) =>
      _$this._placementGroupArn = placementGroupArn;

  CreateCapacityReservationRequestBuilder() {
    CreateCapacityReservationRequest._init(this);
  }

  CreateCapacityReservationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientToken = $v.clientToken;
      _instanceType = $v.instanceType;
      _instancePlatform = $v.instancePlatform;
      _availabilityZone = $v.availabilityZone;
      _availabilityZoneId = $v.availabilityZoneId;
      _tenancy = $v.tenancy;
      _instanceCount = $v.instanceCount;
      _ebsOptimized = $v.ebsOptimized;
      _ephemeralStorage = $v.ephemeralStorage;
      _endDate = $v.endDate;
      _endDateType = $v.endDateType;
      _instanceMatchCriteria = $v.instanceMatchCriteria;
      _tagSpecifications = $v.tagSpecifications?.toBuilder();
      _dryRun = $v.dryRun;
      _outpostArn = $v.outpostArn;
      _placementGroupArn = $v.placementGroupArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateCapacityReservationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateCapacityReservationRequest;
  }

  @override
  void update(void Function(CreateCapacityReservationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateCapacityReservationRequest build() => _build();

  _$CreateCapacityReservationRequest _build() {
    _$CreateCapacityReservationRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateCapacityReservationRequest._(
              clientToken: clientToken,
              instanceType: BuiltValueNullFieldError.checkNotNull(
                  instanceType, r'CreateCapacityReservationRequest', 'instanceType'),
              instancePlatform: BuiltValueNullFieldError.checkNotNull(
                  instancePlatform,
                  r'CreateCapacityReservationRequest',
                  'instancePlatform'),
              availabilityZone: availabilityZone,
              availabilityZoneId: availabilityZoneId,
              tenancy: tenancy,
              instanceCount: BuiltValueNullFieldError.checkNotNull(
                  instanceCount, r'CreateCapacityReservationRequest', 'instanceCount'),
              ebsOptimized: BuiltValueNullFieldError.checkNotNull(
                  ebsOptimized, r'CreateCapacityReservationRequest', 'ebsOptimized'),
              ephemeralStorage: BuiltValueNullFieldError.checkNotNull(
                  ephemeralStorage,
                  r'CreateCapacityReservationRequest',
                  'ephemeralStorage'),
              endDate: endDate,
              endDateType: endDateType,
              instanceMatchCriteria: instanceMatchCriteria,
              tagSpecifications: _tagSpecifications?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CreateCapacityReservationRequest', 'dryRun'),
              outpostArn: outpostArn,
              placementGroupArn: placementGroupArn);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagSpecifications';
        _tagSpecifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateCapacityReservationRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
