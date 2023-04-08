// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_vpc_endpoint_connections_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_endpoint_connection.dart'
    as _i2;

part 'describe_vpc_endpoint_connections_result.g.dart';

abstract class DescribeVpcEndpointConnectionsResult
    with
        _i1.AWSEquatable<DescribeVpcEndpointConnectionsResult>
    implements
        Built<DescribeVpcEndpointConnectionsResult,
            DescribeVpcEndpointConnectionsResultBuilder> {
  factory DescribeVpcEndpointConnectionsResult({
    List<_i2.VpcEndpointConnection>? vpcEndpointConnections,
    String? nextToken,
  }) {
    return _$DescribeVpcEndpointConnectionsResult._(
      vpcEndpointConnections: vpcEndpointConnections == null
          ? null
          : _i3.BuiltList(vpcEndpointConnections),
      nextToken: nextToken,
    );
  }

  factory DescribeVpcEndpointConnectionsResult.build(
      [void Function(DescribeVpcEndpointConnectionsResultBuilder)
          updates]) = _$DescribeVpcEndpointConnectionsResult;

  const DescribeVpcEndpointConnectionsResult._();

  /// Constructs a [DescribeVpcEndpointConnectionsResult] from a [payload] and [response].
  factory DescribeVpcEndpointConnectionsResult.fromResponse(
    DescribeVpcEndpointConnectionsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeVpcEndpointConnectionsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeVpcEndpointConnectionsResultBuilder b) {}

  /// Information about one or more VPC endpoint connections.
  _i3.BuiltList<_i2.VpcEndpointConnection>? get vpcEndpointConnections;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        vpcEndpointConnections,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeVpcEndpointConnectionsResult');
    helper.add(
      'vpcEndpointConnections',
      vpcEndpointConnections,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeVpcEndpointConnectionsResultEc2QuerySerializer extends _i4
    .StructuredSmithySerializer<DescribeVpcEndpointConnectionsResult> {
  const DescribeVpcEndpointConnectionsResultEc2QuerySerializer()
      : super('DescribeVpcEndpointConnectionsResult');

  @override
  Iterable<Type> get types => const [
        DescribeVpcEndpointConnectionsResult,
        _$DescribeVpcEndpointConnectionsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeVpcEndpointConnectionsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeVpcEndpointConnectionsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'vpcEndpointConnectionSet':
          if (value != null) {
            result.vpcEndpointConnections
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.VpcEndpointConnection)],
              ),
            ) as _i3.BuiltList<_i2.VpcEndpointConnection>));
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
    final payload = (object as DescribeVpcEndpointConnectionsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeVpcEndpointConnectionsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.vpcEndpointConnections != null) {
      result
        ..add(const _i4.XmlElementName('VpcEndpointConnectionSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.vpcEndpointConnections!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.VpcEndpointConnection)],
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
