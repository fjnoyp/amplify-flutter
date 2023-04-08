// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_local_gateway_route_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_local_gateway_route_request.g.dart';

abstract class DeleteLocalGatewayRouteRequest
    with
        _i1.HttpInput<DeleteLocalGatewayRouteRequest>,
        _i2.AWSEquatable<DeleteLocalGatewayRouteRequest>
    implements
        Built<DeleteLocalGatewayRouteRequest,
            DeleteLocalGatewayRouteRequestBuilder> {
  factory DeleteLocalGatewayRouteRequest({
    required String destinationCidrBlock,
    required String localGatewayRouteTableId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DeleteLocalGatewayRouteRequest._(
      destinationCidrBlock: destinationCidrBlock,
      localGatewayRouteTableId: localGatewayRouteTableId,
      dryRun: dryRun,
    );
  }

  factory DeleteLocalGatewayRouteRequest.build(
          [void Function(DeleteLocalGatewayRouteRequestBuilder) updates]) =
      _$DeleteLocalGatewayRouteRequest;

  const DeleteLocalGatewayRouteRequest._();

  factory DeleteLocalGatewayRouteRequest.fromRequest(
    DeleteLocalGatewayRouteRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DeleteLocalGatewayRouteRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteLocalGatewayRouteRequestBuilder b) {
    b.dryRun = false;
  }

  /// The CIDR range for the route. This must match the CIDR for the route exactly.
  String get destinationCidrBlock;

  /// The ID of the local gateway route table.
  String get localGatewayRouteTableId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DeleteLocalGatewayRouteRequest getPayload() => this;
  @override
  List<Object?> get props => [
        destinationCidrBlock,
        localGatewayRouteTableId,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteLocalGatewayRouteRequest');
    helper.add(
      'destinationCidrBlock',
      destinationCidrBlock,
    );
    helper.add(
      'localGatewayRouteTableId',
      localGatewayRouteTableId,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class DeleteLocalGatewayRouteRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteLocalGatewayRouteRequest> {
  const DeleteLocalGatewayRouteRequestEc2QuerySerializer()
      : super('DeleteLocalGatewayRouteRequest');

  @override
  Iterable<Type> get types => const [
        DeleteLocalGatewayRouteRequest,
        _$DeleteLocalGatewayRouteRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteLocalGatewayRouteRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteLocalGatewayRouteRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'DestinationCidrBlock':
          result.destinationCidrBlock = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'LocalGatewayRouteTableId':
          result.localGatewayRouteTableId = (serializers.deserialize(
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
    final payload = (object as DeleteLocalGatewayRouteRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DeleteLocalGatewayRouteRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('DestinationCidrBlock'))
      ..add(serializers.serialize(
        payload.destinationCidrBlock,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('LocalGatewayRouteTableId'))
      ..add(serializers.serialize(
        payload.localGatewayRouteTableId,
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
