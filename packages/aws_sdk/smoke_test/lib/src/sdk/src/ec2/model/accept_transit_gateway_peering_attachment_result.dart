// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.accept_transit_gateway_peering_attachment_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_peering_attachment.dart'
    as _i2;

part 'accept_transit_gateway_peering_attachment_result.g.dart';

abstract class AcceptTransitGatewayPeeringAttachmentResult
    with
        _i1.AWSEquatable<AcceptTransitGatewayPeeringAttachmentResult>
    implements
        Built<AcceptTransitGatewayPeeringAttachmentResult,
            AcceptTransitGatewayPeeringAttachmentResultBuilder> {
  factory AcceptTransitGatewayPeeringAttachmentResult(
      {_i2.TransitGatewayPeeringAttachment? transitGatewayPeeringAttachment}) {
    return _$AcceptTransitGatewayPeeringAttachmentResult._(
        transitGatewayPeeringAttachment: transitGatewayPeeringAttachment);
  }

  factory AcceptTransitGatewayPeeringAttachmentResult.build(
      [void Function(AcceptTransitGatewayPeeringAttachmentResultBuilder)
          updates]) = _$AcceptTransitGatewayPeeringAttachmentResult;

  const AcceptTransitGatewayPeeringAttachmentResult._();

  /// Constructs a [AcceptTransitGatewayPeeringAttachmentResult] from a [payload] and [response].
  factory AcceptTransitGatewayPeeringAttachmentResult.fromResponse(
    AcceptTransitGatewayPeeringAttachmentResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    AcceptTransitGatewayPeeringAttachmentResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AcceptTransitGatewayPeeringAttachmentResultBuilder b) {}

  /// The transit gateway peering attachment.
  _i2.TransitGatewayPeeringAttachment? get transitGatewayPeeringAttachment;
  @override
  List<Object?> get props => [transitGatewayPeeringAttachment];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'AcceptTransitGatewayPeeringAttachmentResult');
    helper.add(
      'transitGatewayPeeringAttachment',
      transitGatewayPeeringAttachment,
    );
    return helper.toString();
  }
}

class AcceptTransitGatewayPeeringAttachmentResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<AcceptTransitGatewayPeeringAttachmentResult> {
  const AcceptTransitGatewayPeeringAttachmentResultEc2QuerySerializer()
      : super('AcceptTransitGatewayPeeringAttachmentResult');

  @override
  Iterable<Type> get types => const [
        AcceptTransitGatewayPeeringAttachmentResult,
        _$AcceptTransitGatewayPeeringAttachmentResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AcceptTransitGatewayPeeringAttachmentResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AcceptTransitGatewayPeeringAttachmentResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'transitGatewayPeeringAttachment':
          if (value != null) {
            result.transitGatewayPeeringAttachment
                .replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i2.TransitGatewayPeeringAttachment),
            ) as _i2.TransitGatewayPeeringAttachment));
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
    final payload = (object as AcceptTransitGatewayPeeringAttachmentResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'AcceptTransitGatewayPeeringAttachmentResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.transitGatewayPeeringAttachment != null) {
      result
        ..add(const _i3.XmlElementName('TransitGatewayPeeringAttachment'))
        ..add(serializers.serialize(
          payload.transitGatewayPeeringAttachment!,
          specifiedType: const FullType(_i2.TransitGatewayPeeringAttachment),
        ));
    }
    return result;
  }
}
