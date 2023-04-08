// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.transit_gateway_attachment_association; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_association_state.dart'
    as _i2;

part 'transit_gateway_attachment_association.g.dart';

/// Describes an association.
abstract class TransitGatewayAttachmentAssociation
    with
        _i1.AWSEquatable<TransitGatewayAttachmentAssociation>
    implements
        Built<TransitGatewayAttachmentAssociation,
            TransitGatewayAttachmentAssociationBuilder> {
  /// Describes an association.
  factory TransitGatewayAttachmentAssociation({
    String? transitGatewayRouteTableId,
    _i2.TransitGatewayAssociationState? state,
  }) {
    return _$TransitGatewayAttachmentAssociation._(
      transitGatewayRouteTableId: transitGatewayRouteTableId,
      state: state,
    );
  }

  /// Describes an association.
  factory TransitGatewayAttachmentAssociation.build(
          [void Function(TransitGatewayAttachmentAssociationBuilder) updates]) =
      _$TransitGatewayAttachmentAssociation;

  const TransitGatewayAttachmentAssociation._();

  static const List<_i3.SmithySerializer> serializers = [
    TransitGatewayAttachmentAssociationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TransitGatewayAttachmentAssociationBuilder b) {}

  /// The ID of the route table for the transit gateway.
  String? get transitGatewayRouteTableId;

  /// The state of the association.
  _i2.TransitGatewayAssociationState? get state;
  @override
  List<Object?> get props => [
        transitGatewayRouteTableId,
        state,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('TransitGatewayAttachmentAssociation');
    helper.add(
      'transitGatewayRouteTableId',
      transitGatewayRouteTableId,
    );
    helper.add(
      'state',
      state,
    );
    return helper.toString();
  }
}

class TransitGatewayAttachmentAssociationEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<TransitGatewayAttachmentAssociation> {
  const TransitGatewayAttachmentAssociationEc2QuerySerializer()
      : super('TransitGatewayAttachmentAssociation');

  @override
  Iterable<Type> get types => const [
        TransitGatewayAttachmentAssociation,
        _$TransitGatewayAttachmentAssociation,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayAttachmentAssociation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayAttachmentAssociationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'transitGatewayRouteTableId':
          if (value != null) {
            result.transitGatewayRouteTableId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'state':
          if (value != null) {
            result.state = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.TransitGatewayAssociationState),
            ) as _i2.TransitGatewayAssociationState);
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
    final payload = (object as TransitGatewayAttachmentAssociation);
    final result = <Object?>[
      const _i3.XmlElementName(
        'TransitGatewayAttachmentAssociationResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.transitGatewayRouteTableId != null) {
      result
        ..add(const _i3.XmlElementName('TransitGatewayRouteTableId'))
        ..add(serializers.serialize(
          payload.transitGatewayRouteTableId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.state != null) {
      result
        ..add(const _i3.XmlElementName('State'))
        ..add(serializers.serialize(
          payload.state!,
          specifiedType:
              const FullType.nullable(_i2.TransitGatewayAssociationState),
        ));
    }
    return result;
  }
}
