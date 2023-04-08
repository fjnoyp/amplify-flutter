// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_vpc_peering_connections_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_peering_connection.dart'
    as _i2;

part 'describe_vpc_peering_connections_result.g.dart';

abstract class DescribeVpcPeeringConnectionsResult
    with
        _i1.AWSEquatable<DescribeVpcPeeringConnectionsResult>
    implements
        Built<DescribeVpcPeeringConnectionsResult,
            DescribeVpcPeeringConnectionsResultBuilder> {
  factory DescribeVpcPeeringConnectionsResult({
    List<_i2.VpcPeeringConnection>? vpcPeeringConnections,
    String? nextToken,
  }) {
    return _$DescribeVpcPeeringConnectionsResult._(
      vpcPeeringConnections: vpcPeeringConnections == null
          ? null
          : _i3.BuiltList(vpcPeeringConnections),
      nextToken: nextToken,
    );
  }

  factory DescribeVpcPeeringConnectionsResult.build(
          [void Function(DescribeVpcPeeringConnectionsResultBuilder) updates]) =
      _$DescribeVpcPeeringConnectionsResult;

  const DescribeVpcPeeringConnectionsResult._();

  /// Constructs a [DescribeVpcPeeringConnectionsResult] from a [payload] and [response].
  factory DescribeVpcPeeringConnectionsResult.fromResponse(
    DescribeVpcPeeringConnectionsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeVpcPeeringConnectionsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeVpcPeeringConnectionsResultBuilder b) {}

  /// Information about the VPC peering connections.
  _i3.BuiltList<_i2.VpcPeeringConnection>? get vpcPeeringConnections;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        vpcPeeringConnections,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeVpcPeeringConnectionsResult');
    helper.add(
      'vpcPeeringConnections',
      vpcPeeringConnections,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeVpcPeeringConnectionsResultEc2QuerySerializer extends _i4
    .StructuredSmithySerializer<DescribeVpcPeeringConnectionsResult> {
  const DescribeVpcPeeringConnectionsResultEc2QuerySerializer()
      : super('DescribeVpcPeeringConnectionsResult');

  @override
  Iterable<Type> get types => const [
        DescribeVpcPeeringConnectionsResult,
        _$DescribeVpcPeeringConnectionsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeVpcPeeringConnectionsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeVpcPeeringConnectionsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'vpcPeeringConnectionSet':
          if (value != null) {
            result.vpcPeeringConnections
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.VpcPeeringConnection)],
              ),
            ) as _i3.BuiltList<_i2.VpcPeeringConnection>));
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
    final payload = (object as DescribeVpcPeeringConnectionsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeVpcPeeringConnectionsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.vpcPeeringConnections != null) {
      result
        ..add(const _i4.XmlElementName('VpcPeeringConnectionSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.vpcPeeringConnections!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.VpcPeeringConnection)],
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
