// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.instance_market_options_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/market_type.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/spot_market_options.dart'
    as _i3;

part 'instance_market_options_request.g.dart';

/// Describes the market (purchasing) option for the instances.
abstract class InstanceMarketOptionsRequest
    with
        _i1.AWSEquatable<InstanceMarketOptionsRequest>
    implements
        Built<InstanceMarketOptionsRequest,
            InstanceMarketOptionsRequestBuilder> {
  /// Describes the market (purchasing) option for the instances.
  factory InstanceMarketOptionsRequest({
    _i2.MarketType? marketType,
    _i3.SpotMarketOptions? spotOptions,
  }) {
    return _$InstanceMarketOptionsRequest._(
      marketType: marketType,
      spotOptions: spotOptions,
    );
  }

  /// Describes the market (purchasing) option for the instances.
  factory InstanceMarketOptionsRequest.build(
          [void Function(InstanceMarketOptionsRequestBuilder) updates]) =
      _$InstanceMarketOptionsRequest;

  const InstanceMarketOptionsRequest._();

  static const List<_i4.SmithySerializer> serializers = [
    InstanceMarketOptionsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InstanceMarketOptionsRequestBuilder b) {}

  /// The market type.
  _i2.MarketType? get marketType;

  /// The options for Spot Instances.
  _i3.SpotMarketOptions? get spotOptions;
  @override
  List<Object?> get props => [
        marketType,
        spotOptions,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InstanceMarketOptionsRequest');
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

class InstanceMarketOptionsRequestEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<InstanceMarketOptionsRequest> {
  const InstanceMarketOptionsRequestEc2QuerySerializer()
      : super('InstanceMarketOptionsRequest');

  @override
  Iterable<Type> get types => const [
        InstanceMarketOptionsRequest,
        _$InstanceMarketOptionsRequest,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceMarketOptionsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceMarketOptionsRequestBuilder();
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
              specifiedType: const FullType(_i3.SpotMarketOptions),
            ) as _i3.SpotMarketOptions));
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
    final payload = (object as InstanceMarketOptionsRequest);
    final result = <Object?>[
      const _i4.XmlElementName(
        'InstanceMarketOptionsRequestResponse',
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
          specifiedType: const FullType(_i3.SpotMarketOptions),
        ));
    }
    return result;
  }
}
