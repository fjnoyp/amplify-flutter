// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.launch_template_instance_market_options_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_spot_market_options_request.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/market_type.dart' as _i2;

part 'launch_template_instance_market_options_request.g.dart';

/// The market (purchasing) option for the instances.
abstract class LaunchTemplateInstanceMarketOptionsRequest
    with
        _i1.AWSEquatable<LaunchTemplateInstanceMarketOptionsRequest>
    implements
        Built<LaunchTemplateInstanceMarketOptionsRequest,
            LaunchTemplateInstanceMarketOptionsRequestBuilder> {
  /// The market (purchasing) option for the instances.
  factory LaunchTemplateInstanceMarketOptionsRequest({
    _i2.MarketType? marketType,
    _i3.LaunchTemplateSpotMarketOptionsRequest? spotOptions,
  }) {
    return _$LaunchTemplateInstanceMarketOptionsRequest._(
      marketType: marketType,
      spotOptions: spotOptions,
    );
  }

  /// The market (purchasing) option for the instances.
  factory LaunchTemplateInstanceMarketOptionsRequest.build(
      [void Function(LaunchTemplateInstanceMarketOptionsRequestBuilder)
          updates]) = _$LaunchTemplateInstanceMarketOptionsRequest;

  const LaunchTemplateInstanceMarketOptionsRequest._();

  static const List<_i4.SmithySerializer> serializers = [
    LaunchTemplateInstanceMarketOptionsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LaunchTemplateInstanceMarketOptionsRequestBuilder b) {}

  /// The market type.
  _i2.MarketType? get marketType;

  /// The options for Spot Instances.
  _i3.LaunchTemplateSpotMarketOptionsRequest? get spotOptions;
  @override
  List<Object?> get props => [
        marketType,
        spotOptions,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'LaunchTemplateInstanceMarketOptionsRequest');
    helper.add(
      'marketType',
      marketType,
    );
    helper.add(
      'spotOptions',
      spotOptions,
    );
    return helper.toString();
  }
}

class LaunchTemplateInstanceMarketOptionsRequestEc2QuerySerializer extends _i4
    .StructuredSmithySerializer<LaunchTemplateInstanceMarketOptionsRequest> {
  const LaunchTemplateInstanceMarketOptionsRequestEc2QuerySerializer()
      : super('LaunchTemplateInstanceMarketOptionsRequest');

  @override
  Iterable<Type> get types => const [
        LaunchTemplateInstanceMarketOptionsRequest,
        _$LaunchTemplateInstanceMarketOptionsRequest,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplateInstanceMarketOptionsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchTemplateInstanceMarketOptionsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'MarketType':
          if (value != null) {
            result.marketType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.MarketType),
            ) as _i2.MarketType);
          }
          break;
        case 'SpotOptions':
          if (value != null) {
            result.spotOptions.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i3.LaunchTemplateSpotMarketOptionsRequest),
            ) as _i3.LaunchTemplateSpotMarketOptionsRequest));
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
    final payload = (object as LaunchTemplateInstanceMarketOptionsRequest);
    final result = <Object?>[
      const _i4.XmlElementName(
        'LaunchTemplateInstanceMarketOptionsRequestResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.marketType != null) {
      result
        ..add(const _i4.XmlElementName('MarketType'))
        ..add(serializers.serialize(
          payload.marketType!,
          specifiedType: const FullType.nullable(_i2.MarketType),
        ));
    }
    if (payload.spotOptions != null) {
      result
        ..add(const _i4.XmlElementName('SpotOptions'))
        ..add(serializers.serialize(
          payload.spotOptions!,
          specifiedType:
              const FullType(_i3.LaunchTemplateSpotMarketOptionsRequest),
        ));
    }
    return result;
  }
}
