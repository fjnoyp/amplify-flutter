// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_transit_gateway_route_tables_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route_table.dart'
    as _i2;

part 'describe_transit_gateway_route_tables_result.g.dart';

abstract class DescribeTransitGatewayRouteTablesResult
    with
        _i1.AWSEquatable<DescribeTransitGatewayRouteTablesResult>
    implements
        Built<DescribeTransitGatewayRouteTablesResult,
            DescribeTransitGatewayRouteTablesResultBuilder> {
  factory DescribeTransitGatewayRouteTablesResult({
    List<_i2.TransitGatewayRouteTable>? transitGatewayRouteTables,
    String? nextToken,
  }) {
    return _$DescribeTransitGatewayRouteTablesResult._(
      transitGatewayRouteTables: transitGatewayRouteTables == null
          ? null
          : _i3.BuiltList(transitGatewayRouteTables),
      nextToken: nextToken,
    );
  }

  factory DescribeTransitGatewayRouteTablesResult.build(
      [void Function(DescribeTransitGatewayRouteTablesResultBuilder)
          updates]) = _$DescribeTransitGatewayRouteTablesResult;

  const DescribeTransitGatewayRouteTablesResult._();

  /// Constructs a [DescribeTransitGatewayRouteTablesResult] from a [payload] and [response].
  factory DescribeTransitGatewayRouteTablesResult.fromResponse(
    DescribeTransitGatewayRouteTablesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeTransitGatewayRouteTablesResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeTransitGatewayRouteTablesResultBuilder b) {}

  /// Information about the transit gateway route tables.
  _i3.BuiltList<_i2.TransitGatewayRouteTable>? get transitGatewayRouteTables;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        transitGatewayRouteTables,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeTransitGatewayRouteTablesResult');
    helper.add(
      'transitGatewayRouteTables',
      transitGatewayRouteTables,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeTransitGatewayRouteTablesResultEc2QuerySerializer extends _i4
    .StructuredSmithySerializer<DescribeTransitGatewayRouteTablesResult> {
  const DescribeTransitGatewayRouteTablesResultEc2QuerySerializer()
      : super('DescribeTransitGatewayRouteTablesResult');

  @override
  Iterable<Type> get types => const [
        DescribeTransitGatewayRouteTablesResult,
        _$DescribeTransitGatewayRouteTablesResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeTransitGatewayRouteTablesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeTransitGatewayRouteTablesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'transitGatewayRouteTables':
          if (value != null) {
            result.transitGatewayRouteTables
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.TransitGatewayRouteTable)],
              ),
            ) as _i3.BuiltList<_i2.TransitGatewayRouteTable>));
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
    final payload = (object as DescribeTransitGatewayRouteTablesResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeTransitGatewayRouteTablesResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.transitGatewayRouteTables != null) {
      result
        ..add(const _i4.XmlElementName('TransitGatewayRouteTables'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.transitGatewayRouteTables!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.TransitGatewayRouteTable)],
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
