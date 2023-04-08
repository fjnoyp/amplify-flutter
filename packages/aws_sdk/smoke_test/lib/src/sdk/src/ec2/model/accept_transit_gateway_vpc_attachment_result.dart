// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.accept_transit_gateway_vpc_attachment_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_vpc_attachment.dart'
    as _i2;

part 'accept_transit_gateway_vpc_attachment_result.g.dart';

abstract class AcceptTransitGatewayVpcAttachmentResult
    with
        _i1.AWSEquatable<AcceptTransitGatewayVpcAttachmentResult>
    implements
        Built<AcceptTransitGatewayVpcAttachmentResult,
            AcceptTransitGatewayVpcAttachmentResultBuilder> {
  factory AcceptTransitGatewayVpcAttachmentResult(
      {_i2.TransitGatewayVpcAttachment? transitGatewayVpcAttachment}) {
    return _$AcceptTransitGatewayVpcAttachmentResult._(
        transitGatewayVpcAttachment: transitGatewayVpcAttachment);
  }

  factory AcceptTransitGatewayVpcAttachmentResult.build(
      [void Function(AcceptTransitGatewayVpcAttachmentResultBuilder)
          updates]) = _$AcceptTransitGatewayVpcAttachmentResult;

  const AcceptTransitGatewayVpcAttachmentResult._();

  /// Constructs a [AcceptTransitGatewayVpcAttachmentResult] from a [payload] and [response].
  factory AcceptTransitGatewayVpcAttachmentResult.fromResponse(
    AcceptTransitGatewayVpcAttachmentResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    AcceptTransitGatewayVpcAttachmentResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AcceptTransitGatewayVpcAttachmentResultBuilder b) {}

  /// The VPC attachment.
  _i2.TransitGatewayVpcAttachment? get transitGatewayVpcAttachment;
  @override
  List<Object?> get props => [transitGatewayVpcAttachment];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('AcceptTransitGatewayVpcAttachmentResult');
    helper.add(
      'transitGatewayVpcAttachment',
      transitGatewayVpcAttachment,
    );
    return helper.toString();
  }
}

class AcceptTransitGatewayVpcAttachmentResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<AcceptTransitGatewayVpcAttachmentResult> {
  const AcceptTransitGatewayVpcAttachmentResultEc2QuerySerializer()
      : super('AcceptTransitGatewayVpcAttachmentResult');

  @override
  Iterable<Type> get types => const [
        AcceptTransitGatewayVpcAttachmentResult,
        _$AcceptTransitGatewayVpcAttachmentResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AcceptTransitGatewayVpcAttachmentResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AcceptTransitGatewayVpcAttachmentResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'transitGatewayVpcAttachment':
          if (value != null) {
            result.transitGatewayVpcAttachment.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.TransitGatewayVpcAttachment),
            ) as _i2.TransitGatewayVpcAttachment));
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
    final payload = (object as AcceptTransitGatewayVpcAttachmentResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'AcceptTransitGatewayVpcAttachmentResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.transitGatewayVpcAttachment != null) {
      result
        ..add(const _i3.XmlElementName('TransitGatewayVpcAttachment'))
        ..add(serializers.serialize(
          payload.transitGatewayVpcAttachment!,
          specifiedType: const FullType(_i2.TransitGatewayVpcAttachment),
        ));
    }
    return result;
  }
}
