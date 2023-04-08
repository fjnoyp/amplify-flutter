// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_route_tables_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/route_table.dart' as _i2;

part 'describe_route_tables_result.g.dart';

/// Contains the output of DescribeRouteTables.
abstract class DescribeRouteTablesResult
    with _i1.AWSEquatable<DescribeRouteTablesResult>
    implements
        Built<DescribeRouteTablesResult, DescribeRouteTablesResultBuilder> {
  /// Contains the output of DescribeRouteTables.
  factory DescribeRouteTablesResult({
    List<_i2.RouteTable>? routeTables,
    String? nextToken,
  }) {
    return _$DescribeRouteTablesResult._(
      routeTables: routeTables == null ? null : _i3.BuiltList(routeTables),
      nextToken: nextToken,
    );
  }

  /// Contains the output of DescribeRouteTables.
  factory DescribeRouteTablesResult.build(
          [void Function(DescribeRouteTablesResultBuilder) updates]) =
      _$DescribeRouteTablesResult;

  const DescribeRouteTablesResult._();

  /// Constructs a [DescribeRouteTablesResult] from a [payload] and [response].
  factory DescribeRouteTablesResult.fromResponse(
    DescribeRouteTablesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeRouteTablesResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeRouteTablesResultBuilder b) {}

  /// Information about one or more route tables.
  _i3.BuiltList<_i2.RouteTable>? get routeTables;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        routeTables,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeRouteTablesResult');
    helper.add(
      'routeTables',
      routeTables,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeRouteTablesResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeRouteTablesResult> {
  const DescribeRouteTablesResultEc2QuerySerializer()
      : super('DescribeRouteTablesResult');

  @override
  Iterable<Type> get types => const [
        DescribeRouteTablesResult,
        _$DescribeRouteTablesResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeRouteTablesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeRouteTablesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'routeTableSet':
          if (value != null) {
            result.routeTables.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.RouteTable)],
              ),
            ) as _i3.BuiltList<_i2.RouteTable>));
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
    final payload = (object as DescribeRouteTablesResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeRouteTablesResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.routeTables != null) {
      result
        ..add(const _i4.XmlElementName('RouteTableSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.routeTables!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.RouteTable)],
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
