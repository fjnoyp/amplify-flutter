// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_host_reservation_offerings_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/host_offering.dart' as _i2;

part 'describe_host_reservation_offerings_result.g.dart';

abstract class DescribeHostReservationOfferingsResult
    with
        _i1.AWSEquatable<DescribeHostReservationOfferingsResult>
    implements
        Built<DescribeHostReservationOfferingsResult,
            DescribeHostReservationOfferingsResultBuilder> {
  factory DescribeHostReservationOfferingsResult({
    String? nextToken,
    List<_i2.HostOffering>? offeringSet,
  }) {
    return _$DescribeHostReservationOfferingsResult._(
      nextToken: nextToken,
      offeringSet: offeringSet == null ? null : _i3.BuiltList(offeringSet),
    );
  }

  factory DescribeHostReservationOfferingsResult.build(
      [void Function(DescribeHostReservationOfferingsResultBuilder)
          updates]) = _$DescribeHostReservationOfferingsResult;

  const DescribeHostReservationOfferingsResult._();

  /// Constructs a [DescribeHostReservationOfferingsResult] from a [payload] and [response].
  factory DescribeHostReservationOfferingsResult.fromResponse(
    DescribeHostReservationOfferingsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeHostReservationOfferingsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeHostReservationOfferingsResultBuilder b) {}

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;

  /// Information about the offerings.
  _i3.BuiltList<_i2.HostOffering>? get offeringSet;
  @override
  List<Object?> get props => [
        nextToken,
        offeringSet,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeHostReservationOfferingsResult');
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'offeringSet',
      offeringSet,
    );
    return helper.toString();
  }
}

class DescribeHostReservationOfferingsResultEc2QuerySerializer extends _i4
    .StructuredSmithySerializer<DescribeHostReservationOfferingsResult> {
  const DescribeHostReservationOfferingsResultEc2QuerySerializer()
      : super('DescribeHostReservationOfferingsResult');

  @override
  Iterable<Type> get types => const [
        DescribeHostReservationOfferingsResult,
        _$DescribeHostReservationOfferingsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeHostReservationOfferingsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeHostReservationOfferingsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'nextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'offeringSet':
          if (value != null) {
            result.offeringSet.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.HostOffering)],
              ),
            ) as _i3.BuiltList<_i2.HostOffering>));
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
    final payload = (object as DescribeHostReservationOfferingsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeHostReservationOfferingsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.nextToken != null) {
      result
        ..add(const _i4.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.offeringSet != null) {
      result
        ..add(const _i4.XmlElementName('OfferingSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.offeringSet!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.HostOffering)],
          ),
        ));
    }
    return result;
  }
}
