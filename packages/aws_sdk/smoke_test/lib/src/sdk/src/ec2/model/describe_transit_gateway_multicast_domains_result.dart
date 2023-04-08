// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_transit_gateway_multicast_domains_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_multicast_domain.dart'
    as _i2;

part 'describe_transit_gateway_multicast_domains_result.g.dart';

abstract class DescribeTransitGatewayMulticastDomainsResult
    with
        _i1.AWSEquatable<DescribeTransitGatewayMulticastDomainsResult>
    implements
        Built<DescribeTransitGatewayMulticastDomainsResult,
            DescribeTransitGatewayMulticastDomainsResultBuilder> {
  factory DescribeTransitGatewayMulticastDomainsResult({
    List<_i2.TransitGatewayMulticastDomain>? transitGatewayMulticastDomains,
    String? nextToken,
  }) {
    return _$DescribeTransitGatewayMulticastDomainsResult._(
      transitGatewayMulticastDomains: transitGatewayMulticastDomains == null
          ? null
          : _i3.BuiltList(transitGatewayMulticastDomains),
      nextToken: nextToken,
    );
  }

  factory DescribeTransitGatewayMulticastDomainsResult.build(
      [void Function(DescribeTransitGatewayMulticastDomainsResultBuilder)
          updates]) = _$DescribeTransitGatewayMulticastDomainsResult;

  const DescribeTransitGatewayMulticastDomainsResult._();

  /// Constructs a [DescribeTransitGatewayMulticastDomainsResult] from a [payload] and [response].
  factory DescribeTransitGatewayMulticastDomainsResult.fromResponse(
    DescribeTransitGatewayMulticastDomainsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeTransitGatewayMulticastDomainsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeTransitGatewayMulticastDomainsResultBuilder b) {}

  /// Information about the transit gateway multicast domains.
  _i3.BuiltList<_i2.TransitGatewayMulticastDomain>?
      get transitGatewayMulticastDomains;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        transitGatewayMulticastDomains,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeTransitGatewayMulticastDomainsResult');
    helper.add(
      'transitGatewayMulticastDomains',
      transitGatewayMulticastDomains,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeTransitGatewayMulticastDomainsResultEc2QuerySerializer extends _i4
    .StructuredSmithySerializer<DescribeTransitGatewayMulticastDomainsResult> {
  const DescribeTransitGatewayMulticastDomainsResultEc2QuerySerializer()
      : super('DescribeTransitGatewayMulticastDomainsResult');

  @override
  Iterable<Type> get types => const [
        DescribeTransitGatewayMulticastDomainsResult,
        _$DescribeTransitGatewayMulticastDomainsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeTransitGatewayMulticastDomainsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeTransitGatewayMulticastDomainsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'transitGatewayMulticastDomains':
          if (value != null) {
            result.transitGatewayMulticastDomains
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.TransitGatewayMulticastDomain)],
              ),
            ) as _i3.BuiltList<_i2.TransitGatewayMulticastDomain>));
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
    final payload = (object as DescribeTransitGatewayMulticastDomainsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeTransitGatewayMulticastDomainsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.transitGatewayMulticastDomains != null) {
      result
        ..add(const _i4.XmlElementName('TransitGatewayMulticastDomains'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.transitGatewayMulticastDomains!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.TransitGatewayMulticastDomain)],
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
