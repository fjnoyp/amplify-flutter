// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_instances_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/reservation.dart' as _i2;

part 'describe_instances_result.g.dart';

abstract class DescribeInstancesResult
    with _i1.AWSEquatable<DescribeInstancesResult>
    implements Built<DescribeInstancesResult, DescribeInstancesResultBuilder> {
  factory DescribeInstancesResult({
    List<_i2.Reservation>? reservations,
    String? nextToken,
  }) {
    return _$DescribeInstancesResult._(
      reservations: reservations == null ? null : _i3.BuiltList(reservations),
      nextToken: nextToken,
    );
  }

  factory DescribeInstancesResult.build(
          [void Function(DescribeInstancesResultBuilder) updates]) =
      _$DescribeInstancesResult;

  const DescribeInstancesResult._();

  /// Constructs a [DescribeInstancesResult] from a [payload] and [response].
  factory DescribeInstancesResult.fromResponse(
    DescribeInstancesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeInstancesResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeInstancesResultBuilder b) {}

  /// Information about the reservations.
  _i3.BuiltList<_i2.Reservation>? get reservations;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        reservations,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeInstancesResult');
    helper.add(
      'reservations',
      reservations,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeInstancesResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeInstancesResult> {
  const DescribeInstancesResultEc2QuerySerializer()
      : super('DescribeInstancesResult');

  @override
  Iterable<Type> get types => const [
        DescribeInstancesResult,
        _$DescribeInstancesResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeInstancesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeInstancesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'reservationSet':
          if (value != null) {
            result.reservations.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.Reservation)],
              ),
            ) as _i3.BuiltList<_i2.Reservation>));
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
    final payload = (object as DescribeInstancesResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeInstancesResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.reservations != null) {
      result
        ..add(const _i4.XmlElementName('ReservationSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.reservations!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.Reservation)],
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
