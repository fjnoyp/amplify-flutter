// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.accept_transit_gateway_multicast_domain_associations_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_multicast_domain_associations.dart'
    as _i2;

part 'accept_transit_gateway_multicast_domain_associations_result.g.dart';

abstract class AcceptTransitGatewayMulticastDomainAssociationsResult
    with
        _i1.AWSEquatable<AcceptTransitGatewayMulticastDomainAssociationsResult>
    implements
        Built<AcceptTransitGatewayMulticastDomainAssociationsResult,
            AcceptTransitGatewayMulticastDomainAssociationsResultBuilder> {
  factory AcceptTransitGatewayMulticastDomainAssociationsResult(
      {_i2.TransitGatewayMulticastDomainAssociations? associations}) {
    return _$AcceptTransitGatewayMulticastDomainAssociationsResult._(
        associations: associations);
  }

  factory AcceptTransitGatewayMulticastDomainAssociationsResult.build(
      [void Function(
              AcceptTransitGatewayMulticastDomainAssociationsResultBuilder)
          updates]) = _$AcceptTransitGatewayMulticastDomainAssociationsResult;

  const AcceptTransitGatewayMulticastDomainAssociationsResult._();

  /// Constructs a [AcceptTransitGatewayMulticastDomainAssociationsResult] from a [payload] and [response].
  factory AcceptTransitGatewayMulticastDomainAssociationsResult.fromResponse(
    AcceptTransitGatewayMulticastDomainAssociationsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    AcceptTransitGatewayMulticastDomainAssociationsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      AcceptTransitGatewayMulticastDomainAssociationsResultBuilder b) {}

  /// Describes the multicast domain associations.
  _i2.TransitGatewayMulticastDomainAssociations? get associations;
  @override
  List<Object?> get props => [associations];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'AcceptTransitGatewayMulticastDomainAssociationsResult');
    helper.add(
      'associations',
      associations,
    );
    return helper.toString();
  }
}

class AcceptTransitGatewayMulticastDomainAssociationsResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<
        AcceptTransitGatewayMulticastDomainAssociationsResult> {
  const AcceptTransitGatewayMulticastDomainAssociationsResultEc2QuerySerializer()
      : super('AcceptTransitGatewayMulticastDomainAssociationsResult');

  @override
  Iterable<Type> get types => const [
        AcceptTransitGatewayMulticastDomainAssociationsResult,
        _$AcceptTransitGatewayMulticastDomainAssociationsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AcceptTransitGatewayMulticastDomainAssociationsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        AcceptTransitGatewayMulticastDomainAssociationsResultBuilder();
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
        (object as AcceptTransitGatewayMulticastDomainAssociationsResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'AcceptTransitGatewayMulticastDomainAssociationsResultResponse',
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
