// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.reserved_instances_offering; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i12;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i13;
import 'package:smoke_test/src/sdk/src/ec2/model/currency_code_values.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/offering_class_type.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/ec2/model/offering_type_values.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/ec2/model/pricing_detail.dart' as _i9;
import 'package:smoke_test/src/sdk/src/ec2/model/recurring_charge.dart' as _i10;
import 'package:smoke_test/src/sdk/src/ec2/model/ri_product_description.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/scope.dart' as _i11;
import 'package:smoke_test/src/sdk/src/ec2/model/tenancy.dart' as _i6;

part 'reserved_instances_offering.g.dart';

/// Describes a Reserved Instance offering.
abstract class ReservedInstancesOffering
    with _i1.AWSEquatable<ReservedInstancesOffering>
    implements
        Built<ReservedInstancesOffering, ReservedInstancesOfferingBuilder> {
  /// Describes a Reserved Instance offering.
  factory ReservedInstancesOffering({
    String? availabilityZone,
    _i2.Int64? duration,
    double? fixedPrice,
    _i3.InstanceType? instanceType,
    _i4.RiProductDescription? productDescription,
    String? reservedInstancesOfferingId,
    double? usagePrice,
    _i5.CurrencyCodeValues? currencyCode,
    _i6.Tenancy? instanceTenancy,
    bool? marketplace,
    _i7.OfferingClassType? offeringClass,
    _i8.OfferingTypeValues? offeringType,
    List<_i9.PricingDetail>? pricingDetails,
    List<_i10.RecurringCharge>? recurringCharges,
    _i11.Scope? scope,
  }) {
    duration ??= _i2.Int64.ZERO;
    fixedPrice ??= 0;
    usagePrice ??= 0;
    marketplace ??= false;
    return _$ReservedInstancesOffering._(
      availabilityZone: availabilityZone,
      duration: duration,
      fixedPrice: fixedPrice,
      instanceType: instanceType,
      productDescription: productDescription,
      reservedInstancesOfferingId: reservedInstancesOfferingId,
      usagePrice: usagePrice,
      currencyCode: currencyCode,
      instanceTenancy: instanceTenancy,
      marketplace: marketplace,
      offeringClass: offeringClass,
      offeringType: offeringType,
      pricingDetails:
          pricingDetails == null ? null : _i12.BuiltList(pricingDetails),
      recurringCharges:
          recurringCharges == null ? null : _i12.BuiltList(recurringCharges),
      scope: scope,
    );
  }

  /// Describes a Reserved Instance offering.
  factory ReservedInstancesOffering.build(
          [void Function(ReservedInstancesOfferingBuilder) updates]) =
      _$ReservedInstancesOffering;

  const ReservedInstancesOffering._();

  static const List<_i13.SmithySerializer> serializers = [
    ReservedInstancesOfferingEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ReservedInstancesOfferingBuilder b) {
    b.duration = _i2.Int64.ZERO;
    b.fixedPrice = 0;
    b.usagePrice = 0;
    b.marketplace = false;
  }

  /// The Availability Zone in which the Reserved Instance can be used.
  String? get availabilityZone;

  /// The duration of the Reserved Instance, in seconds.
  _i2.Int64 get duration;

  /// The purchase price of the Reserved Instance.
  double get fixedPrice;

  /// The instance type on which the Reserved Instance can be used.
  _i3.InstanceType? get instanceType;

  /// The Reserved Instance product platform description.
  _i4.RiProductDescription? get productDescription;

  /// The ID of the Reserved Instance offering. This is the offering ID used in GetReservedInstancesExchangeQuote to confirm that an exchange can be made.
  String? get reservedInstancesOfferingId;

  /// The usage price of the Reserved Instance, per hour.
  double get usagePrice;

  /// The currency of the Reserved Instance offering you are purchasing. It's specified using ISO 4217 standard currency codes. At this time, the only supported currency is `USD`.
  _i5.CurrencyCodeValues? get currencyCode;

  /// The tenancy of the instance.
  _i6.Tenancy? get instanceTenancy;

  /// Indicates whether the offering is available through the Reserved Instance Marketplace (resale) or Amazon Web Services. If it's a Reserved Instance Marketplace offering, this is `true`.
  bool get marketplace;

  /// If `convertible` it can be exchanged for Reserved Instances of the same or higher monetary value, with different configurations. If `standard`, it is not possible to perform an exchange.
  _i7.OfferingClassType? get offeringClass;

  /// The Reserved Instance offering type.
  _i8.OfferingTypeValues? get offeringType;

  /// The pricing details of the Reserved Instance offering.
  _i12.BuiltList<_i9.PricingDetail>? get pricingDetails;

  /// The recurring charge tag assigned to the resource.
  _i12.BuiltList<_i10.RecurringCharge>? get recurringCharges;

  /// Whether the Reserved Instance is applied to instances in a Region or an Availability Zone.
  _i11.Scope? get scope;
  @override
  List<Object?> get props => [
        availabilityZone,
        duration,
        fixedPrice,
        instanceType,
        productDescription,
        reservedInstancesOfferingId,
        usagePrice,
        currencyCode,
        instanceTenancy,
        marketplace,
        offeringClass,
        offeringType,
        pricingDetails,
        recurringCharges,
        scope,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ReservedInstancesOffering');
    helper.add(
      'availabilityZone',
      availabilityZone,
    );
    helper.add(
      'duration',
      duration,
    );
    helper.add(
      'fixedPrice',
      fixedPrice,
    );
    helper.add(
      'instanceType',
      instanceType,
    );
    helper.add(
      'productDescription',
      productDescription,
    );
    helper.add(
      'reservedInstancesOfferingId',
      reservedInstancesOfferingId,
    );
    helper.add(
      'usagePrice',
      usagePrice,
    );
    helper.add(
      'currencyCode',
      currencyCode,
    );
    helper.add(
      'instanceTenancy',
      instanceTenancy,
    );
    helper.add(
      'marketplace',
      marketplace,
    );
    helper.add(
      'offeringClass',
      offeringClass,
    );
    helper.add(
      'offeringType',
      offeringType,
    );
    helper.add(
      'pricingDetails',
      pricingDetails,
    );
    helper.add(
      'recurringCharges',
      recurringCharges,
    );
    helper.add(
      'scope',
      scope,
    );
    return helper.toString();
  }
}

