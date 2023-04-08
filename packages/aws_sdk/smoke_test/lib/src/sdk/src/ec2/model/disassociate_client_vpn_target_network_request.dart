// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.disassociate_client_vpn_target_network_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'disassociate_client_vpn_target_network_request.g.dart';

abstract class DisassociateClientVpnTargetNetworkRequest
    with
        _i1.HttpInput<DisassociateClientVpnTargetNetworkRequest>,
        _i2.AWSEquatable<DisassociateClientVpnTargetNetworkRequest>
    implements
        Built<DisassociateClientVpnTargetNetworkRequest,
            DisassociateClientVpnTargetNetworkRequestBuilder> {
  factory DisassociateClientVpnTargetNetworkRequest({
    required String clientVpnEndpointId,
    required String associationId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DisassociateClientVpnTargetNetworkRequest._(
      clientVpnEndpointId: clientVpnEndpointId,
      associationId: associationId,
      dryRun: dryRun,
    );
  }

  factory DisassociateClientVpnTargetNetworkRequest.build(
      [void Function(DisassociateClientVpnTargetNetworkRequestBuilder)
          updates]) = _$DisassociateClientVpnTargetNetworkRequest;

  const DisassociateClientVpnTargetNetworkRequest._();

  factory DisassociateClientVpnTargetNetworkRequest.fromRequest(
    DisassociateClientVpnTargetNetworkRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DisassociateClientVpnTargetNetworkRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DisassociateClientVpnTargetNetworkRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the Client VPN endpoint from which to disassociate the target network.
  String get clientVpnEndpointId;

  /// The ID of the target network association.
  String get associationId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DisassociateClientVpnTargetNetworkRequest getPayload() => this;
  @override
  List<Object?> get props => [
        clientVpnEndpointId,
        associationId,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DisassociateClientVpnTargetNetworkRequest');
    helper.add(
      'clientVpnEndpointId',
      clientVpnEndpointId,
    );
    helper.add(
      'associationId',
      associationId,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class DisassociateClientVpnTargetNetworkRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DisassociateClientVpnTargetNetworkRequest> {
  const DisassociateClientVpnTargetNetworkRequestEc2QuerySerializer()
      : super('DisassociateClientVpnTargetNetworkRequest');

  @override
  Iterable<Type> get types => const [
        DisassociateClientVpnTargetNetworkRequest,
        _$DisassociateClientVpnTargetNetworkRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DisassociateClientVpnTargetNetworkRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DisassociateClientVpnTargetNetworkRequestBuilder();
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
        case 'AssociationId':
          result.associationId = (serializers.deserialize(
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
    final payload = (object as DisassociateClientVpnTargetNetworkRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DisassociateClientVpnTargetNetworkRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('ClientVpnEndpointId'))
      ..add(serializers.serialize(
        payload.clientVpnEndpointId,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('AssociationId'))
      ..add(serializers.serialize(
        payload.associationId,
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
