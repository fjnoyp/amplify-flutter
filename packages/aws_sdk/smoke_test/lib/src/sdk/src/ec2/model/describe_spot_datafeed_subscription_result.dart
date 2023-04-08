// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_spot_datafeed_subscription_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/spot_datafeed_subscription.dart'
    as _i2;

part 'describe_spot_datafeed_subscription_result.g.dart';

/// Contains the output of DescribeSpotDatafeedSubscription.
abstract class DescribeSpotDatafeedSubscriptionResult
    with
        _i1.AWSEquatable<DescribeSpotDatafeedSubscriptionResult>
    implements
        Built<DescribeSpotDatafeedSubscriptionResult,
            DescribeSpotDatafeedSubscriptionResultBuilder> {
  /// Contains the output of DescribeSpotDatafeedSubscription.
  factory DescribeSpotDatafeedSubscriptionResult(
      {_i2.SpotDatafeedSubscription? spotDatafeedSubscription}) {
    return _$DescribeSpotDatafeedSubscriptionResult._(
        spotDatafeedSubscription: spotDatafeedSubscription);
  }

  /// Contains the output of DescribeSpotDatafeedSubscription.
  factory DescribeSpotDatafeedSubscriptionResult.build(
      [void Function(DescribeSpotDatafeedSubscriptionResultBuilder)
          updates]) = _$DescribeSpotDatafeedSubscriptionResult;

  const DescribeSpotDatafeedSubscriptionResult._();

  /// Constructs a [DescribeSpotDatafeedSubscriptionResult] from a [payload] and [response].
  factory DescribeSpotDatafeedSubscriptionResult.fromResponse(
    DescribeSpotDatafeedSubscriptionResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    DescribeSpotDatafeedSubscriptionResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeSpotDatafeedSubscriptionResultBuilder b) {}

  /// The Spot Instance data feed subscription.
  _i2.SpotDatafeedSubscription? get spotDatafeedSubscription;
  @override
  List<Object?> get props => [spotDatafeedSubscription];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeSpotDatafeedSubscriptionResult');
    helper.add(
      'spotDatafeedSubscription',
      spotDatafeedSubscription,
    );
    return helper.toString();
  }
}

class DescribeSpotDatafeedSubscriptionResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<DescribeSpotDatafeedSubscriptionResult> {
  const DescribeSpotDatafeedSubscriptionResultEc2QuerySerializer()
      : super('DescribeSpotDatafeedSubscriptionResult');

  @override
  Iterable<Type> get types => const [
        DescribeSpotDatafeedSubscriptionResult,
        _$DescribeSpotDatafeedSubscriptionResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeSpotDatafeedSubscriptionResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeSpotDatafeedSubscriptionResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'spotDatafeedSubscription':
          if (value != null) {
            result.spotDatafeedSubscription.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.SpotDatafeedSubscription),
            ) as _i2.SpotDatafeedSubscription));
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
    final payload = (object as DescribeSpotDatafeedSubscriptionResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'DescribeSpotDatafeedSubscriptionResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.spotDatafeedSubscription != null) {
      result
        ..add(const _i3.XmlElementName('SpotDatafeedSubscription'))
        ..add(serializers.serialize(
          payload.spotDatafeedSubscription!,
          specifiedType: const FullType(_i2.SpotDatafeedSubscription),
        ));
    }
    return result;
  }
}
