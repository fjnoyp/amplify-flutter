// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_carrier_gateways_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/carrier_gateway.dart' as _i2;

part 'describe_carrier_gateways_result.g.dart';

abstract class DescribeCarrierGatewaysResult
    with
        _i1.AWSEquatable<DescribeCarrierGatewaysResult>
    implements
        Built<DescribeCarrierGatewaysResult,
            DescribeCarrierGatewaysResultBuilder> {
  factory DescribeCarrierGatewaysResult({
    List<_i2.CarrierGateway>? carrierGateways,
    String? nextToken,
  }) {
    return _$DescribeCarrierGatewaysResult._(
      carrierGateways:
          carrierGateways == null ? null : _i3.BuiltList(carrierGateways),
      nextToken: nextToken,
    );
  }

  factory DescribeCarrierGatewaysResult.build(
          [void Function(DescribeCarrierGatewaysResultBuilder) updates]) =
      _$DescribeCarrierGatewaysResult;

  const DescribeCarrierGatewaysResult._();

  /// Constructs a [DescribeCarrierGatewaysResult] from a [payload] and [response].
  factory DescribeCarrierGatewaysResult.fromResponse(
    DescribeCarrierGatewaysResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeCarrierGatewaysResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeCarrierGatewaysResultBuilder b) {}

  /// Information about the carrier gateway.
  _i3.BuiltList<_i2.CarrierGateway>? get carrierGateways;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        carrierGateways,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeCarrierGatewaysResult');
    helper.add(
      'carrierGateways',
      carrierGateways,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeCarrierGatewaysResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeCarrierGatewaysResult> {
  const DescribeCarrierGatewaysResultEc2QuerySerializer()
      : super('DescribeCarrierGatewaysResult');

  @override
  Iterable<Type> get types => const [
        DescribeCarrierGatewaysResult,
        _$DescribeCarrierGatewaysResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeCarrierGatewaysResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeCarrierGatewaysResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'carrierGatewaySet':
          if (value != null) {
            result.carrierGateways.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.CarrierGateway)],
              ),
            ) as _i3.BuiltList<_i2.CarrierGateway>));
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
    final payload = (object as DescribeCarrierGatewaysResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeCarrierGatewaysResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.carrierGateways != null) {
      result
        ..add(const _i4.XmlElementName('CarrierGatewaySet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.carrierGateways!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.CarrierGateway)],
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
