// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.spot_price; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/ri_product_description.dart'
    as _i3;

part 'spot_price.g.dart';

/// The maximum price per unit hour that you are willing to pay for a Spot Instance. We do not recommend using this parameter because it can lead to increased interruptions. If you do not specify this parameter, you will pay the current Spot price.
///
/// If you specify a maximum price, your instances will be interrupted more frequently than if you do not specify this parameter.
abstract class SpotPrice
    with _i1.AWSEquatable<SpotPrice>
    implements Built<SpotPrice, SpotPriceBuilder> {
  /// The maximum price per unit hour that you are willing to pay for a Spot Instance. We do not recommend using this parameter because it can lead to increased interruptions. If you do not specify this parameter, you will pay the current Spot price.
  ///
  /// If you specify a maximum price, your instances will be interrupted more frequently than if you do not specify this parameter.
  factory SpotPrice({
    String? availabilityZone,
    _i2.InstanceType? instanceType,
    _i3.RiProductDescription? productDescription,
    String? spotPrice,
    DateTime? timestamp,
  }) {
    return _$SpotPrice._(
      availabilityZone: availabilityZone,
      instanceType: instanceType,
      productDescription: productDescription,
      spotPrice: spotPrice,
      timestamp: timestamp,
    );
  }

  /// The maximum price per unit hour that you are willing to pay for a Spot Instance. We do not recommend using this parameter because it can lead to increased interruptions. If you do not specify this parameter, you will pay the current Spot price.
  ///
  /// If you specify a maximum price, your instances will be interrupted more frequently than if you do not specify this parameter.
  factory SpotPrice.build([void Function(SpotPriceBuilder) updates]) =
      _$SpotPrice;

  const SpotPrice._();

  static const List<_i4.SmithySerializer> serializers = [
    SpotPriceEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SpotPriceBuilder b) {}

  /// The Availability Zone.
  String? get availabilityZone;

  /// The instance type.
  _i2.InstanceType? get instanceType;

  /// A general description of the AMI.
  _i3.RiProductDescription? get productDescription;

  /// The maximum price per unit hour that you are willing to pay for a Spot Instance. We do not recommend using this parameter because it can lead to increased interruptions. If you do not specify this parameter, you will pay the current Spot price.
  ///
  /// If you specify a maximum price, your instances will be interrupted more frequently than if you do not specify this parameter.
  String? get spotPrice;

  /// The date and time the request was created, in UTC format (for example, _YYYY_-_MM_-_DD_T_HH_:_MM_:_SS_Z).
  DateTime? get timestamp;
  @override
  List<Object?> get props => [
        availabilityZone,
        instanceType,
        productDescription,
        spotPrice,
        timestamp,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SpotPrice');
    helper.add(
      'availabilityZone',
      availabilityZone,
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
      'spotPrice',
      spotPrice,
    );
    helper.add(
      'timestamp',
      timestamp,
    );
    return helper.toString();
  }
}

class SpotPriceEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<SpotPrice> {
  const SpotPriceEc2QuerySerializer() : super('SpotPrice');

  @override
  Iterable<Type> get types => const [
        SpotPrice,
        _$SpotPrice,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SpotPrice deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SpotPriceBuilder();
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
        case 'instanceType':
          if (value != null) {
            result.instanceType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.InstanceType),
            ) as _i2.InstanceType);
          }
          break;
        case 'productDescription':
          if (value != null) {
            result.productDescription = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.RiProductDescription),
            ) as _i3.RiProductDescription);
          }
          break;
        case 'spotPrice':
          if (value != null) {
            result.spotPrice = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'timestamp':
          if (value != null) {
            result.timestamp = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
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
    final payload = (object as SpotPrice);
    final result = <Object?>[
      const _i4.XmlElementName(
        'SpotPriceResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.availabilityZone != null) {
      result
        ..add(const _i4.XmlElementName('AvailabilityZone'))
        ..add(serializers.serialize(
          payload.availabilityZone!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.instanceType != null) {
      result
        ..add(const _i4.XmlElementName('InstanceType'))
        ..add(serializers.serialize(
          payload.instanceType!,
          specifiedType: const FullType.nullable(_i2.InstanceType),
        ));
    }
    if (payload.productDescription != null) {
      result
        ..add(const _i4.XmlElementName('ProductDescription'))
        ..add(serializers.serialize(
          payload.productDescription!,
          specifiedType: const FullType.nullable(_i3.RiProductDescription),
        ));
    }
    if (payload.spotPrice != null) {
      result
        ..add(const _i4.XmlElementName('SpotPrice'))
        ..add(serializers.serialize(
          payload.spotPrice!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.timestamp != null) {
      result
        ..add(const _i4.XmlElementName('Timestamp'))
        ..add(serializers.serialize(
          payload.timestamp!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    return result;
  }
}
