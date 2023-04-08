// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.modify_vpn_connection_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'modify_vpn_connection_request.g.dart';

abstract class ModifyVpnConnectionRequest
    with
        _i1.HttpInput<ModifyVpnConnectionRequest>,
        _i2.AWSEquatable<ModifyVpnConnectionRequest>
    implements
        Built<ModifyVpnConnectionRequest, ModifyVpnConnectionRequestBuilder> {
  factory ModifyVpnConnectionRequest({
    required String vpnConnectionId,
    String? transitGatewayId,
    String? customerGatewayId,
    String? vpnGatewayId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$ModifyVpnConnectionRequest._(
      vpnConnectionId: vpnConnectionId,
      transitGatewayId: transitGatewayId,
      customerGatewayId: customerGatewayId,
      vpnGatewayId: vpnGatewayId,
      dryRun: dryRun,
    );
  }

  factory ModifyVpnConnectionRequest.build(
          [void Function(ModifyVpnConnectionRequestBuilder) updates]) =
      _$ModifyVpnConnectionRequest;

  const ModifyVpnConnectionRequest._();

  factory ModifyVpnConnectionRequest.fromRequest(
    ModifyVpnConnectionRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ModifyVpnConnectionRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyVpnConnectionRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the VPN connection.
  String get vpnConnectionId;

  /// The ID of the transit gateway.
  String? get transitGatewayId;

  /// The ID of the customer gateway at your end of the VPN connection.
  String? get customerGatewayId;

  /// The ID of the virtual private gateway at the Amazon Web Services side of the VPN connection.
  String? get vpnGatewayId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  ModifyVpnConnectionRequest getPayload() => this;
  @override
  List<Object?> get props => [
        vpnConnectionId,
        transitGatewayId,
        customerGatewayId,
        vpnGatewayId,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifyVpnConnectionRequest');
    helper.add(
      'vpnConnectionId',
      vpnConnectionId,
    );
    helper.add(
      'transitGatewayId',
      transitGatewayId,
    );
    helper.add(
      'customerGatewayId',
      customerGatewayId,
    );
    helper.add(
      'vpnGatewayId',
      vpnGatewayId,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class ModifyVpnConnectionRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ModifyVpnConnectionRequest> {
  const ModifyVpnConnectionRequestEc2QuerySerializer()
      : super('ModifyVpnConnectionRequest');

  @override
  Iterable<Type> get types => const [
        ModifyVpnConnectionRequest,
        _$ModifyVpnConnectionRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyVpnConnectionRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyVpnConnectionRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'VpnConnectionId':
          result.vpnConnectionId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'TransitGatewayId':
          if (value != null) {
            result.transitGatewayId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'CustomerGatewayId':
          if (value != null) {
            result.customerGatewayId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'VpnGatewayId':
          if (value != null) {
            result.vpnGatewayId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
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
    final payload = (object as ModifyVpnConnectionRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ModifyVpnConnectionRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('VpnConnectionId'))
      ..add(serializers.serialize(
        payload.vpnConnectionId,
        specifiedType: const FullType(String),
      ));
    if (payload.transitGatewayId != null) {
      result
        ..add(const _i1.XmlElementName('TransitGatewayId'))
        ..add(serializers.serialize(
          payload.transitGatewayId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.customerGatewayId != null) {
      result
        ..add(const _i1.XmlElementName('CustomerGatewayId'))
        ..add(serializers.serialize(
          payload.customerGatewayId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.vpnGatewayId != null) {
      result
        ..add(const _i1.XmlElementName('VpnGatewayId'))
        ..add(serializers.serialize(
          payload.vpnGatewayId!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
