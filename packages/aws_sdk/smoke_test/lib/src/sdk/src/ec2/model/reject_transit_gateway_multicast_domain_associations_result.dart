// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.reject_transit_gateway_multicast_domain_associations_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_multicast_domain_associations.dart'
    as _i2;

part 'reject_transit_gateway_multicast_domain_associations_result.g.dart';

abstract class RejectTransitGatewayMulticastDomainAssociationsResult
    with
        _i1.AWSEquatable<RejectTransitGatewayMulticastDomainAssociationsResult>
    implements
        Built<RejectTransitGatewayMulticastDomainAssociationsResult,
            RejectTransitGatewayMulticastDomainAssociationsResultBuilder> {
  factory RejectTransitGatewayMulticastDomainAssociationsResult(
      {_i2.TransitGatewayMulticastDomainAssociations? associations}) {
    return _$RejectTransitGatewayMulticastDomainAssociationsResult._(
        associations: associations);
  }

  factory RejectTransitGatewayMulticastDomainAssociationsResult.build(
      [void Function(
              RejectTransitGatewayMulticastDomainAssociationsResultBuilder)
          updates]) = _$RejectTransitGatewayMulticastDomainAssociationsResult;

  const RejectTransitGatewayMulticastDomainAssociationsResult._();

  /// Constructs a [RejectTransitGatewayMulticastDomainAssociationsResult] from a [payload] and [response].
  factory RejectTransitGatewayMulticastDomainAssociationsResult.fromResponse(
    RejectTransitGatewayMulticastDomainAssociationsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    RejectTransitGatewayMulticastDomainAssociationsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      RejectTransitGatewayMulticastDomainAssociationsResultBuilder b) {}

  /// Describes the multicast domain associations.
  _i2.TransitGatewayMulticastDomainAssociations? get associations;
  @override
  List<Object?> get props => [associations];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'RejectTransitGatewayMulticastDomainAssociationsResult');
    helper.add(
      'associations',
      associations,
    );
    return helper.toString();
  }
}

class RejectTransitGatewayMulticastDomainAssociationsResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<
        RejectTransitGatewayMulticastDomainAssociationsResult> {
  const RejectTransitGatewayMulticastDomainAssociationsResultEc2QuerySerializer()
      : super('RejectTransitGatewayMulticastDomainAssociationsResult');

  @override
  Iterable<Type> get types => const [
        RejectTransitGatewayMulticastDomainAssociationsResult,
        _$RejectTransitGatewayMulticastDomainAssociationsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RejectTransitGatewayMulticastDomainAssociationsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        RejectTransitGatewayMulticastDomainAssociationsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'associations':
          if (value != null) {
            result.associations.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i2.TransitGatewayMulticastDomainAssociations),
            ) as _i2.TransitGatewayMulticastDomainAssociations));
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
        (object as RejectTransitGatewayMulticastDomainAssociationsResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'RejectTransitGatewayMulticastDomainAssociationsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.associations != null) {
      result
        ..add(const _i3.XmlElementName('Associations'))
        ..add(serializers.serialize(
          payload.associations!,
          specifiedType:
              const FullType(_i2.TransitGatewayMulticastDomainAssociations),
        ));
    }
    return result;
  }
}
