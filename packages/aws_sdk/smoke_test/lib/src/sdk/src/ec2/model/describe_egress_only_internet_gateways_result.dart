// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_egress_only_internet_gateways_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/egress_only_internet_gateway.dart'
    as _i2;

part 'describe_egress_only_internet_gateways_result.g.dart';

abstract class DescribeEgressOnlyInternetGatewaysResult
    with
        _i1.AWSEquatable<DescribeEgressOnlyInternetGatewaysResult>
    implements
        Built<DescribeEgressOnlyInternetGatewaysResult,
            DescribeEgressOnlyInternetGatewaysResultBuilder> {
  factory DescribeEgressOnlyInternetGatewaysResult({
    List<_i2.EgressOnlyInternetGateway>? egressOnlyInternetGateways,
    String? nextToken,
  }) {
    return _$DescribeEgressOnlyInternetGatewaysResult._(
      egressOnlyInternetGateways: egressOnlyInternetGateways == null
          ? null
          : _i3.BuiltList(egressOnlyInternetGateways),
      nextToken: nextToken,
    );
  }

  factory DescribeEgressOnlyInternetGatewaysResult.build(
      [void Function(DescribeEgressOnlyInternetGatewaysResultBuilder)
          updates]) = _$DescribeEgressOnlyInternetGatewaysResult;

  const DescribeEgressOnlyInternetGatewaysResult._();

  /// Constructs a [DescribeEgressOnlyInternetGatewaysResult] from a [payload] and [response].
  factory DescribeEgressOnlyInternetGatewaysResult.fromResponse(
    DescribeEgressOnlyInternetGatewaysResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeEgressOnlyInternetGatewaysResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeEgressOnlyInternetGatewaysResultBuilder b) {}

  /// Information about the egress-only internet gateways.
  _i3.BuiltList<_i2.EgressOnlyInternetGateway>? get egressOnlyInternetGateways;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        egressOnlyInternetGateways,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeEgressOnlyInternetGatewaysResult');
    helper.add(
      'egressOnlyInternetGateways',
      egressOnlyInternetGateways,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeEgressOnlyInternetGatewaysResultEc2QuerySerializer extends _i4
    .StructuredSmithySerializer<DescribeEgressOnlyInternetGatewaysResult> {
  const DescribeEgressOnlyInternetGatewaysResultEc2QuerySerializer()
      : super('DescribeEgressOnlyInternetGatewaysResult');

  @override
  Iterable<Type> get types => const [
        DescribeEgressOnlyInternetGatewaysResult,
        _$DescribeEgressOnlyInternetGatewaysResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeEgressOnlyInternetGatewaysResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeEgressOnlyInternetGatewaysResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'egressOnlyInternetGatewaySet':
          if (value != null) {
            result.egressOnlyInternetGateways
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.EgressOnlyInternetGateway)],
              ),
            ) as _i3.BuiltList<_i2.EgressOnlyInternetGateway>));
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
    final payload = (object as DescribeEgressOnlyInternetGatewaysResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeEgressOnlyInternetGatewaysResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.egressOnlyInternetGateways != null) {
      result
        ..add(const _i4.XmlElementName('EgressOnlyInternetGatewaySet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.egressOnlyInternetGateways!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.EgressOnlyInternetGateway)],
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
