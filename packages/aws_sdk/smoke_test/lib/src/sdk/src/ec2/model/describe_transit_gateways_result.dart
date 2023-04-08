// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_transit_gateways_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway.dart' as _i2;

part 'describe_transit_gateways_result.g.dart';

abstract class DescribeTransitGatewaysResult
    with
        _i1.AWSEquatable<DescribeTransitGatewaysResult>
    implements
        Built<DescribeTransitGatewaysResult,
            DescribeTransitGatewaysResultBuilder> {
  factory DescribeTransitGatewaysResult({
    List<_i2.TransitGateway>? transitGateways,
    String? nextToken,
  }) {
    return _$DescribeTransitGatewaysResult._(
      transitGateways:
          transitGateways == null ? null : _i3.BuiltList(transitGateways),
      nextToken: nextToken,
    );
  }

  factory DescribeTransitGatewaysResult.build(
          [void Function(DescribeTransitGatewaysResultBuilder) updates]) =
      _$DescribeTransitGatewaysResult;

  const DescribeTransitGatewaysResult._();

  /// Constructs a [DescribeTransitGatewaysResult] from a [payload] and [response].
  factory DescribeTransitGatewaysResult.fromResponse(
    DescribeTransitGatewaysResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeTransitGatewaysResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeTransitGatewaysResultBuilder b) {}

  /// Information about the transit gateways.
  _i3.BuiltList<_i2.TransitGateway>? get transitGateways;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        transitGateways,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeTransitGatewaysResult');
    helper.add(
      'transitGateways',
      transitGateways,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeTransitGatewaysResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeTransitGatewaysResult> {
  const DescribeTransitGatewaysResultEc2QuerySerializer()
      : super('DescribeTransitGatewaysResult');

  @override
  Iterable<Type> get types => const [
        DescribeTransitGatewaysResult,
        _$DescribeTransitGatewaysResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeTransitGatewaysResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeTransitGatewaysResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'transitGatewaySet':
          if (value != null) {
            result.transitGateways.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.TransitGateway)],
              ),
            ) as _i3.BuiltList<_i2.TransitGateway>));
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
    final payload = (object as DescribeTransitGatewaysResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeTransitGatewaysResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.transitGateways != null) {
      result
        ..add(const _i4.XmlElementName('TransitGatewaySet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.transitGateways!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.TransitGateway)],
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
