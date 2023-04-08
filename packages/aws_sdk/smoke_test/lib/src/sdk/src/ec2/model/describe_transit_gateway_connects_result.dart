// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_transit_gateway_connects_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_connect.dart'
    as _i2;

part 'describe_transit_gateway_connects_result.g.dart';

abstract class DescribeTransitGatewayConnectsResult
    with
        _i1.AWSEquatable<DescribeTransitGatewayConnectsResult>
    implements
        Built<DescribeTransitGatewayConnectsResult,
            DescribeTransitGatewayConnectsResultBuilder> {
  factory DescribeTransitGatewayConnectsResult({
    List<_i2.TransitGatewayConnect>? transitGatewayConnects,
    String? nextToken,
  }) {
    return _$DescribeTransitGatewayConnectsResult._(
      transitGatewayConnects: transitGatewayConnects == null
          ? null
          : _i3.BuiltList(transitGatewayConnects),
      nextToken: nextToken,
    );
  }

  factory DescribeTransitGatewayConnectsResult.build(
      [void Function(DescribeTransitGatewayConnectsResultBuilder)
          updates]) = _$DescribeTransitGatewayConnectsResult;

  const DescribeTransitGatewayConnectsResult._();

  /// Constructs a [DescribeTransitGatewayConnectsResult] from a [payload] and [response].
  factory DescribeTransitGatewayConnectsResult.fromResponse(
    DescribeTransitGatewayConnectsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeTransitGatewayConnectsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeTransitGatewayConnectsResultBuilder b) {}

  /// Information about the Connect attachments.
  _i3.BuiltList<_i2.TransitGatewayConnect>? get transitGatewayConnects;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        transitGatewayConnects,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeTransitGatewayConnectsResult');
    helper.add(
      'transitGatewayConnects',
      transitGatewayConnects,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeTransitGatewayConnectsResultEc2QuerySerializer extends _i4
    .StructuredSmithySerializer<DescribeTransitGatewayConnectsResult> {
  const DescribeTransitGatewayConnectsResultEc2QuerySerializer()
      : super('DescribeTransitGatewayConnectsResult');

  @override
  Iterable<Type> get types => const [
        DescribeTransitGatewayConnectsResult,
        _$DescribeTransitGatewayConnectsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeTransitGatewayConnectsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeTransitGatewayConnectsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'transitGatewayConnectSet':
          if (value != null) {
            result.transitGatewayConnects
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.TransitGatewayConnect)],
              ),
            ) as _i3.BuiltList<_i2.TransitGatewayConnect>));
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
    final payload = (object as DescribeTransitGatewayConnectsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeTransitGatewayConnectsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.transitGatewayConnects != null) {
      result
        ..add(const _i4.XmlElementName('TransitGatewayConnectSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.transitGatewayConnects!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.TransitGatewayConnect)],
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
