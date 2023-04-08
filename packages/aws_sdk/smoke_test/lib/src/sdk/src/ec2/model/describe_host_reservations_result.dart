// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_host_reservations_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/host_reservation.dart' as _i2;

part 'describe_host_reservations_result.g.dart';

abstract class DescribeHostReservationsResult
    with
        _i1.AWSEquatable<DescribeHostReservationsResult>
    implements
        Built<DescribeHostReservationsResult,
            DescribeHostReservationsResultBuilder> {
  factory DescribeHostReservationsResult({
    List<_i2.HostReservation>? hostReservationSet,
    String? nextToken,
  }) {
    return _$DescribeHostReservationsResult._(
      hostReservationSet:
          hostReservationSet == null ? null : _i3.BuiltList(hostReservationSet),
      nextToken: nextToken,
    );
  }

  factory DescribeHostReservationsResult.build(
          [void Function(DescribeHostReservationsResultBuilder) updates]) =
      _$DescribeHostReservationsResult;

  const DescribeHostReservationsResult._();

  /// Constructs a [DescribeHostReservationsResult] from a [payload] and [response].
  factory DescribeHostReservationsResult.fromResponse(
    DescribeHostReservationsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeHostReservationsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeHostReservationsResultBuilder b) {}

  /// Details about the reservation's configuration.
  _i3.BuiltList<_i2.HostReservation>? get hostReservationSet;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        hostReservationSet,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeHostReservationsResult');
    helper.add(
      'hostReservationSet',
      hostReservationSet,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeHostReservationsResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeHostReservationsResult> {
  const DescribeHostReservationsResultEc2QuerySerializer()
      : super('DescribeHostReservationsResult');

  @override
  Iterable<Type> get types => const [
        DescribeHostReservationsResult,
        _$DescribeHostReservationsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeHostReservationsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeHostReservationsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'hostReservationSet':
          if (value != null) {
            result.hostReservationSet.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.HostReservation)],
              ),
            ) as _i3.BuiltList<_i2.HostReservation>));
          }
          break;
        case 'nextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
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
    final payload = (object as DescribeHostReservationsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeHostReservationsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.hostReservationSet != null) {
      result
        ..add(const _i4.XmlElementName('HostReservationSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.hostReservationSet!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.HostReservation)],
          ),
        ));
    }
    if (payload.nextToken != null) {
      result
        ..add(const _i4.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
