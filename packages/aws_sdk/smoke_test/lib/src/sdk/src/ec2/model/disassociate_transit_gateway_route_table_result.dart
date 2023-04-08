// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.disassociate_transit_gateway_route_table_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_association.dart'
    as _i2;

part 'disassociate_transit_gateway_route_table_result.g.dart';

abstract class DisassociateTransitGatewayRouteTableResult
    with
        _i1.AWSEquatable<DisassociateTransitGatewayRouteTableResult>
    implements
        Built<DisassociateTransitGatewayRouteTableResult,
            DisassociateTransitGatewayRouteTableResultBuilder> {
  factory DisassociateTransitGatewayRouteTableResult(
      {_i2.TransitGatewayAssociation? association}) {
    return _$DisassociateTransitGatewayRouteTableResult._(
        association: association);
  }

  factory DisassociateTransitGatewayRouteTableResult.build(
      [void Function(DisassociateTransitGatewayRouteTableResultBuilder)
          updates]) = _$DisassociateTransitGatewayRouteTableResult;

  const DisassociateTransitGatewayRouteTableResult._();

  /// Constructs a [DisassociateTransitGatewayRouteTableResult] from a [payload] and [response].
  factory DisassociateTransitGatewayRouteTableResult.fromResponse(
    DisassociateTransitGatewayRouteTableResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    DisassociateTransitGatewayRouteTableResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DisassociateTransitGatewayRouteTableResultBuilder b) {}

  /// Information about the association.
  _i2.TransitGatewayAssociation? get association;
  @override
  List<Object?> get props => [association];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DisassociateTransitGatewayRouteTableResult');
    helper.add(
      'association',
      association,
    );
    return helper.toString();
  }
}

class DisassociateTransitGatewayRouteTableResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<DisassociateTransitGatewayRouteTableResult> {
  const DisassociateTransitGatewayRouteTableResultEc2QuerySerializer()
      : super('DisassociateTransitGatewayRouteTableResult');

  @override
  Iterable<Type> get types => const [
        DisassociateTransitGatewayRouteTableResult,
        _$DisassociateTransitGatewayRouteTableResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DisassociateTransitGatewayRouteTableResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DisassociateTransitGatewayRouteTableResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'association':
          if (value != null) {
            result.association.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.TransitGatewayAssociation),
            ) as _i2.TransitGatewayAssociation));
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
    final payload = (object as DisassociateTransitGatewayRouteTableResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'DisassociateTransitGatewayRouteTableResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.association != null) {
      result
        ..add(const _i3.XmlElementName('Association'))
        ..add(serializers.serialize(
          payload.association!,
          specifiedType: const FullType(_i2.TransitGatewayAssociation),
        ));
    }
    return result;
  }
}
