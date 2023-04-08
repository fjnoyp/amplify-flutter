// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.launch_template_spot_market_options_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_interruption_behavior.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/spot_instance_type.dart'
    as _i2;

part 'launch_template_spot_market_options_request.g.dart';

/// The options for Spot Instances.
abstract class LaunchTemplateSpotMarketOptionsRequest
    with
        _i1.AWSEquatable<LaunchTemplateSpotMarketOptionsRequest>
    implements
        Built<LaunchTemplateSpotMarketOptionsRequest,
            LaunchTemplateSpotMarketOptionsRequestBuilder> {
  /// The options for Spot Instances.
  factory LaunchTemplateSpotMarketOptionsRequest({
    String? maxPrice,
    _i2.SpotInstanceType? spotInstanceType,
    int? blockDurationMinutes,
    DateTime? validUntil,
    _i3.InstanceInterruptionBehavior? instanceInterruptionBehavior,
  }) {
    blockDurationMinutes ??= 0;
    return _$LaunchTemplateSpotMarketOptionsRequest._(
      maxPrice: maxPrice,
      spotInstanceType: spotInstanceType,
      blockDurationMinutes: blockDurationMinutes,
      validUntil: validUntil,
      instanceInterruptionBehavior: instanceInterruptionBehavior,
    );
  }

  /// The options for Spot Instances.
  factory LaunchTemplateSpotMarketOptionsRequest.build(
      [void Function(LaunchTemplateSpotMarketOptionsRequestBuilder)
          updates]) = _$LaunchTemplateSpotMarketOptionsRequest;

  const LaunchTemplateSpotMarketOptionsRequest._();

  static const List<_i4.SmithySerializer> serializers = [
    LaunchTemplateSpotMarketOptionsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LaunchTemplateSpotMarketOptionsRequestBuilder b) {
    b.blockDurationMinutes = 0;
  }

  /// The maximum hourly price you're willing to pay for the Spot Instances. We do not recommend using this parameter because it can lead to increased interruptions. If you do not specify this parameter, you will pay the current Spot price.
  ///
  /// If you specify a maximum price, your Spot Instances will be interrupted more frequently than if you do not specify this parameter.
  String? get maxPrice;

  /// The Spot Instance request type.
  _i2.SpotInstanceType? get spotInstanceType;

  /// Deprecated.
  int get blockDurationMinutes;

  /// The end date of the request, in UTC format (_YYYY-MM-DD_T_HH:MM:SS_Z). Supported only for persistent requests.
  ///
  /// *   For a persistent request, the request remains active until the `ValidUntil` date and time is reached. Otherwise, the request remains active until you cancel it.
  ///
  /// *   For a one-time request, `ValidUntil` is not supported. The request remains active until all instances launch or you cancel the request.
  ///
  ///
  /// Default: 7 days from the current date
  DateTime? get validUntil;

  /// The behavior when a Spot Instance is interrupted. The default is `terminate`.
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
        newBuiltValueToStringHelper('LaunchTemplateSpotMarketOptionsRequest');
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

class LaunchTemplateSpotMarketOptionsRequestEc2QuerySerializer extends _i4
    .StructuredSmithySerializer<LaunchTemplateSpotMarketOptionsRequest> {
  const LaunchTemplateSpotMarketOptionsRequestEc2QuerySerializer()
      : super('LaunchTemplateSpotMarketOptionsRequest');

  @override
  Iterable<Type> get types => const [
        LaunchTemplateSpotMarketOptionsRequest,
        _$LaunchTemplateSpotMarketOptionsRequest,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplateSpotMarketOptionsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchTemplateSpotMarketOptionsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'MaxPrice':
          if (value != null) {
            result.maxPrice = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'SpotInstanceType':
          if (value != null) {
            result.spotInstanceType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.SpotInstanceType),
            ) as _i2.SpotInstanceType);
          }
          break;
        case 'BlockDurationMinutes':
          result.blockDurationMinutes = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'ValidUntil':
          if (value != null) {
            result.validUntil = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'InstanceInterruptionBehavior':
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
    final payload = (object as LaunchTemplateSpotMarketOptionsRequest);
    final result = <Object?>[
      const _i4.XmlElementName(
        'LaunchTemplateSpotMarketOptionsRequestResponse',
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
