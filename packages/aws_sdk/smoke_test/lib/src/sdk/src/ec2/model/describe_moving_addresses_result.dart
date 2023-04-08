// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_moving_addresses_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/moving_address_status.dart'
    as _i2;

part 'describe_moving_addresses_result.g.dart';

abstract class DescribeMovingAddressesResult
    with
        _i1.AWSEquatable<DescribeMovingAddressesResult>
    implements
        Built<DescribeMovingAddressesResult,
            DescribeMovingAddressesResultBuilder> {
  factory DescribeMovingAddressesResult({
    List<_i2.MovingAddressStatus>? movingAddressStatuses,
    String? nextToken,
  }) {
    return _$DescribeMovingAddressesResult._(
      movingAddressStatuses: movingAddressStatuses == null
          ? null
          : _i3.BuiltList(movingAddressStatuses),
      nextToken: nextToken,
    );
  }

  factory DescribeMovingAddressesResult.build(
          [void Function(DescribeMovingAddressesResultBuilder) updates]) =
      _$DescribeMovingAddressesResult;

  const DescribeMovingAddressesResult._();

  /// Constructs a [DescribeMovingAddressesResult] from a [payload] and [response].
  factory DescribeMovingAddressesResult.fromResponse(
    DescribeMovingAddressesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeMovingAddressesResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeMovingAddressesResultBuilder b) {}

  /// The status for each Elastic IP address.
  _i3.BuiltList<_i2.MovingAddressStatus>? get movingAddressStatuses;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        movingAddressStatuses,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeMovingAddressesResult');
    helper.add(
      'movingAddressStatuses',
      movingAddressStatuses,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeMovingAddressesResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeMovingAddressesResult> {
  const DescribeMovingAddressesResultEc2QuerySerializer()
      : super('DescribeMovingAddressesResult');

  @override
  Iterable<Type> get types => const [
        DescribeMovingAddressesResult,
        _$DescribeMovingAddressesResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeMovingAddressesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeMovingAddressesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'movingAddressStatusSet':
          if (value != null) {
            result.movingAddressStatuses
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.MovingAddressStatus)],
              ),
            ) as _i3.BuiltList<_i2.MovingAddressStatus>));
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
    final payload = (object as DescribeMovingAddressesResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeMovingAddressesResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.movingAddressStatuses != null) {
      result
        ..add(const _i4.XmlElementName('MovingAddressStatusSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.movingAddressStatuses!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.MovingAddressStatus)],
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
