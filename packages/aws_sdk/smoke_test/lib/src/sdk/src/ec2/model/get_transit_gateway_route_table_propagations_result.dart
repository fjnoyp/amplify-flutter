// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.get_transit_gateway_route_table_propagations_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route_table_propagation.dart'
    as _i2;

part 'get_transit_gateway_route_table_propagations_result.g.dart';

abstract class GetTransitGatewayRouteTablePropagationsResult
    with
        _i1.AWSEquatable<GetTransitGatewayRouteTablePropagationsResult>
    implements
        Built<GetTransitGatewayRouteTablePropagationsResult,
            GetTransitGatewayRouteTablePropagationsResultBuilder> {
  factory GetTransitGatewayRouteTablePropagationsResult({
    List<_i2.TransitGatewayRouteTablePropagation>?
        transitGatewayRouteTablePropagations,
    String? nextToken,
  }) {
    return _$GetTransitGatewayRouteTablePropagationsResult._(
      transitGatewayRouteTablePropagations:
          transitGatewayRouteTablePropagations == null
              ? null
              : _i3.BuiltList(transitGatewayRouteTablePropagations),
      nextToken: nextToken,
    );
  }

  factory GetTransitGatewayRouteTablePropagationsResult.build(
      [void Function(GetTransitGatewayRouteTablePropagationsResultBuilder)
          updates]) = _$GetTransitGatewayRouteTablePropagationsResult;

  const GetTransitGatewayRouteTablePropagationsResult._();

  /// Constructs a [GetTransitGatewayRouteTablePropagationsResult] from a [payload] and [response].
  factory GetTransitGatewayRouteTablePropagationsResult.fromResponse(
    GetTransitGatewayRouteTablePropagationsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    GetTransitGatewayRouteTablePropagationsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetTransitGatewayRouteTablePropagationsResultBuilder b) {}

  /// Information about the route table propagations.
  _i3.BuiltList<_i2.TransitGatewayRouteTablePropagation>?
      get transitGatewayRouteTablePropagations;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        transitGatewayRouteTablePropagations,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GetTransitGatewayRouteTablePropagationsResult');
    helper.add(
      'transitGatewayRouteTablePropagations',
      transitGatewayRouteTablePropagations,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class GetTransitGatewayRouteTablePropagationsResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<
        GetTransitGatewayRouteTablePropagationsResult> {
  const GetTransitGatewayRouteTablePropagationsResultEc2QuerySerializer()
      : super('GetTransitGatewayRouteTablePropagationsResult');

  @override
  Iterable<Type> get types => const [
        GetTransitGatewayRouteTablePropagationsResult,
        _$GetTransitGatewayRouteTablePropagationsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetTransitGatewayRouteTablePropagationsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetTransitGatewayRouteTablePropagationsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'transitGatewayRouteTablePropagations':
          if (value != null) {
            result.transitGatewayRouteTablePropagations
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.TransitGatewayRouteTablePropagation)],
              ),
            ) as _i3.BuiltList<_i2.TransitGatewayRouteTablePropagation>));
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
    final payload = (object as GetTransitGatewayRouteTablePropagationsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'GetTransitGatewayRouteTablePropagationsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.transitGatewayRouteTablePropagations != null) {
      result
        ..add(const _i4.XmlElementName('TransitGatewayRouteTablePropagations'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.transitGatewayRouteTablePropagations!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.TransitGatewayRouteTablePropagation)],
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
