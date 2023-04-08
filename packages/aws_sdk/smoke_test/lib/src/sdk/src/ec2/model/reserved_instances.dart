// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.reserved_instances; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i13;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i14;
import 'package:smoke_test/src/sdk/src/ec2/model/currency_code_values.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/offering_class_type.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/ec2/model/offering_type_values.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/ec2/model/recurring_charge.dart' as _i10;
import 'package:smoke_test/src/sdk/src/ec2/model/reserved_instance_state.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/ri_product_description.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/scope.dart' as _i11;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i12;
import 'package:smoke_test/src/sdk/src/ec2/model/tenancy.dart' as _i7;

part 'reserved_instances.g.dart';

/// Describes a Reserved Instance.
abstract class ReservedInstances
    with _i1.AWSEquatable<ReservedInstances>
    implements Built<ReservedInstances, ReservedInstancesBuilder> {
  /// Describes a Reserved Instance.
  factory ReservedInstances({
    String? availabilityZone,
    _i2.Int64? duration,
    DateTime? end,
    double? fixedPrice,
    int? instanceCount,
    _i3.InstanceType? instanceType,
    _i4.RiProductDescription? productDescription,
    String? reservedInstancesId,
    DateTime? start,
    _i5.ReservedInstanceState? state,
    double? usagePrice,
    _i6.CurrencyCodeValues? currencyCode,
    _i7.Tenancy? instanceTenancy,
    _i8.OfferingClassType? offeringClass,
    _i9.OfferingTypeValues? offeringType,
    List<_i10.RecurringCharge>? recurringCharges,
    _i11.Scope? scope,
    List<_i12.Tag>? tags,
  }) {
    duration ??= _i2.Int64.ZERO;
    fixedPrice ??= 0;
    instanceCount ??= 0;
    usagePrice ??= 0;
    return _$ReservedInstances._(
      availabilityZone: availabilityZone,
      duration: duration,
      end: end,
      fixedPrice: fixedPrice,
      instanceCount: instanceCount,
      instanceType: instanceType,
      productDescription: productDescription,
      reservedInstancesId: reservedInstancesId,
      start: start,
      state: state,
      usagePrice: usagePrice,
      currencyCode: currencyCode,
      instanceTenancy: instanceTenancy,
      offeringClass: offeringClass,
      offeringType: offeringType,
      recurringCharges:
          recurringCharges == null ? null : _i13.BuiltList(recurringCharges),
      scope: scope,
      tags: tags == null ? null : _i13.BuiltList(tags),
    );
  }

  /// Describes a Reserved Instance.
  factory ReservedInstances.build(
      [void Function(ReservedInstancesBuilder) updates]) = _$ReservedInstances;

  const ReservedInstances._();

  static const List<_i14.SmithySerializer> serializers = [
    ReservedInstancesEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ReservedInstancesBuilder b) {
    b.duration = _i2.Int64.ZERO;
    b.fixedPrice = 0;
    b.instanceCount = 0;
    b.usagePrice = 0;
  }

  /// The Availability Zone in which the Reserved Instance can be used.
  String? get availabilityZone;

  /// The duration of the Reserved Instance, in seconds.
  _i2.Int64 get duration;

  /// The time when the Reserved Instance expires.
  DateTime? get end;

  /// The purchase price of the Reserved Instance.
  double get fixedPrice;

  /// The number of reservations purchased.
  int get instanceCount;

  /// The instance type on which the Reserved Instance can be used.
  _i3.InstanceType? get instanceType;

  /// The Reserved Instance product platform description.
  _i4.RiProductDescription? get productDescription;

  /// The ID of the Reserved Instance.
  String? get reservedInstancesId;

  /// The date and time the Reserved Instance started.
  DateTime? get start;

  /// The state of the Reserved Instance purchase.
  _i5.ReservedInstanceState? get state;

  /// The usage price of the Reserved Instance, per hour.
  double get usagePrice;

  /// The currency of the Reserved Instance. It's specified using ISO 4217 standard currency codes. At this time, the only supported currency is `USD`.
  _i6.CurrencyCodeValues? get currencyCode;

  /// The tenancy of the instance.
  _i7.Tenancy? get instanceTenancy;

  /// The offering class of the Reserved Instance.
  _i8.OfferingClassType? get offeringClass;

  /// The Reserved Instance offering type.
  _i9.OfferingTypeValues? get offeringType;

  /// The recurring charge tag assigned to the resource.
  _i13.BuiltList<_i10.RecurringCharge>? get recurringCharges;

  /// The scope of the Reserved Instance.
  _i11.Scope? get scope;

  /// Any tags assigned to the resource.
  _i13.BuiltList<_i12.Tag>? get tags;
  @override
  List<Object?> get props => [
        availabilityZone,
        duration,
        end,
        fixedPrice,
        instanceCount,
        instanceType,
        productDescription,
        reservedInstancesId,
        start,
        state,
        usagePrice,
        currencyCode,
        instanceTenancy,
        offeringClass,
        offeringType,
        recurringCharges,
        scope,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ReservedInstances');
    helper.add(
      'availabilityZone',
      availabilityZone,
    );
    helper.add(
      'duration',
      duration,
    );
    helper.add(
      'end',
      end,
    );
    helper.add(
      'fixedPrice',
      fixedPrice,
    );
    helper.add(
      'instanceCount',
      instanceCount,
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
      'reservedInstancesId',
      reservedInstancesId,
    );
    helper.add(
      'start',
      start,
    );
    helper.add(
      'state',
      state,
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
      'offeringClass',
      offeringClass,
    );
    helper.add(
      'offeringType',
      offeringType,
    );
    helper.add(
      'recurringCharges',
      recurringCharges,
    );
    helper.add(
      'scope',
      scope,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class ReservedInstancesEc2QuerySerializer
    extends _i14.StructuredSmithySerializer<ReservedInstances> {
  const ReservedInstancesEc2QuerySerializer() : super('ReservedInstances');

  @override
  Iterable<Type> get types => const [
        ReservedInstances,
        _$ReservedInstances,
      ];
  @override
  Iterable<_i14.ShapeId> get supportedProtocols => const [
        _i14.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ReservedInstances deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReservedInstancesBuilder();
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
        case 'end':
          if (value != null) {
            result.end = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'fixedPrice':
          result.fixedPrice = (serializers.deserialize(
            value!,
            specifiedType: const FullType(double),
          ) as double);
          break;
        case 'instanceCount':
          result.instanceCount = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
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
        case 'reservedInstancesId':
          if (value != null) {
            result.reservedInstancesId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'start':
          if (value != null) {
            result.start = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'state':
          if (value != null) {
            result.state = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.ReservedInstanceState),
            ) as _i5.ReservedInstanceState);
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
              specifiedType: const FullType(_i6.CurrencyCodeValues),
            ) as _i6.CurrencyCodeValues);
          }
          break;
        case 'instanceTenancy':
          if (value != null) {
            result.instanceTenancy = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i7.Tenancy),
            ) as _i7.Tenancy);
          }
          break;
        case 'offeringClass':
          if (value != null) {
            result.offeringClass = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i8.OfferingClassType),
            ) as _i8.OfferingClassType);
          }
          break;
        case 'offeringType':
          if (value != null) {
            result.offeringType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i9.OfferingTypeValues),
            ) as _i9.OfferingTypeValues);
          }
          break;
        case 'recurringCharges':
          if (value != null) {
            result.recurringCharges.replace((const _i14.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i14.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i13.BuiltList,
                [FullType(_i10.RecurringCharge)],
              ),
            ) as _i13.BuiltList<_i10.RecurringCharge>));
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
        case 'tagSet':
          if (value != null) {
            result.tags.replace((const _i14.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i14.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i13.BuiltList,
                [FullType(_i12.Tag)],
              ),
            ) as _i13.BuiltList<_i12.Tag>));
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
    final payload = (object as ReservedInstances);
    final result = <Object?>[
      const _i14.XmlElementName(
        'ReservedInstancesResponse',
        _i14.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.availabilityZone != null) {
      result
        ..add(const _i14.XmlElementName('AvailabilityZone'))
        ..add(serializers.serialize(
          payload.availabilityZone!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i14.XmlElementName('Duration'))
      ..add(serializers.serialize(
        payload.duration,
        specifiedType: const FullType(_i2.Int64),
      ));
    if (payload.end != null) {
      result
        ..add(const _i14.XmlElementName('End'))
        ..add(serializers.serialize(
          payload.end!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    result
      ..add(const _i14.XmlElementName('FixedPrice'))
      ..add(serializers.serialize(
        payload.fixedPrice,
        specifiedType: const FullType(double),
      ));
    result
      ..add(const _i14.XmlElementName('InstanceCount'))
      ..add(serializers.serialize(
        payload.instanceCount,
        specifiedType: const FullType(int),
      ));
    if (payload.instanceType != null) {
      result
        ..add(const _i14.XmlElementName('InstanceType'))
        ..add(serializers.serialize(
          payload.instanceType!,
          specifiedType: const FullType.nullable(_i3.InstanceType),
        ));
    }
    if (payload.productDescription != null) {
      result
        ..add(const _i14.XmlElementName('ProductDescription'))
        ..add(serializers.serialize(
          payload.productDescription!,
          specifiedType: const FullType.nullable(_i4.RiProductDescription),
        ));
    }
    if (payload.reservedInstancesId != null) {
      result
        ..add(const _i14.XmlElementName('ReservedInstancesId'))
        ..add(serializers.serialize(
          payload.reservedInstancesId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.start != null) {
      result
        ..add(const _i14.XmlElementName('Start'))
        ..add(serializers.serialize(
          payload.start!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.state != null) {
      result
        ..add(const _i14.XmlElementName('State'))
        ..add(serializers.serialize(
          payload.state!,
          specifiedType: const FullType.nullable(_i5.ReservedInstanceState),
        ));
    }
    result
      ..add(const _i14.XmlElementName('UsagePrice'))
      ..add(serializers.serialize(
        payload.usagePrice,
        specifiedType: const FullType(double),
      ));
    if (payload.currencyCode != null) {
      result
        ..add(const _i14.XmlElementName('CurrencyCode'))
        ..add(serializers.serialize(
          payload.currencyCode!,
          specifiedType: const FullType.nullable(_i6.CurrencyCodeValues),
        ));
    }
    if (payload.instanceTenancy != null) {
      result
        ..add(const _i14.XmlElementName('InstanceTenancy'))
        ..add(serializers.serialize(
          payload.instanceTenancy!,
          specifiedType: const FullType.nullable(_i7.Tenancy),
        ));
    }
    if (payload.offeringClass != null) {
      result
        ..add(const _i14.XmlElementName('OfferingClass'))
        ..add(serializers.serialize(
          payload.offeringClass!,
          specifiedType: const FullType.nullable(_i8.OfferingClassType),
        ));
    }
    if (payload.offeringType != null) {
      result
        ..add(const _i14.XmlElementName('OfferingType'))
        ..add(serializers.serialize(
          payload.offeringType!,
          specifiedType: const FullType.nullable(_i9.OfferingTypeValues),
        ));
    }
    if (payload.recurringCharges != null) {
      result
        ..add(const _i14.XmlElementName('RecurringCharges'))
        ..add(const _i14.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i14.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.recurringCharges!,
          specifiedType: const FullType.nullable(
            _i13.BuiltList,
            [FullType(_i10.RecurringCharge)],
          ),
        ));
    }
    if (payload.scope != null) {
      result
        ..add(const _i14.XmlElementName('Scope'))
        ..add(serializers.serialize(
          payload.scope!,
          specifiedType: const FullType.nullable(_i11.Scope),
        ));
    }
    if (payload.tags != null) {
      result
        ..add(const _i14.XmlElementName('TagSet'))
        ..add(const _i14.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i14.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tags!,
          specifiedType: const FullType.nullable(
            _i13.BuiltList,
            [FullType(_i12.Tag)],
          ),
        ));
    }
    return result;
  }
}
