// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_vpn_connection_route_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'create_vpn_connection_route_request.g.dart';

/// Contains the parameters for CreateVpnConnectionRoute.
abstract class CreateVpnConnectionRouteRequest
    with
        _i1.HttpInput<CreateVpnConnectionRouteRequest>,
        _i2.AWSEquatable<CreateVpnConnectionRouteRequest>
    implements
        Built<CreateVpnConnectionRouteRequest,
            CreateVpnConnectionRouteRequestBuilder> {
  /// Contains the parameters for CreateVpnConnectionRoute.
  factory CreateVpnConnectionRouteRequest({
    required String destinationCidrBlock,
    required String vpnConnectionId,
  }) {
    return _$CreateVpnConnectionRouteRequest._(
      destinationCidrBlock: destinationCidrBlock,
      vpnConnectionId: vpnConnectionId,
    );
  }

  /// Contains the parameters for CreateVpnConnectionRoute.
  factory CreateVpnConnectionRouteRequest.build(
          [void Function(CreateVpnConnectionRouteRequestBuilder) updates]) =
      _$CreateVpnConnectionRouteRequest;

  const CreateVpnConnectionRouteRequest._();

  factory CreateVpnConnectionRouteRequest.fromRequest(
    CreateVpnConnectionRouteRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    CreateVpnConnectionRouteRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateVpnConnectionRouteRequestBuilder b) {}

  /// The CIDR block associated with the local subnet of the customer network.
  String get destinationCidrBlock;

  /// The ID of the VPN connection.
  String get vpnConnectionId;
  @override
  CreateVpnConnectionRouteRequest getPayload() => this;
  @override
  List<Object?> get props => [
        destinationCidrBlock,
        vpnConnectionId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateVpnConnectionRouteRequest');
    helper.add(
      'destinationCidrBlock',
      destinationCidrBlock,
    );
    helper.add(
      'vpnConnectionId',
      vpnConnectionId,
    );
    return helper.toString();
  }
}

class CreateVpnConnectionRouteRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateVpnConnectionRouteRequest> {
  const CreateVpnConnectionRouteRequestEc2QuerySerializer()
      : super('CreateVpnConnectionRouteRequest');

  @override
  Iterable<Type> get types => const [
        CreateVpnConnectionRouteRequest,
        _$CreateVpnConnectionRouteRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateVpnConnectionRouteRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateVpnConnectionRouteRequestBuilder();
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
        case 'VpnConnectionId':
          result.vpnConnectionId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as CreateVpnConnectionRouteRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'CreateVpnConnectionRouteRequestResponse',
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
      ..add(const _i1.XmlElementName('VpnConnectionId'))
      ..add(serializers.serialize(
        payload.vpnConnectionId,
        specifiedType: const FullType(String),
      ));
    return result;
  }
}
