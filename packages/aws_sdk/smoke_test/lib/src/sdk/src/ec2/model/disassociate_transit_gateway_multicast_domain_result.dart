// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.disassociate_transit_gateway_multicast_domain_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_multicast_domain_associations.dart'
    as _i2;

part 'disassociate_transit_gateway_multicast_domain_result.g.dart';

abstract class DisassociateTransitGatewayMulticastDomainResult
    with
        _i1.AWSEquatable<DisassociateTransitGatewayMulticastDomainResult>
    implements
        Built<DisassociateTransitGatewayMulticastDomainResult,
            DisassociateTransitGatewayMulticastDomainResultBuilder> {
  factory DisassociateTransitGatewayMulticastDomainResult(
      {_i2.TransitGatewayMulticastDomainAssociations? associations}) {
    return _$DisassociateTransitGatewayMulticastDomainResult._(
        associations: associations);
  }

  factory DisassociateTransitGatewayMulticastDomainResult.build(
      [void Function(DisassociateTransitGatewayMulticastDomainResultBuilder)
          updates]) = _$DisassociateTransitGatewayMulticastDomainResult;

  const DisassociateTransitGatewayMulticastDomainResult._();

  /// Constructs a [DisassociateTransitGatewayMulticastDomainResult] from a [payload] and [response].
  factory DisassociateTransitGatewayMulticastDomainResult.fromResponse(
    DisassociateTransitGatewayMulticastDomainResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    DisassociateTransitGatewayMulticastDomainResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DisassociateTransitGatewayMulticastDomainResultBuilder b) {}

  /// Information about the association.
  _i2.TransitGatewayMulticastDomainAssociations? get associations;
  @override
  List<Object?> get props => [associations];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DisassociateTransitGatewayMulticastDomainResult');
    helper.add(
      'associations',
      associations,
    );
    return helper.toString();
  }
}

class DisassociateTransitGatewayMulticastDomainResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<
        DisassociateTransitGatewayMulticastDomainResult> {
  const DisassociateTransitGatewayMulticastDomainResultEc2QuerySerializer()
      : super('DisassociateTransitGatewayMulticastDomainResult');

  @override
  Iterable<Type> get types => const [
        DisassociateTransitGatewayMulticastDomainResult,
        _$DisassociateTransitGatewayMulticastDomainResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DisassociateTransitGatewayMulticastDomainResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DisassociateTransitGatewayMulticastDomainResultBuilder();
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
    final payload = (object as DisassociateTransitGatewayMulticastDomainResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'DisassociateTransitGatewayMulticastDomainResultResponse',
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
