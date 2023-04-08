// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_transit_gateway_vpc_attachment_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_transit_gateway_vpc_attachment_request.g.dart';

abstract class DeleteTransitGatewayVpcAttachmentRequest
    with
        _i1.HttpInput<DeleteTransitGatewayVpcAttachmentRequest>,
        _i2.AWSEquatable<DeleteTransitGatewayVpcAttachmentRequest>
    implements
        Built<DeleteTransitGatewayVpcAttachmentRequest,
            DeleteTransitGatewayVpcAttachmentRequestBuilder> {
  factory DeleteTransitGatewayVpcAttachmentRequest({
    required String transitGatewayAttachmentId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DeleteTransitGatewayVpcAttachmentRequest._(
      transitGatewayAttachmentId: transitGatewayAttachmentId,
      dryRun: dryRun,
    );
  }

  factory DeleteTransitGatewayVpcAttachmentRequest.build(
      [void Function(DeleteTransitGatewayVpcAttachmentRequestBuilder)
          updates]) = _$DeleteTransitGatewayVpcAttachmentRequest;

  const DeleteTransitGatewayVpcAttachmentRequest._();

  factory DeleteTransitGatewayVpcAttachmentRequest.fromRequest(
    DeleteTransitGatewayVpcAttachmentRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DeleteTransitGatewayVpcAttachmentRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteTransitGatewayVpcAttachmentRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the attachment.
  String get transitGatewayAttachmentId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DeleteTransitGatewayVpcAttachmentRequest getPayload() => this;
  @override
  List<Object?> get props => [
        transitGatewayAttachmentId,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteTransitGatewayVpcAttachmentRequest');
    helper.add(
      'transitGatewayAttachmentId',
      transitGatewayAttachmentId,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class DeleteTransitGatewayVpcAttachmentRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DeleteTransitGatewayVpcAttachmentRequest> {
  const DeleteTransitGatewayVpcAttachmentRequestEc2QuerySerializer()
      : super('DeleteTransitGatewayVpcAttachmentRequest');

  @override
  Iterable<Type> get types => const [
        DeleteTransitGatewayVpcAttachmentRequest,
        _$DeleteTransitGatewayVpcAttachmentRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteTransitGatewayVpcAttachmentRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteTransitGatewayVpcAttachmentRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'TransitGatewayAttachmentId':
          result.transitGatewayAttachmentId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
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
    final payload = (object as DeleteTransitGatewayVpcAttachmentRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DeleteTransitGatewayVpcAttachmentRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('TransitGatewayAttachmentId'))
      ..add(serializers.serialize(
        payload.transitGatewayAttachmentId,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
