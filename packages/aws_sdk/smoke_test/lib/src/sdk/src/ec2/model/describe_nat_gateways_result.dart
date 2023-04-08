// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_nat_gateways_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/nat_gateway.dart' as _i2;

part 'describe_nat_gateways_result.g.dart';

abstract class DescribeNatGatewaysResult
    with _i1.AWSEquatable<DescribeNatGatewaysResult>
    implements
        Built<DescribeNatGatewaysResult, DescribeNatGatewaysResultBuilder> {
  factory DescribeNatGatewaysResult({
    List<_i2.NatGateway>? natGateways,
    String? nextToken,
  }) {
    return _$DescribeNatGatewaysResult._(
      natGateways: natGateways == null ? null : _i3.BuiltList(natGateways),
      nextToken: nextToken,
    );
  }

  factory DescribeNatGatewaysResult.build(
          [void Function(DescribeNatGatewaysResultBuilder) updates]) =
      _$DescribeNatGatewaysResult;

  const DescribeNatGatewaysResult._();

  /// Constructs a [DescribeNatGatewaysResult] from a [payload] and [response].
  factory DescribeNatGatewaysResult.fromResponse(
    DescribeNatGatewaysResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeNatGatewaysResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeNatGatewaysResultBuilder b) {}

  /// Information about the NAT gateways.
  _i3.BuiltList<_i2.NatGateway>? get natGateways;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        natGateways,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeNatGatewaysResult');
    helper.add(
      'natGateways',
      natGateways,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeNatGatewaysResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeNatGatewaysResult> {
  const DescribeNatGatewaysResultEc2QuerySerializer()
      : super('DescribeNatGatewaysResult');

  @override
  Iterable<Type> get types => const [
        DescribeNatGatewaysResult,
        _$DescribeNatGatewaysResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeNatGatewaysResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeNatGatewaysResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'natGatewaySet':
          if (value != null) {
            result.natGateways.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.NatGateway)],
              ),
            ) as _i3.BuiltList<_i2.NatGateway>));
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
    final payload = (object as DescribeNatGatewaysResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeNatGatewaysResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.natGateways != null) {
      result
        ..add(const _i4.XmlElementName('NatGatewaySet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.natGateways!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.NatGateway)],
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
