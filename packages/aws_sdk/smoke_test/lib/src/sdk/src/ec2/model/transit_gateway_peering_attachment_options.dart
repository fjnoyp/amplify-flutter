// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.transit_gateway_peering_attachment_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/dynamic_routing_value.dart'
    as _i2;

part 'transit_gateway_peering_attachment_options.g.dart';

/// Describes dynamic routing for the transit gateway peering attachment.
abstract class TransitGatewayPeeringAttachmentOptions
    with
        _i1.AWSEquatable<TransitGatewayPeeringAttachmentOptions>
    implements
        Built<TransitGatewayPeeringAttachmentOptions,
            TransitGatewayPeeringAttachmentOptionsBuilder> {
  /// Describes dynamic routing for the transit gateway peering attachment.
  factory TransitGatewayPeeringAttachmentOptions(
      {_i2.DynamicRoutingValue? dynamicRouting}) {
    return _$TransitGatewayPeeringAttachmentOptions._(
        dynamicRouting: dynamicRouting);
  }

  /// Describes dynamic routing for the transit gateway peering attachment.
  factory TransitGatewayPeeringAttachmentOptions.build(
      [void Function(TransitGatewayPeeringAttachmentOptionsBuilder)
          updates]) = _$TransitGatewayPeeringAttachmentOptions;

  const TransitGatewayPeeringAttachmentOptions._();

  static const List<_i3.SmithySerializer> serializers = [
    TransitGatewayPeeringAttachmentOptionsEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TransitGatewayPeeringAttachmentOptionsBuilder b) {}

  /// Describes whether dynamic routing is enabled or disabled for the transit gateway peering attachment.
  _i2.DynamicRoutingValue? get dynamicRouting;
  @override
  List<Object?> get props => [dynamicRouting];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('TransitGatewayPeeringAttachmentOptions');
    helper.add(
      'dynamicRouting',
      dynamicRouting,
    );
    return helper.toString();
  }
}

class TransitGatewayPeeringAttachmentOptionsEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<TransitGatewayPeeringAttachmentOptions> {
  const TransitGatewayPeeringAttachmentOptionsEc2QuerySerializer()
      : super('TransitGatewayPeeringAttachmentOptions');

  @override
  Iterable<Type> get types => const [
        TransitGatewayPeeringAttachmentOptions,
        _$TransitGatewayPeeringAttachmentOptions,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayPeeringAttachmentOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayPeeringAttachmentOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'dynamicRouting':
          if (value != null) {
            result.dynamicRouting = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.DynamicRoutingValue),
            ) as _i2.DynamicRoutingValue);
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
    final payload = (object as TransitGatewayPeeringAttachmentOptions);
    final result = <Object?>[
      const _i3.XmlElementName(
        'TransitGatewayPeeringAttachmentOptionsResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.dynamicRouting != null) {
      result
        ..add(const _i3.XmlElementName('DynamicRouting'))
        ..add(serializers.serialize(
          payload.dynamicRouting!,
          specifiedType: const FullType.nullable(_i2.DynamicRoutingValue),
        ));
    }
    return result;
  }
}