class ReservedInstancesOfferingEc2QuerySerializer
    extends _i13.StructuredSmithySerializer<ReservedInstancesOffering> {
  const ReservedInstancesOfferingEc2QuerySerializer()
      : super('ReservedInstancesOffering');

  @override
  Iterable<Type> get types => const [
        ReservedInstancesOffering,
        _$ReservedInstancesOffering,
      ];
  @override
  Iterable<_i13.ShapeId> get supportedProtocols => const [
        _i13.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ReservedInstancesOffering deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReservedInstancesOfferingBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'availabilityZone':
          if (value != null) {
            result.availabilityZone = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'duration':
          result.duration = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
          break;
        case 'fixedPrice':
          result.fixedPrice = (serializers.deserialize(
            value!,
            specifiedType: const FullType(double),
          ) as double);
          break;
        case 'instanceType':
          if (value != null) {
            result.instanceType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.InstanceType),
            ) as _i3.InstanceType);
          }
          break;
        case 'productDescription':
          if (value != null) {
            result.productDescription = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.RiProductDescription),
            ) as _i4.RiProductDescription);
          }
          break;
        case 'reservedInstancesOfferingId':
          if (value != null) {
            result.reservedInstancesOfferingId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'usagePrice':
          result.usagePrice = (serializers.deserialize(
            value!,
            specifiedType: const FullType(double),
          ) as double);
          break;
        case 'currencyCode':
          if (value != null) {
            result.currencyCode = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.CurrencyCodeValues),
            ) as _i5.CurrencyCodeValues);
          }
          break;
        case 'instanceTenancy':
          if (value != null) {
            result.instanceTenancy = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.Tenancy),
            ) as _i6.Tenancy);
          }
          break;
        case 'marketplace':
          result.marketplace = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'offeringClass':
          if (value != null) {
            result.offeringClass = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i7.OfferingClassType),
            ) as _i7.OfferingClassType);
          }
          break;
        case 'offeringType':
          if (value != null) {
            result.offeringType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i8.OfferingTypeValues),
            ) as _i8.OfferingTypeValues);
          }
          break;
        case 'pricingDetailsSet':
          if (value != null) {
            result.pricingDetails.replace((const _i13.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i13.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i12.BuiltList,
                [FullType(_i9.PricingDetail)],
              ),
            ) as _i12.BuiltList<_i9.PricingDetail>));
          }
          break;
        case 'recurringCharges':
          if (value != null) {
            result.recurringCharges.replace((const _i13.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i13.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i12.BuiltList,
                [FullType(_i10.RecurringCharge)],
              ),
            ) as _i12.BuiltList<_i10.RecurringCharge>));
          }
          break;
        case 'scope':
          if (value != null) {
            result.scope = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i11.Scope),
            ) as _i11.Scope);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as ReservedInstancesOffering);
    final result = <Object?>[
      const _i13.XmlElementName(
        'ReservedInstancesOfferingResponse',
        _i13.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.availabilityZone != null) {
      result
        ..add(const _i13.XmlElementName('AvailabilityZone'))
        ..add(serializers.serialize(
          payload.availabilityZone!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i13.XmlElementName('Duration'))
      ..add(serializers.serialize(
        payload.duration,
        specifiedType: const FullType(_i2.Int64),
      ));
    result
      ..add(const _i13.XmlElementName('FixedPrice'))
      ..add(serializers.serialize(
        payload.fixedPrice,
        specifiedType: const FullType(double),
      ));
    if (payload.instanceType != null) {
      result
        ..add(const _i13.XmlElementName('InstanceType'))
        ..add(serializers.serialize(
          payload.instanceType!,
          specifiedType: const FullType.nullable(_i3.InstanceType),
        ));
    }
    if (payload.productDescription != null) {
      result
        ..add(const _i13.XmlElementName('ProductDescription'))
        ..add(serializers.serialize(
          payload.productDescription!,
          specifiedType: const FullType.nullable(_i4.RiProductDescription),
        ));
    }
    if (payload.reservedInstancesOfferingId != null) {
      result
        ..add(const _i13.XmlElementName('ReservedInstancesOfferingId'))
        ..add(serializers.serialize(
          payload.reservedInstancesOfferingId!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i13.XmlElementName('UsagePrice'))
      ..add(serializers.serialize(
        payload.usagePrice,
        specifiedType: const FullType(double),
      ));
    if (payload.currencyCode != null) {
      result
        ..add(const _i13.XmlElementName('CurrencyCode'))
        ..add(serializers.serialize(
          payload.currencyCode!,
          specifiedType: const FullType.nullable(_i5.CurrencyCodeValues),
        ));
    }
    if (payload.instanceTenancy != null) {
      result
        ..add(const _i13.XmlElementName('InstanceTenancy'))
        ..add(serializers.serialize(
          payload.instanceTenancy!,
          specifiedType: const FullType.nullable(_i6.Tenancy),
        ));
    }
    result
      ..add(const _i13.XmlElementName('Marketplace'))
      ..add(serializers.serialize(
        payload.marketplace,
        specifiedType: const FullType(bool),
      ));
    if (payload.offeringClass != null) {
      result
        ..add(const _i13.XmlElementName('OfferingClass'))
        ..add(serializers.serialize(
          payload.offeringClass!,
          specifiedType: const FullType.nullable(_i7.OfferingClassType),
        ));
    }
    if (payload.offeringType != null) {
      result
        ..add(const _i13.XmlElementName('OfferingType'))
        ..add(serializers.serialize(
          payload.offeringType!,
          specifiedType: const FullType.nullable(_i8.OfferingTypeValues),
        ));
    }
    if (payload.pricingDetails != null) {
      result
        ..add(const _i13.XmlElementName('PricingDetailsSet'))
        ..add(const _i13.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i13.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.pricingDetails!,
          specifiedType: const FullType.nullable(
            _i12.BuiltList,
            [FullType(_i9.PricingDetail)],
          ),
        ));
    }
    if (payload.recurringCharges != null) {
      result
        ..add(const _i13.XmlElementName('RecurringCharges'))
        ..add(const _i13.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i13.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.recurringCharges!,
          specifiedType: const FullType.nullable(
            _i12.BuiltList,
            [FullType(_i10.RecurringCharge)],
          ),
        ));
    }
    if (payload.scope != null) {
      result
        ..add(const _i13.XmlElementName('Scope'))
        ..add(serializers.serialize(
          payload.scope!,
          specifiedType: const FullType.nullable(_i11.Scope),
        ));
    }
    return result;
  }
}
