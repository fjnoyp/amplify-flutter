// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_transit_gateway_route_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_transit_gateway_route_request.g.dart';

abstract class DeleteTransitGatewayRouteRequest
    with
        _i1.HttpInput<DeleteTransitGatewayRouteRequest>,
        _i2.AWSEquatable<DeleteTransitGatewayRouteRequest>
    implements
        Built<DeleteTransitGatewayRouteRequest,
            DeleteTransitGatewayRouteRequestBuilder> {
  factory DeleteTransitGatewayRouteRequest({
    required String transitGatewayRouteTableId,
    required String destinationCidrBlock,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DeleteTransitGatewayRouteRequest._(
      transitGatewayRouteTableId: transitGatewayRouteTableId,
      destinationCidrBlock: destinationCidrBlock,
      dryRun: dryRun,
    );
  }

  factory DeleteTransitGatewayRouteRequest.build(
          [void Function(DeleteTransitGatewayRouteRequestBuilder) updates]) =
      _$DeleteTransitGatewayRouteRequest;

  const DeleteTransitGatewayRouteRequest._();

  factory DeleteTransitGatewayRouteRequest.fromRequest(
    DeleteTransitGatewayRouteRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DeleteTransitGatewayRouteRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteTransitGatewayRouteRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the transit gateway route table.
  String get transitGatewayRouteTableId;

  /// The CIDR range for the route. This must match the CIDR for the route exactly.
  String get destinationCidrBlock;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DeleteTransitGatewayRouteRequest getPayload() => this;
  @override
  List<Object?> get props => [
        transitGatewayRouteTableId,
        destinationCidrBlock,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteTransitGatewayRouteRequest');
    helper.add(
      'transitGatewayRouteTableId',
      transitGatewayRouteTableId,
    );
    helper.add(
      'destinationCidrBlock',
      destinationCidrBlock,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class DeleteTransitGatewayRouteRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteTransitGatewayRouteRequest> {
  const DeleteTransitGatewayRouteRequestEc2QuerySerializer()
      : super('DeleteTransitGatewayRouteRequest');

  @override
  Iterable<Type> get types => const [
        DeleteTransitGatewayRouteRequest,
        _$DeleteTransitGatewayRouteRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteTransitGatewayRouteRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteTransitGatewayRouteRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'TransitGatewayRouteTableId':
          result.transitGatewayRouteTableId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'DestinationCidrBlock':
          result.destinationCidrBlock = (serializers.deserialize(
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
    final payload = (object as DeleteTransitGatewayRouteRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DeleteTransitGatewayRouteRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('TransitGatewayRouteTableId'))
      ..add(serializers.serialize(
        payload.transitGatewayRouteTableId,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('DestinationCidrBlock'))
      ..add(serializers.serialize(
        payload.destinationCidrBlock,
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
