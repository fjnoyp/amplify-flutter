// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_transit_gateway_connect_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_transit_gateway_connect_request.g.dart';

abstract class DeleteTransitGatewayConnectRequest
    with
        _i1.HttpInput<DeleteTransitGatewayConnectRequest>,
        _i2.AWSEquatable<DeleteTransitGatewayConnectRequest>
    implements
        Built<DeleteTransitGatewayConnectRequest,
            DeleteTransitGatewayConnectRequestBuilder> {
  factory DeleteTransitGatewayConnectRequest({
    required String transitGatewayAttachmentId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DeleteTransitGatewayConnectRequest._(
      transitGatewayAttachmentId: transitGatewayAttachmentId,
      dryRun: dryRun,
    );
  }

  factory DeleteTransitGatewayConnectRequest.build(
          [void Function(DeleteTransitGatewayConnectRequestBuilder) updates]) =
      _$DeleteTransitGatewayConnectRequest;

  const DeleteTransitGatewayConnectRequest._();

  factory DeleteTransitGatewayConnectRequest.fromRequest(
    DeleteTransitGatewayConnectRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DeleteTransitGatewayConnectRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteTransitGatewayConnectRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the Connect attachment.
  String get transitGatewayAttachmentId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DeleteTransitGatewayConnectRequest getPayload() => this;
  @override
  List<Object?> get props => [
        transitGatewayAttachmentId,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteTransitGatewayConnectRequest');
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

class DeleteTransitGatewayConnectRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteTransitGatewayConnectRequest> {
  const DeleteTransitGatewayConnectRequestEc2QuerySerializer()
      : super('DeleteTransitGatewayConnectRequest');

  @override
  Iterable<Type> get types => const [
        DeleteTransitGatewayConnectRequest,
        _$DeleteTransitGatewayConnectRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteTransitGatewayConnectRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteTransitGatewayConnectRequestBuilder();
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
    final payload = (object as DeleteTransitGatewayConnectRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DeleteTransitGatewayConnectRequestResponse',
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
