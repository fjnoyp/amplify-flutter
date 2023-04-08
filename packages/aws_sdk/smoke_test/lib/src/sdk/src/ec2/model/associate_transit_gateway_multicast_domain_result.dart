// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.associate_transit_gateway_multicast_domain_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_multicast_domain_associations.dart'
    as _i2;

part 'associate_transit_gateway_multicast_domain_result.g.dart';

abstract class AssociateTransitGatewayMulticastDomainResult
    with
        _i1.AWSEquatable<AssociateTransitGatewayMulticastDomainResult>
    implements
        Built<AssociateTransitGatewayMulticastDomainResult,
            AssociateTransitGatewayMulticastDomainResultBuilder> {
  factory AssociateTransitGatewayMulticastDomainResult(
      {_i2.TransitGatewayMulticastDomainAssociations? associations}) {
    return _$AssociateTransitGatewayMulticastDomainResult._(
        associations: associations);
  }

  factory AssociateTransitGatewayMulticastDomainResult.build(
      [void Function(AssociateTransitGatewayMulticastDomainResultBuilder)
          updates]) = _$AssociateTransitGatewayMulticastDomainResult;

  const AssociateTransitGatewayMulticastDomainResult._();

  /// Constructs a [AssociateTransitGatewayMulticastDomainResult] from a [payload] and [response].
  factory AssociateTransitGatewayMulticastDomainResult.fromResponse(
    AssociateTransitGatewayMulticastDomainResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    AssociateTransitGatewayMulticastDomainResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AssociateTransitGatewayMulticastDomainResultBuilder b) {}

  /// Information about the transit gateway multicast domain associations.
  _i2.TransitGatewayMulticastDomainAssociations? get associations;
  @override
  List<Object?> get props => [associations];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'AssociateTransitGatewayMulticastDomainResult');
    helper.add(
      'associations',
      associations,
    );
    return helper.toString();
  }
}

class AssociateTransitGatewayMulticastDomainResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<AssociateTransitGatewayMulticastDomainResult> {
  const AssociateTransitGatewayMulticastDomainResultEc2QuerySerializer()
      : super('AssociateTransitGatewayMulticastDomainResult');

  @override
  Iterable<Type> get types => const [
        AssociateTransitGatewayMulticastDomainResult,
        _$AssociateTransitGatewayMulticastDomainResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AssociateTransitGatewayMulticastDomainResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssociateTransitGatewayMulticastDomainResultBuilder();
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
    final payload = (object as AssociateTransitGatewayMulticastDomainResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'AssociateTransitGatewayMulticastDomainResultResponse',
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
