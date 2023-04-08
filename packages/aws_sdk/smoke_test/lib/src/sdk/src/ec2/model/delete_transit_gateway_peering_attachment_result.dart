// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_transit_gateway_peering_attachment_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_peering_attachment.dart'
    as _i2;

part 'delete_transit_gateway_peering_attachment_result.g.dart';

abstract class DeleteTransitGatewayPeeringAttachmentResult
    with
        _i1.AWSEquatable<DeleteTransitGatewayPeeringAttachmentResult>
    implements
        Built<DeleteTransitGatewayPeeringAttachmentResult,
            DeleteTransitGatewayPeeringAttachmentResultBuilder> {
  factory DeleteTransitGatewayPeeringAttachmentResult(
      {_i2.TransitGatewayPeeringAttachment? transitGatewayPeeringAttachment}) {
    return _$DeleteTransitGatewayPeeringAttachmentResult._(
        transitGatewayPeeringAttachment: transitGatewayPeeringAttachment);
  }

  factory DeleteTransitGatewayPeeringAttachmentResult.build(
      [void Function(DeleteTransitGatewayPeeringAttachmentResultBuilder)
          updates]) = _$DeleteTransitGatewayPeeringAttachmentResult;

  const DeleteTransitGatewayPeeringAttachmentResult._();

  /// Constructs a [DeleteTransitGatewayPeeringAttachmentResult] from a [payload] and [response].
  factory DeleteTransitGatewayPeeringAttachmentResult.fromResponse(
    DeleteTransitGatewayPeeringAttachmentResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    DeleteTransitGatewayPeeringAttachmentResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteTransitGatewayPeeringAttachmentResultBuilder b) {}

  /// The transit gateway peering attachment.
  _i2.TransitGatewayPeeringAttachment? get transitGatewayPeeringAttachment;
  @override
  List<Object?> get props => [transitGatewayPeeringAttachment];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DeleteTransitGatewayPeeringAttachmentResult');
    helper.add(
      'transitGatewayPeeringAttachment',
      transitGatewayPeeringAttachment,
    );
    return helper.toString();
  }
}

class DeleteTransitGatewayPeeringAttachmentResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<DeleteTransitGatewayPeeringAttachmentResult> {
  const DeleteTransitGatewayPeeringAttachmentResultEc2QuerySerializer()
      : super('DeleteTransitGatewayPeeringAttachmentResult');

  @override
  Iterable<Type> get types => const [
        DeleteTransitGatewayPeeringAttachmentResult,
        _$DeleteTransitGatewayPeeringAttachmentResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteTransitGatewayPeeringAttachmentResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteTransitGatewayPeeringAttachmentResultBuilder();
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
    final payload = (object as DeleteTransitGatewayPeeringAttachmentResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'DeleteTransitGatewayPeeringAttachmentResultResponse',
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
