// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_spot_datafeed_subscription_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/spot_datafeed_subscription.dart'
    as _i2;

part 'create_spot_datafeed_subscription_result.g.dart';

/// Contains the output of CreateSpotDatafeedSubscription.
abstract class CreateSpotDatafeedSubscriptionResult
    with
        _i1.AWSEquatable<CreateSpotDatafeedSubscriptionResult>
    implements
        Built<CreateSpotDatafeedSubscriptionResult,
            CreateSpotDatafeedSubscriptionResultBuilder> {
  /// Contains the output of CreateSpotDatafeedSubscription.
  factory CreateSpotDatafeedSubscriptionResult(
      {_i2.SpotDatafeedSubscription? spotDatafeedSubscription}) {
    return _$CreateSpotDatafeedSubscriptionResult._(
        spotDatafeedSubscription: spotDatafeedSubscription);
  }

  /// Contains the output of CreateSpotDatafeedSubscription.
  factory CreateSpotDatafeedSubscriptionResult.build(
      [void Function(CreateSpotDatafeedSubscriptionResultBuilder)
          updates]) = _$CreateSpotDatafeedSubscriptionResult;

  const CreateSpotDatafeedSubscriptionResult._();

  /// Constructs a [CreateSpotDatafeedSubscriptionResult] from a [payload] and [response].
  factory CreateSpotDatafeedSubscriptionResult.fromResponse(
    CreateSpotDatafeedSubscriptionResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    CreateSpotDatafeedSubscriptionResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateSpotDatafeedSubscriptionResultBuilder b) {}

  /// The Spot Instance data feed subscription.
  _i2.SpotDatafeedSubscription? get spotDatafeedSubscription;
  @override
  List<Object?> get props => [spotDatafeedSubscription];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateSpotDatafeedSubscriptionResult');
    helper.add(
      'spotDatafeedSubscription',
      spotDatafeedSubscription,
    );
    return helper.toString();
  }
}

class CreateSpotDatafeedSubscriptionResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<CreateSpotDatafeedSubscriptionResult> {
  const CreateSpotDatafeedSubscriptionResultEc2QuerySerializer()
      : super('CreateSpotDatafeedSubscriptionResult');

  @override
  Iterable<Type> get types => const [
        CreateSpotDatafeedSubscriptionResult,
        _$CreateSpotDatafeedSubscriptionResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateSpotDatafeedSubscriptionResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateSpotDatafeedSubscriptionResultBuilder();
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
    final payload = (object as CreateSpotDatafeedSubscriptionResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'CreateSpotDatafeedSubscriptionResultResponse',
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
