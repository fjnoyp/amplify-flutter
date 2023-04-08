// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.attach_vpn_gateway_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'attach_vpn_gateway_request.g.dart';

/// Contains the parameters for AttachVpnGateway.
abstract class AttachVpnGatewayRequest
    with
        _i1.HttpInput<AttachVpnGatewayRequest>,
        _i2.AWSEquatable<AttachVpnGatewayRequest>
    implements Built<AttachVpnGatewayRequest, AttachVpnGatewayRequestBuilder> {
  /// Contains the parameters for AttachVpnGateway.
  factory AttachVpnGatewayRequest({
    required String vpcId,
    required String vpnGatewayId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$AttachVpnGatewayRequest._(
      vpcId: vpcId,
      vpnGatewayId: vpnGatewayId,
      dryRun: dryRun,
    );
  }

  /// Contains the parameters for AttachVpnGateway.
  factory AttachVpnGatewayRequest.build(
          [void Function(AttachVpnGatewayRequestBuilder) updates]) =
      _$AttachVpnGatewayRequest;

  const AttachVpnGatewayRequest._();

  factory AttachVpnGatewayRequest.fromRequest(
    AttachVpnGatewayRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    AttachVpnGatewayRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AttachVpnGatewayRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the VPC.
  String get vpcId;

  /// The ID of the virtual private gateway.
  String get vpnGatewayId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  AttachVpnGatewayRequest getPayload() => this;
  @override
  List<Object?> get props => [
        vpcId,
        vpnGatewayId,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AttachVpnGatewayRequest');
    helper.add(
      'vpcId',
      vpcId,
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

class AttachVpnGatewayRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<AttachVpnGatewayRequest> {
  const AttachVpnGatewayRequestEc2QuerySerializer()
      : super('AttachVpnGatewayRequest');

  @override
  Iterable<Type> get types => const [
        AttachVpnGatewayRequest,
        _$AttachVpnGatewayRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AttachVpnGatewayRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AttachVpnGatewayRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'VpcId':
          result.vpcId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'VpnGatewayId':
          result.vpnGatewayId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'dryRun':
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
    final payload = (object as AttachVpnGatewayRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'AttachVpnGatewayRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('VpcId'))
      ..add(serializers.serialize(
        payload.vpcId,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('VpnGatewayId'))
      ..add(serializers.serialize(
        payload.vpnGatewayId,
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
