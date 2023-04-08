// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_spot_datafeed_subscription_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'create_spot_datafeed_subscription_request.g.dart';

/// Contains the parameters for CreateSpotDatafeedSubscription.
abstract class CreateSpotDatafeedSubscriptionRequest
    with
        _i1.HttpInput<CreateSpotDatafeedSubscriptionRequest>,
        _i2.AWSEquatable<CreateSpotDatafeedSubscriptionRequest>
    implements
        Built<CreateSpotDatafeedSubscriptionRequest,
            CreateSpotDatafeedSubscriptionRequestBuilder> {
  /// Contains the parameters for CreateSpotDatafeedSubscription.
  factory CreateSpotDatafeedSubscriptionRequest({
    required String bucket,
    bool? dryRun,
    String? prefix,
  }) {
    dryRun ??= false;
    return _$CreateSpotDatafeedSubscriptionRequest._(
      bucket: bucket,
      dryRun: dryRun,
      prefix: prefix,
    );
  }

  /// Contains the parameters for CreateSpotDatafeedSubscription.
  factory CreateSpotDatafeedSubscriptionRequest.build(
      [void Function(CreateSpotDatafeedSubscriptionRequestBuilder)
          updates]) = _$CreateSpotDatafeedSubscriptionRequest;

  const CreateSpotDatafeedSubscriptionRequest._();

  factory CreateSpotDatafeedSubscriptionRequest.fromRequest(
    CreateSpotDatafeedSubscriptionRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    CreateSpotDatafeedSubscriptionRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateSpotDatafeedSubscriptionRequestBuilder b) {
    b.dryRun = false;
  }

  /// The name of the Amazon S3 bucket in which to store the Spot Instance data feed. For more information about bucket names, see [Rules for bucket naming](https://docs.aws.amazon.com/AmazonS3/latest/dev/BucketRestrictions.html#bucketnamingrules) in the _Amazon S3 Developer Guide_.
  String get bucket;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The prefix for the data feed file names.
  String? get prefix;
  @override
  CreateSpotDatafeedSubscriptionRequest getPayload() => this;
  @override
  List<Object?> get props => [
        bucket,
        dryRun,
        prefix,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateSpotDatafeedSubscriptionRequest');
    helper.add(
      'bucket',
      bucket,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'prefix',
      prefix,
    );
    return helper.toString();
  }
}

class CreateSpotDatafeedSubscriptionRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<CreateSpotDatafeedSubscriptionRequest> {
  const CreateSpotDatafeedSubscriptionRequestEc2QuerySerializer()
      : super('CreateSpotDatafeedSubscriptionRequest');

  @override
  Iterable<Type> get types => const [
        CreateSpotDatafeedSubscriptionRequest,
        _$CreateSpotDatafeedSubscriptionRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateSpotDatafeedSubscriptionRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateSpotDatafeedSubscriptionRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'bucket':
          result.bucket = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'prefix':
          if (value != null) {
            result.prefix = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as CreateSpotDatafeedSubscriptionRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'CreateSpotDatafeedSubscriptionRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('Bucket'))
      ..add(serializers.serialize(
        payload.bucket,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    if (payload.prefix != null) {
      result
        ..add(const _i1.XmlElementName('Prefix'))
        ..add(serializers.serialize(
          payload.prefix!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
