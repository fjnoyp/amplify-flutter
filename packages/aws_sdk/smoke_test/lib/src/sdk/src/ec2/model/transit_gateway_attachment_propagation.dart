// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.transit_gateway_attachment_propagation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_propagation_state.dart'
    as _i2;

part 'transit_gateway_attachment_propagation.g.dart';

/// Describes a propagation route table.
abstract class TransitGatewayAttachmentPropagation
    with
        _i1.AWSEquatable<TransitGatewayAttachmentPropagation>
    implements
        Built<TransitGatewayAttachmentPropagation,
            TransitGatewayAttachmentPropagationBuilder> {
  /// Describes a propagation route table.
  factory TransitGatewayAttachmentPropagation({
    String? transitGatewayRouteTableId,
    _i2.TransitGatewayPropagationState? state,
  }) {
    return _$TransitGatewayAttachmentPropagation._(
      transitGatewayRouteTableId: transitGatewayRouteTableId,
      state: state,
    );
  }

  /// Describes a propagation route table.
  factory TransitGatewayAttachmentPropagation.build(
          [void Function(TransitGatewayAttachmentPropagationBuilder) updates]) =
      _$TransitGatewayAttachmentPropagation;

  const TransitGatewayAttachmentPropagation._();

  static const List<_i3.SmithySerializer> serializers = [
    TransitGatewayAttachmentPropagationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TransitGatewayAttachmentPropagationBuilder b) {}

  /// The ID of the propagation route table.
  String? get transitGatewayRouteTableId;

  /// The state of the propagation route table.
  _i2.TransitGatewayPropagationState? get state;
  @override
  List<Object?> get props => [
        transitGatewayRouteTableId,
        state,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('TransitGatewayAttachmentPropagation');
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

class TransitGatewayAttachmentPropagationEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<TransitGatewayAttachmentPropagation> {
  const TransitGatewayAttachmentPropagationEc2QuerySerializer()
      : super('TransitGatewayAttachmentPropagation');

  @override
  Iterable<Type> get types => const [
        TransitGatewayAttachmentPropagation,
        _$TransitGatewayAttachmentPropagation,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayAttachmentPropagation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayAttachmentPropagationBuilder();
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
              specifiedType: const FullType(_i2.TransitGatewayPropagationState),
            ) as _i2.TransitGatewayPropagationState);
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
    final payload = (object as TransitGatewayAttachmentPropagation);
    final result = <Object?>[
      const _i3.XmlElementName(
        'TransitGatewayAttachmentPropagationResponse',
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
              const FullType.nullable(_i2.TransitGatewayPropagationState),
        ));
    }
    return result;
  }
}
