// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.spot_datafeed_subscription; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/datafeed_subscription_state.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/spot_instance_state_fault.dart'
    as _i2;

part 'spot_datafeed_subscription.g.dart';

/// Describes the data feed for a Spot Instance.
abstract class SpotDatafeedSubscription
    with _i1.AWSEquatable<SpotDatafeedSubscription>
    implements
        Built<SpotDatafeedSubscription, SpotDatafeedSubscriptionBuilder> {
  /// Describes the data feed for a Spot Instance.
  factory SpotDatafeedSubscription({
    String? bucket,
    _i2.SpotInstanceStateFault? fault,
    String? ownerId,
    String? prefix,
    _i3.DatafeedSubscriptionState? state,
  }) {
    return _$SpotDatafeedSubscription._(
      bucket: bucket,
      fault: fault,
      ownerId: ownerId,
      prefix: prefix,
      state: state,
    );
  }

  /// Describes the data feed for a Spot Instance.
  factory SpotDatafeedSubscription.build(
          [void Function(SpotDatafeedSubscriptionBuilder) updates]) =
      _$SpotDatafeedSubscription;

  const SpotDatafeedSubscription._();

  static const List<_i4.SmithySerializer> serializers = [
    SpotDatafeedSubscriptionEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SpotDatafeedSubscriptionBuilder b) {}

  /// The name of the Amazon S3 bucket where the Spot Instance data feed is located.
  String? get bucket;

  /// The fault codes for the Spot Instance request, if any.
  _i2.SpotInstanceStateFault? get fault;

  /// The Amazon Web Services account ID of the account.
  String? get ownerId;

  /// The prefix for the data feed files.
  String? get prefix;

  /// The state of the Spot Instance data feed subscription.
  _i3.DatafeedSubscriptionState? get state;
  @override
  List<Object?> get props => [
        bucket,
        fault,
        ownerId,
        prefix,
        state,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SpotDatafeedSubscription');
    helper.add(
      'bucket',
      bucket,
    );
    helper.add(
      'fault',
      fault,
    );
    helper.add(
      'ownerId',
      ownerId,
    );
    helper.add(
      'prefix',
      prefix,
    );
    helper.add(
      'state',
      state,
    );
    return helper.toString();
  }
}

class SpotDatafeedSubscriptionEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<SpotDatafeedSubscription> {
  const SpotDatafeedSubscriptionEc2QuerySerializer()
      : super('SpotDatafeedSubscription');

  @override
  Iterable<Type> get types => const [
        SpotDatafeedSubscription,
        _$SpotDatafeedSubscription,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SpotDatafeedSubscription deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SpotDatafeedSubscriptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'bucket':
          if (value != null) {
            result.bucket = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'fault':
          if (value != null) {
            result.fault.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.SpotInstanceStateFault),
            ) as _i2.SpotInstanceStateFault));
          }
          break;
        case 'ownerId':
          if (value != null) {
            result.ownerId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'prefix':
          if (value != null) {
            result.prefix = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'state':
          if (value != null) {
            result.state = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.DatafeedSubscriptionState),
            ) as _i3.DatafeedSubscriptionState);
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
    final payload = (object as SpotDatafeedSubscription);
    final result = <Object?>[
      const _i4.XmlElementName(
        'SpotDatafeedSubscriptionResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.bucket != null) {
      result
        ..add(const _i4.XmlElementName('Bucket'))
        ..add(serializers.serialize(
          payload.bucket!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.fault != null) {
      result
        ..add(const _i4.XmlElementName('Fault'))
        ..add(serializers.serialize(
          payload.fault!,
          specifiedType: const FullType(_i2.SpotInstanceStateFault),
        ));
    }
    if (payload.ownerId != null) {
      result
        ..add(const _i4.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          payload.ownerId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.prefix != null) {
      result
        ..add(const _i4.XmlElementName('Prefix'))
        ..add(serializers.serialize(
          payload.prefix!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.state != null) {
      result
        ..add(const _i4.XmlElementName('State'))
        ..add(serializers.serialize(
          payload.state!,
          specifiedType: const FullType.nullable(_i3.DatafeedSubscriptionState),
        ));
    }
    return result;
  }
}
