// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.get_transit_gateway_multicast_domain_associations_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_multicast_domain_association.dart'
    as _i2;

part 'get_transit_gateway_multicast_domain_associations_result.g.dart';

abstract class GetTransitGatewayMulticastDomainAssociationsResult
    with
        _i1.AWSEquatable<GetTransitGatewayMulticastDomainAssociationsResult>
    implements
        Built<GetTransitGatewayMulticastDomainAssociationsResult,
            GetTransitGatewayMulticastDomainAssociationsResultBuilder> {
  factory GetTransitGatewayMulticastDomainAssociationsResult({
    List<_i2.TransitGatewayMulticastDomainAssociation>?
        multicastDomainAssociations,
    String? nextToken,
  }) {
    return _$GetTransitGatewayMulticastDomainAssociationsResult._(
      multicastDomainAssociations: multicastDomainAssociations == null
          ? null
          : _i3.BuiltList(multicastDomainAssociations),
      nextToken: nextToken,
    );
  }

  factory GetTransitGatewayMulticastDomainAssociationsResult.build(
      [void Function(GetTransitGatewayMulticastDomainAssociationsResultBuilder)
          updates]) = _$GetTransitGatewayMulticastDomainAssociationsResult;

  const GetTransitGatewayMulticastDomainAssociationsResult._();

  /// Constructs a [GetTransitGatewayMulticastDomainAssociationsResult] from a [payload] and [response].
  factory GetTransitGatewayMulticastDomainAssociationsResult.fromResponse(
    GetTransitGatewayMulticastDomainAssociationsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    GetTransitGatewayMulticastDomainAssociationsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      GetTransitGatewayMulticastDomainAssociationsResultBuilder b) {}

  /// Information about the multicast domain associations.
  _i3.BuiltList<_i2.TransitGatewayMulticastDomainAssociation>?
      get multicastDomainAssociations;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        multicastDomainAssociations,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GetTransitGatewayMulticastDomainAssociationsResult');
    helper.add(
      'multicastDomainAssociations',
      multicastDomainAssociations,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class GetTransitGatewayMulticastDomainAssociationsResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<
        GetTransitGatewayMulticastDomainAssociationsResult> {
  const GetTransitGatewayMulticastDomainAssociationsResultEc2QuerySerializer()
      : super('GetTransitGatewayMulticastDomainAssociationsResult');

  @override
  Iterable<Type> get types => const [
        GetTransitGatewayMulticastDomainAssociationsResult,
        _$GetTransitGatewayMulticastDomainAssociationsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetTransitGatewayMulticastDomainAssociationsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetTransitGatewayMulticastDomainAssociationsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'multicastDomainAssociations':
          if (value != null) {
            result.multicastDomainAssociations
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.TransitGatewayMulticastDomainAssociation)],
              ),
            ) as _i3.BuiltList<_i2.TransitGatewayMulticastDomainAssociation>));
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
    final payload =
        (object as GetTransitGatewayMulticastDomainAssociationsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'GetTransitGatewayMulticastDomainAssociationsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.multicastDomainAssociations != null) {
      result
        ..add(const _i4.XmlElementName('MulticastDomainAssociations'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.multicastDomainAssociations!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.TransitGatewayMulticastDomainAssociation)],
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
