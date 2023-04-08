// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_transit_gateway_policy_tables_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_policy_table.dart'
    as _i2;

part 'describe_transit_gateway_policy_tables_result.g.dart';

abstract class DescribeTransitGatewayPolicyTablesResult
    with
        _i1.AWSEquatable<DescribeTransitGatewayPolicyTablesResult>
    implements
        Built<DescribeTransitGatewayPolicyTablesResult,
            DescribeTransitGatewayPolicyTablesResultBuilder> {
  factory DescribeTransitGatewayPolicyTablesResult({
    List<_i2.TransitGatewayPolicyTable>? transitGatewayPolicyTables,
    String? nextToken,
  }) {
    return _$DescribeTransitGatewayPolicyTablesResult._(
      transitGatewayPolicyTables: transitGatewayPolicyTables == null
          ? null
          : _i3.BuiltList(transitGatewayPolicyTables),
      nextToken: nextToken,
    );
  }

  factory DescribeTransitGatewayPolicyTablesResult.build(
      [void Function(DescribeTransitGatewayPolicyTablesResultBuilder)
          updates]) = _$DescribeTransitGatewayPolicyTablesResult;

  const DescribeTransitGatewayPolicyTablesResult._();

  /// Constructs a [DescribeTransitGatewayPolicyTablesResult] from a [payload] and [response].
  factory DescribeTransitGatewayPolicyTablesResult.fromResponse(
    DescribeTransitGatewayPolicyTablesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeTransitGatewayPolicyTablesResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeTransitGatewayPolicyTablesResultBuilder b) {}

  /// Describes the transit gateway policy tables.
  _i3.BuiltList<_i2.TransitGatewayPolicyTable>? get transitGatewayPolicyTables;

  /// The token for the next page of results.
  String? get nextToken;
  @override
  List<Object?> get props => [
        transitGatewayPolicyTables,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeTransitGatewayPolicyTablesResult');
    helper.add(
      'transitGatewayPolicyTables',
      transitGatewayPolicyTables,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeTransitGatewayPolicyTablesResultEc2QuerySerializer extends _i4
    .StructuredSmithySerializer<DescribeTransitGatewayPolicyTablesResult> {
  const DescribeTransitGatewayPolicyTablesResultEc2QuerySerializer()
      : super('DescribeTransitGatewayPolicyTablesResult');

  @override
  Iterable<Type> get types => const [
        DescribeTransitGatewayPolicyTablesResult,
        _$DescribeTransitGatewayPolicyTablesResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeTransitGatewayPolicyTablesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeTransitGatewayPolicyTablesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'transitGatewayPolicyTables':
          if (value != null) {
            result.transitGatewayPolicyTables
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.TransitGatewayPolicyTable)],
              ),
            ) as _i3.BuiltList<_i2.TransitGatewayPolicyTable>));
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
    final payload = (object as DescribeTransitGatewayPolicyTablesResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeTransitGatewayPolicyTablesResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.transitGatewayPolicyTables != null) {
      result
        ..add(const _i4.XmlElementName('TransitGatewayPolicyTables'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.transitGatewayPolicyTables!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.TransitGatewayPolicyTable)],
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
