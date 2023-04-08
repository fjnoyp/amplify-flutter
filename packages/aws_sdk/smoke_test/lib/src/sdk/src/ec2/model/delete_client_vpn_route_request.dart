// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_client_vpn_route_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_client_vpn_route_request.g.dart';

abstract class DeleteClientVpnRouteRequest
    with
        _i1.HttpInput<DeleteClientVpnRouteRequest>,
        _i2.AWSEquatable<DeleteClientVpnRouteRequest>
    implements
        Built<DeleteClientVpnRouteRequest, DeleteClientVpnRouteRequestBuilder> {
  factory DeleteClientVpnRouteRequest({
    required String clientVpnEndpointId,
    String? targetVpcSubnetId,
    required String destinationCidrBlock,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DeleteClientVpnRouteRequest._(
      clientVpnEndpointId: clientVpnEndpointId,
      targetVpcSubnetId: targetVpcSubnetId,
      destinationCidrBlock: destinationCidrBlock,
      dryRun: dryRun,
    );
  }

  factory DeleteClientVpnRouteRequest.build(
          [void Function(DeleteClientVpnRouteRequestBuilder) updates]) =
      _$DeleteClientVpnRouteRequest;

  const DeleteClientVpnRouteRequest._();

  factory DeleteClientVpnRouteRequest.fromRequest(
    DeleteClientVpnRouteRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DeleteClientVpnRouteRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteClientVpnRouteRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the Client VPN endpoint from which the route is to be deleted.
  String get clientVpnEndpointId;

  /// The ID of the target subnet used by the route.
  String? get targetVpcSubnetId;

  /// The IPv4 address range, in CIDR notation, of the route to be deleted.
  String get destinationCidrBlock;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DeleteClientVpnRouteRequest getPayload() => this;
  @override
  List<Object?> get props => [
        clientVpnEndpointId,
        targetVpcSubnetId,
        destinationCidrBlock,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteClientVpnRouteRequest');
    helper.add(
      'clientVpnEndpointId',
      clientVpnEndpointId,
    );
    helper.add(
      'targetVpcSubnetId',
      targetVpcSubnetId,
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

class DeleteClientVpnRouteRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteClientVpnRouteRequest> {
  const DeleteClientVpnRouteRequestEc2QuerySerializer()
      : super('DeleteClientVpnRouteRequest');

  @override
  Iterable<Type> get types => const [
        DeleteClientVpnRouteRequest,
        _$DeleteClientVpnRouteRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteClientVpnRouteRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteClientVpnRouteRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ClientVpnEndpointId':
          result.clientVpnEndpointId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'TargetVpcSubnetId':
          if (value != null) {
            result.targetVpcSubnetId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
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
    final payload = (object as DeleteClientVpnRouteRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DeleteClientVpnRouteRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('ClientVpnEndpointId'))
      ..add(serializers.serialize(
        payload.clientVpnEndpointId,
        specifiedType: const FullType(String),
      ));
    if (payload.targetVpcSubnetId != null) {
      result
        ..add(const _i1.XmlElementName('TargetVpcSubnetId'))
        ..add(serializers.serialize(
          payload.targetVpcSubnetId!,
          specifiedType: const FullType(String),
        ));
    }
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
