// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_local_gateway_route_tables_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/local_gateway_route_table.dart'
    as _i2;

part 'describe_local_gateway_route_tables_result.g.dart';

abstract class DescribeLocalGatewayRouteTablesResult
    with
        _i1.AWSEquatable<DescribeLocalGatewayRouteTablesResult>
    implements
        Built<DescribeLocalGatewayRouteTablesResult,
            DescribeLocalGatewayRouteTablesResultBuilder> {
  factory DescribeLocalGatewayRouteTablesResult({
    List<_i2.LocalGatewayRouteTable>? localGatewayRouteTables,
    String? nextToken,
  }) {
    return _$DescribeLocalGatewayRouteTablesResult._(
      localGatewayRouteTables: localGatewayRouteTables == null
          ? null
          : _i3.BuiltList(localGatewayRouteTables),
      nextToken: nextToken,
    );
  }

  factory DescribeLocalGatewayRouteTablesResult.build(
      [void Function(DescribeLocalGatewayRouteTablesResultBuilder)
          updates]) = _$DescribeLocalGatewayRouteTablesResult;

  const DescribeLocalGatewayRouteTablesResult._();

  /// Constructs a [DescribeLocalGatewayRouteTablesResult] from a [payload] and [response].
  factory DescribeLocalGatewayRouteTablesResult.fromResponse(
    DescribeLocalGatewayRouteTablesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeLocalGatewayRouteTablesResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeLocalGatewayRouteTablesResultBuilder b) {}

  /// Information about the local gateway route tables.
  _i3.BuiltList<_i2.LocalGatewayRouteTable>? get localGatewayRouteTables;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        localGatewayRouteTables,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeLocalGatewayRouteTablesResult');
    helper.add(
      'localGatewayRouteTables',
      localGatewayRouteTables,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeLocalGatewayRouteTablesResultEc2QuerySerializer extends _i4
    .StructuredSmithySerializer<DescribeLocalGatewayRouteTablesResult> {
  const DescribeLocalGatewayRouteTablesResultEc2QuerySerializer()
      : super('DescribeLocalGatewayRouteTablesResult');

  @override
  Iterable<Type> get types => const [
        DescribeLocalGatewayRouteTablesResult,
        _$DescribeLocalGatewayRouteTablesResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeLocalGatewayRouteTablesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeLocalGatewayRouteTablesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'localGatewayRouteTableSet':
          if (value != null) {
            result.localGatewayRouteTables
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.LocalGatewayRouteTable)],
              ),
            ) as _i3.BuiltList<_i2.LocalGatewayRouteTable>));
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
    final payload = (object as DescribeLocalGatewayRouteTablesResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeLocalGatewayRouteTablesResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.localGatewayRouteTables != null) {
      result
        ..add(const _i4.XmlElementName('LocalGatewayRouteTableSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.localGatewayRouteTables!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.LocalGatewayRouteTable)],
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
