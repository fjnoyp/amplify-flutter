// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.ec2.model.reserved_instances_offering;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReservedInstancesOffering extends ReservedInstancesOffering {
  @override
  final String? availabilityZone;
  @override
  final _i2.Int64 duration;
  @override
  final double fixedPrice;
  @override
  final _i3.InstanceType? instanceType;
  @override
  final _i4.RiProductDescription? productDescription;
  @override
  final String? reservedInstancesOfferingId;
  @override
  final double usagePrice;
  @override
  final _i5.CurrencyCodeValues? currencyCode;
  @override
  final _i6.Tenancy? instanceTenancy;
  @override
  final bool marketplace;
  @override
  final _i7.OfferingClassType? offeringClass;
  @override
  final _i8.OfferingTypeValues? offeringType;
  @override
  final _i12.BuiltList<_i9.PricingDetail>? pricingDetails;
  @override
  final _i12.BuiltList<_i10.RecurringCharge>? recurringCharges;
  @override
  final _i11.Scope? scope;

  factory _$ReservedInstancesOffering(
          [void Function(ReservedInstancesOfferingBuilder)? updates]) =>
      (new ReservedInstancesOfferingBuilder()..update(updates))._build();

  _$ReservedInstancesOffering._(
      {this.availabilityZone,
      required this.duration,
      required this.fixedPrice,
      this.instanceType,
      this.productDescription,
      this.reservedInstancesOfferingId,
      required this.usagePrice,
      this.currencyCode,
      this.instanceTenancy,
      required this.marketplace,
      this.offeringClass,
      this.offeringType,
      this.pricingDetails,
      this.recurringCharges,
      this.scope})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        duration, r'ReservedInstancesOffering', 'duration');
    BuiltValueNullFieldError.checkNotNull(
        fixedPrice, r'ReservedInstancesOffering', 'fixedPrice');
    BuiltValueNullFieldError.checkNotNull(
        usagePrice, r'ReservedInstancesOffering', 'usagePrice');
    BuiltValueNullFieldError.checkNotNull(
        marketplace, r'ReservedInstancesOffering', 'marketplace');
  }

  @override
  ReservedInstancesOffering rebuild(
          void Function(ReservedInstancesOfferingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReservedInstancesOfferingBuilder toBuilder() =>
      new ReservedInstancesOfferingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReservedInstancesOffering &&
        availabilityZone == other.availabilityZone &&
        duration == other.duration &&
        fixedPrice == other.fixedPrice &&
        instanceType == other.instanceType &&
        productDescription == other.productDescription &&
        reservedInstancesOfferingId == other.reservedInstancesOfferingId &&
        usagePrice == other.usagePrice &&
        currencyCode == other.currencyCode &&
        instanceTenancy == other.instanceTenancy &&
        marketplace == other.marketplace &&
        offeringClass == other.offeringClass &&
        offeringType == other.offeringType &&
        pricingDetails == other.pricingDetails &&
        recurringCharges == other.recurringCharges &&
        scope == other.scope;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, availabilityZone.hashCode);
    _$hash = $jc(_$hash, duration.hashCode);
    _$hash = $jc(_$hash, fixedPrice.hashCode);
    _$hash = $jc(_$hash, instanceType.hashCode);
    _$hash = $jc(_$hash, productDescription.hashCode);
    _$hash = $jc(_$hash, reservedInstancesOfferingId.hashCode);
    _$hash = $jc(_$hash, usagePrice.hashCode);
    _$hash = $jc(_$hash, currencyCode.hashCode);
    _$hash = $jc(_$hash, instanceTenancy.hashCode);
    _$hash = $jc(_$hash, marketplace.hashCode);
    _$hash = $jc(_$hash, offeringClass.hashCode);
    _$hash = $jc(_$hash, offeringType.hashCode);
    _$hash = $jc(_$hash, pricingDetails.hashCode);
    _$hash = $jc(_$hash, recurringCharges.hashCode);
    _$hash = $jc(_$hash, scope.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ReservedInstancesOfferingBuilder
    implements
        Builder<ReservedInstancesOffering, ReservedInstancesOfferingBuilder> {
  _$ReservedInstancesOffering? _$v;

  String? _availabilityZone;
  String? get availabilityZone => _$this._availabilityZone;
  set availabilityZone(String? availabilityZone) =>
      _$this._availabilityZone = availabilityZone;

  _i2.Int64? _duration;
  _i2.Int64? get duration => _$this._duration;
  set duration(_i2.Int64? duration) => _$this._duration = duration;

  double? _fixedPrice;
  double? get fixedPrice => _$this._fixedPrice;
  set fixedPrice(double? fixedPrice) => _$this._fixedPrice = fixedPrice;

  _i3.InstanceType? _instanceType;
  _i3.InstanceType? get instanceType => _$this._instanceType;
  set instanceType(_i3.InstanceType? instanceType) =>
      _$this._instanceType = instanceType;

  _i4.RiProductDescription? _productDescription;
  _i4.RiProductDescription? get productDescription =>
      _$this._productDescription;
  set productDescription(_i4.RiProductDescription? productDescription) =>
      _$this._productDescription = productDescription;

  String? _reservedInstancesOfferingId;
  String? get reservedInstancesOfferingId =>
      _$this._reservedInstancesOfferingId;
  set reservedInstancesOfferingId(String? reservedInstancesOfferingId) =>
      _$this._reservedInstancesOfferingId = reservedInstancesOfferingId;

  double? _usagePrice;
  double? get usagePrice => _$this._usagePrice;
  set usagePrice(double? usagePrice) => _$this._usagePrice = usagePrice;

  _i5.CurrencyCodeValues? _currencyCode;
  _i5.CurrencyCodeValues? get currencyCode => _$this._currencyCode;
  set currencyCode(_i5.CurrencyCodeValues? currencyCode) =>
      _$this._currencyCode = currencyCode;

  _i6.Tenancy? _instanceTenancy;
  _i6.Tenancy? get instanceTenancy => _$this._instanceTenancy;
  set instanceTenancy(_i6.Tenancy? instanceTenancy) =>
      _$this._instanceTenancy = instanceTenancy;

  bool? _marketplace;
  bool? get marketplace => _$this._marketplace;
  set marketplace(bool? marketplace) => _$this._marketplace = marketplace;

  _i7.OfferingClassType? _offeringClass;
  _i7.OfferingClassType? get offeringClass => _$this._offeringClass;
  set offeringClass(_i7.OfferingClassType? offeringClass) =>
      _$this._offeringClass = offeringClass;

  _i8.OfferingTypeValues? _offeringType;
  _i8.OfferingTypeValues? get offeringType => _$this._offeringType;
  set offeringType(_i8.OfferingTypeValues? offeringType) =>
      _$this._offeringType = offeringType;

  _i12.ListBuilder<_i9.PricingDetail>? _pricingDetails;
  _i12.ListBuilder<_i9.PricingDetail> get pricingDetails =>
      _$this._pricingDetails ??= new _i12.ListBuilder<_i9.PricingDetail>();
  set pricingDetails(_i12.ListBuilder<_i9.PricingDetail>? pricingDetails) =>
      _$this._pricingDetails = pricingDetails;

  _i12.ListBuilder<_i10.RecurringCharge>? _recurringCharges;
  _i12.ListBuilder<_i10.RecurringCharge> get recurringCharges =>
      _$this._recurringCharges ??= new _i12.ListBuilder<_i10.RecurringCharge>();
  set recurringCharges(
          _i12.ListBuilder<_i10.RecurringCharge>? recurringCharges) =>
      _$this._recurringCharges = recurringCharges;

  _i11.Scope? _scope;
  _i11.Scope? get scope => _$this._scope;
  set scope(_i11.Scope? scope) => _$this._scope = scope;

  ReservedInstancesOfferingBuilder() {
    ReservedInstancesOffering._init(this);
  }

  ReservedInstancesOfferingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _availabilityZone = $v.availabilityZone;
      _duration = $v.duration;
      _fixedPrice = $v.fixedPrice;
      _instanceType = $v.instanceType;
      _productDescription = $v.productDescription;
      _reservedInstancesOfferingId = $v.reservedInstancesOfferingId;
      _usagePrice = $v.usagePrice;
      _currencyCode = $v.currencyCode;
      _instanceTenancy = $v.instanceTenancy;
      _marketplace = $v.marketplace;
      _offeringClass = $v.offeringClass;
      _offeringType = $v.offeringType;
      _pricingDetails = $v.pricingDetails?.toBuilder();
      _recurringCharges = $v.recurringCharges?.toBuilder();
      _scope = $v.scope;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReservedInstancesOffering other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReservedInstancesOffering;
  }

  @override
  void update(void Function(ReservedInstancesOfferingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReservedInstancesOffering build() => _build();

  _$ReservedInstancesOffering _build() {
    _$ReservedInstancesOffering _$result;
    try {
      _$result = _$v ??
          new _$ReservedInstancesOffering._(
              availabilityZone: availabilityZone,
              duration: BuiltValueNullFieldError.checkNotNull(
                  duration, r'ReservedInstancesOffering', 'duration'),
              fixedPrice: BuiltValueNullFieldError.checkNotNull(
                  fixedPrice, r'ReservedInstancesOffering', 'fixedPrice'),
              instanceType: instanceType,
              productDescription: productDescription,
              reservedInstancesOfferingId: reservedInstancesOfferingId,
              usagePrice: BuiltValueNullFieldError.checkNotNull(
                  usagePrice, r'ReservedInstancesOffering', 'usagePrice'),
              currencyCode: currencyCode,
              instanceTenancy: instanceTenancy,
              marketplace: BuiltValueNullFieldError.checkNotNull(
                  marketplace, r'ReservedInstancesOffering', 'marketplace'),
              offeringClass: offeringClass,
              offeringType: offeringType,
              pricingDetails: _pricingDetails?.build(),
              recurringCharges: _recurringCharges?.build(),
              scope: scope);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pricingDetails';
        _pricingDetails?.build();
        _$failedField = 'recurringCharges';
        _recurringCharges?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ReservedInstancesOffering', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
