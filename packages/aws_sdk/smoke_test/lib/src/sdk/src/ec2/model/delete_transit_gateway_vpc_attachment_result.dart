// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_transit_gateway_vpc_attachment_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_vpc_attachment.dart'
    as _i2;

part 'delete_transit_gateway_vpc_attachment_result.g.dart';

abstract class DeleteTransitGatewayVpcAttachmentResult
    with
        _i1.AWSEquatable<DeleteTransitGatewayVpcAttachmentResult>
    implements
        Built<DeleteTransitGatewayVpcAttachmentResult,
            DeleteTransitGatewayVpcAttachmentResultBuilder> {
  factory DeleteTransitGatewayVpcAttachmentResult(
      {_i2.TransitGatewayVpcAttachment? transitGatewayVpcAttachment}) {
    return _$DeleteTransitGatewayVpcAttachmentResult._(
        transitGatewayVpcAttachment: transitGatewayVpcAttachment);
  }

  factory DeleteTransitGatewayVpcAttachmentResult.build(
      [void Function(DeleteTransitGatewayVpcAttachmentResultBuilder)
          updates]) = _$DeleteTransitGatewayVpcAttachmentResult;

  const DeleteTransitGatewayVpcAttachmentResult._();

  /// Constructs a [DeleteTransitGatewayVpcAttachmentResult] from a [payload] and [response].
  factory DeleteTransitGatewayVpcAttachmentResult.fromResponse(
    DeleteTransitGatewayVpcAttachmentResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    DeleteTransitGatewayVpcAttachmentResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteTransitGatewayVpcAttachmentResultBuilder b) {}

  /// Information about the deleted VPC attachment.
  _i2.TransitGatewayVpcAttachment? get transitGatewayVpcAttachment;
  @override
  List<Object?> get props => [transitGatewayVpcAttachment];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteTransitGatewayVpcAttachmentResult');
    helper.add(
      'transitGatewayVpcAttachment',
      transitGatewayVpcAttachment,
    );
    return helper.toString();
  }
}

class DeleteTransitGatewayVpcAttachmentResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<DeleteTransitGatewayVpcAttachmentResult> {
  const DeleteTransitGatewayVpcAttachmentResultEc2QuerySerializer()
      : super('DeleteTransitGatewayVpcAttachmentResult');

  @override
  Iterable<Type> get types => const [
        DeleteTransitGatewayVpcAttachmentResult,
        _$DeleteTransitGatewayVpcAttachmentResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteTransitGatewayVpcAttachmentResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteTransitGatewayVpcAttachmentResultBuilder();
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
    final payload = (object as DeleteTransitGatewayVpcAttachmentResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'DeleteTransitGatewayVpcAttachmentResultResponse',
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
