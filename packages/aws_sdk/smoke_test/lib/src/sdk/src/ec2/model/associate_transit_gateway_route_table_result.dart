// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.associate_transit_gateway_route_table_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_association.dart'
    as _i2;

part 'associate_transit_gateway_route_table_result.g.dart';

abstract class AssociateTransitGatewayRouteTableResult
    with
        _i1.AWSEquatable<AssociateTransitGatewayRouteTableResult>
    implements
        Built<AssociateTransitGatewayRouteTableResult,
            AssociateTransitGatewayRouteTableResultBuilder> {
  factory AssociateTransitGatewayRouteTableResult(
      {_i2.TransitGatewayAssociation? association}) {
    return _$AssociateTransitGatewayRouteTableResult._(
        association: association);
  }

  factory AssociateTransitGatewayRouteTableResult.build(
      [void Function(AssociateTransitGatewayRouteTableResultBuilder)
          updates]) = _$AssociateTransitGatewayRouteTableResult;

  const AssociateTransitGatewayRouteTableResult._();

  /// Constructs a [AssociateTransitGatewayRouteTableResult] from a [payload] and [response].
  factory AssociateTransitGatewayRouteTableResult.fromResponse(
    AssociateTransitGatewayRouteTableResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    AssociateTransitGatewayRouteTableResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AssociateTransitGatewayRouteTableResultBuilder b) {}

  /// The ID of the association.
  _i2.TransitGatewayAssociation? get association;
  @override
  List<Object?> get props => [association];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('AssociateTransitGatewayRouteTableResult');
    helper.add(
      'association',
      association,
    );
    return helper.toString();
  }
}

class AssociateTransitGatewayRouteTableResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<AssociateTransitGatewayRouteTableResult> {
  const AssociateTransitGatewayRouteTableResultEc2QuerySerializer()
      : super('AssociateTransitGatewayRouteTableResult');

  @override
  Iterable<Type> get types => const [
        AssociateTransitGatewayRouteTableResult,
        _$AssociateTransitGatewayRouteTableResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AssociateTransitGatewayRouteTableResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssociateTransitGatewayRouteTableResultBuilder();
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
    final payload = (object as AssociateTransitGatewayRouteTableResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'AssociateTransitGatewayRouteTableResultResponse',
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
