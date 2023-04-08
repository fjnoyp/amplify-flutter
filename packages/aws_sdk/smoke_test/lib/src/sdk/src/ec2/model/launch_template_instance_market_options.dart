// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.launch_template_instance_market_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_spot_market_options.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/market_type.dart' as _i2;

part 'launch_template_instance_market_options.g.dart';

/// The market (purchasing) option for the instances.
abstract class LaunchTemplateInstanceMarketOptions
    with
        _i1.AWSEquatable<LaunchTemplateInstanceMarketOptions>
    implements
        Built<LaunchTemplateInstanceMarketOptions,
            LaunchTemplateInstanceMarketOptionsBuilder> {
  /// The market (purchasing) option for the instances.
  factory LaunchTemplateInstanceMarketOptions({
    _i2.MarketType? marketType,
    _i3.LaunchTemplateSpotMarketOptions? spotOptions,
  }) {
    return _$LaunchTemplateInstanceMarketOptions._(
      marketType: marketType,
      spotOptions: spotOptions,
    );
  }

  /// The market (purchasing) option for the instances.
  factory LaunchTemplateInstanceMarketOptions.build(
          [void Function(LaunchTemplateInstanceMarketOptionsBuilder) updates]) =
      _$LaunchTemplateInstanceMarketOptions;

  const LaunchTemplateInstanceMarketOptions._();

  static const List<_i4.SmithySerializer> serializers = [
    LaunchTemplateInstanceMarketOptionsEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LaunchTemplateInstanceMarketOptionsBuilder b) {}

  /// The market type.
  _i2.MarketType? get marketType;

  /// The options for Spot Instances.
  _i3.LaunchTemplateSpotMarketOptions? get spotOptions;
  @override
  List<Object?> get props => [
        marketType,
        spotOptions,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('LaunchTemplateInstanceMarketOptions');
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

class LaunchTemplateInstanceMarketOptionsEc2QuerySerializer extends _i4
    .StructuredSmithySerializer<LaunchTemplateInstanceMarketOptions> {
  const LaunchTemplateInstanceMarketOptionsEc2QuerySerializer()
      : super('LaunchTemplateInstanceMarketOptions');

  @override
  Iterable<Type> get types => const [
        LaunchTemplateInstanceMarketOptions,
        _$LaunchTemplateInstanceMarketOptions,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplateInstanceMarketOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchTemplateInstanceMarketOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'marketType':
          if (value != null) {
            result.marketType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.MarketType),
            ) as _i2.MarketType);
          }
          break;
        case 'spotOptions':
          if (value != null) {
            result.spotOptions.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i3.LaunchTemplateSpotMarketOptions),
            ) as _i3.LaunchTemplateSpotMarketOptions));
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
    final payload = (object as LaunchTemplateInstanceMarketOptions);
    final result = <Object?>[
      const _i4.XmlElementName(
        'LaunchTemplateInstanceMarketOptionsResponse',
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
          specifiedType: const FullType(_i3.LaunchTemplateSpotMarketOptions),
        ));
    }
    return result;
  }
}
