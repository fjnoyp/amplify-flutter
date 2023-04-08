// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.launch_template_spot_market_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_interruption_behavior.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/spot_instance_type.dart'
    as _i2;

part 'launch_template_spot_market_options.g.dart';

/// The options for Spot Instances.
abstract class LaunchTemplateSpotMarketOptions
    with
        _i1.AWSEquatable<LaunchTemplateSpotMarketOptions>
    implements
        Built<LaunchTemplateSpotMarketOptions,
            LaunchTemplateSpotMarketOptionsBuilder> {
  /// The options for Spot Instances.
  factory LaunchTemplateSpotMarketOptions({
    String? maxPrice,
    _i2.SpotInstanceType? spotInstanceType,
    int? blockDurationMinutes,
    DateTime? validUntil,
    _i3.InstanceInterruptionBehavior? instanceInterruptionBehavior,
  }) {
    blockDurationMinutes ??= 0;
    return _$LaunchTemplateSpotMarketOptions._(
      maxPrice: maxPrice,
      spotInstanceType: spotInstanceType,
      blockDurationMinutes: blockDurationMinutes,
      validUntil: validUntil,
      instanceInterruptionBehavior: instanceInterruptionBehavior,
    );
  }

  /// The options for Spot Instances.
  factory LaunchTemplateSpotMarketOptions.build(
          [void Function(LaunchTemplateSpotMarketOptionsBuilder) updates]) =
      _$LaunchTemplateSpotMarketOptions;

  const LaunchTemplateSpotMarketOptions._();

  static const List<_i4.SmithySerializer> serializers = [
    LaunchTemplateSpotMarketOptionsEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LaunchTemplateSpotMarketOptionsBuilder b) {
    b.blockDurationMinutes = 0;
  }

  /// The maximum hourly price you're willing to pay for the Spot Instances. We do not recommend using this parameter because it can lead to increased interruptions. If you do not specify this parameter, you will pay the current Spot price.
  ///
  /// If you specify a maximum price, your Spot Instances will be interrupted more frequently than if you do not specify this parameter.
  String? get maxPrice;

  /// The Spot Instance request type.
  _i2.SpotInstanceType? get spotInstanceType;

  /// The required duration for the Spot Instances (also known as Spot blocks), in minutes. This value must be a multiple of 60 (60, 120, 180, 240, 300, or 360).
  int get blockDurationMinutes;

  /// The end date of the request. For a one-time request, the request remains active until all instances launch, the request is canceled, or this date is reached. If the request is persistent, it remains active until it is canceled or this date and time is reached.
  DateTime? get validUntil;

  /// The behavior when a Spot Instance is interrupted.
  _i3.InstanceInterruptionBehavior? get instanceInterruptionBehavior;
  @override
  List<Object?> get props => [
        maxPrice,
        spotInstanceType,
        blockDurationMinutes,
        validUntil,
        instanceInterruptionBehavior,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('LaunchTemplateSpotMarketOptions');
    helper.add(
      'maxPrice',
      maxPrice,
    );
    helper.add(
      'spotInstanceType',
      spotInstanceType,
    );
    helper.add(
      'blockDurationMinutes',
      blockDurationMinutes,
    );
    helper.add(
      'validUntil',
      validUntil,
    );
    helper.add(
      'instanceInterruptionBehavior',
      instanceInterruptionBehavior,
    );
    return helper.toString();
  }
}

class LaunchTemplateSpotMarketOptionsEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<LaunchTemplateSpotMarketOptions> {
  const LaunchTemplateSpotMarketOptionsEc2QuerySerializer()
      : super('LaunchTemplateSpotMarketOptions');

  @override
  Iterable<Type> get types => const [
        LaunchTemplateSpotMarketOptions,
        _$LaunchTemplateSpotMarketOptions,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplateSpotMarketOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchTemplateSpotMarketOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'maxPrice':
          if (value != null) {
            result.maxPrice = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'spotInstanceType':
          if (value != null) {
            result.spotInstanceType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.SpotInstanceType),
            ) as _i2.SpotInstanceType);
          }
          break;
        case 'blockDurationMinutes':
          result.blockDurationMinutes = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'validUntil':
          if (value != null) {
            result.validUntil = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'instanceInterruptionBehavior':
          if (value != null) {
            result.instanceInterruptionBehavior = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.InstanceInterruptionBehavior),
            ) as _i3.InstanceInterruptionBehavior);
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
    final payload = (object as LaunchTemplateSpotMarketOptions);
    final result = <Object?>[
      const _i4.XmlElementName(
        'LaunchTemplateSpotMarketOptionsResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.maxPrice != null) {
      result
        ..add(const _i4.XmlElementName('MaxPrice'))
        ..add(serializers.serialize(
          payload.maxPrice!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.spotInstanceType != null) {
      result
        ..add(const _i4.XmlElementName('SpotInstanceType'))
        ..add(serializers.serialize(
          payload.spotInstanceType!,
          specifiedType: const FullType.nullable(_i2.SpotInstanceType),
        ));
    }
    result
      ..add(const _i4.XmlElementName('BlockDurationMinutes'))
      ..add(serializers.serialize(
        payload.blockDurationMinutes,
        specifiedType: const FullType(int),
      ));
    if (payload.validUntil != null) {
      result
        ..add(const _i4.XmlElementName('ValidUntil'))
        ..add(serializers.serialize(
          payload.validUntil!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.instanceInterruptionBehavior != null) {
      result
        ..add(const _i4.XmlElementName('InstanceInterruptionBehavior'))
        ..add(serializers.serialize(
          payload.instanceInterruptionBehavior!,
          specifiedType:
              const FullType.nullable(_i3.InstanceInterruptionBehavior),
        ));
    }
    return result;
  }
}
