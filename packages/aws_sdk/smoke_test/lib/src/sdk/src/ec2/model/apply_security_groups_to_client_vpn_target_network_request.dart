// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.apply_security_groups_to_client_vpn_target_network_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'apply_security_groups_to_client_vpn_target_network_request.g.dart';

abstract class ApplySecurityGroupsToClientVpnTargetNetworkRequest
    with
        _i1.HttpInput<ApplySecurityGroupsToClientVpnTargetNetworkRequest>,
        _i2.AWSEquatable<ApplySecurityGroupsToClientVpnTargetNetworkRequest>
    implements
        Built<ApplySecurityGroupsToClientVpnTargetNetworkRequest,
            ApplySecurityGroupsToClientVpnTargetNetworkRequestBuilder> {
  factory ApplySecurityGroupsToClientVpnTargetNetworkRequest({
    required String clientVpnEndpointId,
    required String vpcId,
    required List<String> securityGroupIds,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$ApplySecurityGroupsToClientVpnTargetNetworkRequest._(
      clientVpnEndpointId: clientVpnEndpointId,
      vpcId: vpcId,
      securityGroupIds: _i3.BuiltList(securityGroupIds),
      dryRun: dryRun,
    );
  }

  factory ApplySecurityGroupsToClientVpnTargetNetworkRequest.build(
      [void Function(ApplySecurityGroupsToClientVpnTargetNetworkRequestBuilder)
          updates]) = _$ApplySecurityGroupsToClientVpnTargetNetworkRequest;

  const ApplySecurityGroupsToClientVpnTargetNetworkRequest._();

  factory ApplySecurityGroupsToClientVpnTargetNetworkRequest.fromRequest(
    ApplySecurityGroupsToClientVpnTargetNetworkRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ApplySecurityGroupsToClientVpnTargetNetworkRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      ApplySecurityGroupsToClientVpnTargetNetworkRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the Client VPN endpoint.
  String get clientVpnEndpointId;

  /// The ID of the VPC in which the associated target network is located.
  String get vpcId;

  /// The IDs of the security groups to apply to the associated target network. Up to 5 security groups can be applied to an associated target network.
  _i3.BuiltList<String> get securityGroupIds;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  ApplySecurityGroupsToClientVpnTargetNetworkRequest getPayload() => this;
  @override
  List<Object?> get props => [
        clientVpnEndpointId,
        vpcId,
        securityGroupIds,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'ApplySecurityGroupsToClientVpnTargetNetworkRequest');
    helper.add(
      'clientVpnEndpointId',
      clientVpnEndpointId,
    );
    helper.add(
      'vpcId',
      vpcId,
    );
    helper.add(
      'securityGroupIds',
      securityGroupIds,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class ApplySecurityGroupsToClientVpnTargetNetworkRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<
        ApplySecurityGroupsToClientVpnTargetNetworkRequest> {
  const ApplySecurityGroupsToClientVpnTargetNetworkRequestEc2QuerySerializer()
      : super('ApplySecurityGroupsToClientVpnTargetNetworkRequest');

  @override
  Iterable<Type> get types => const [
        ApplySecurityGroupsToClientVpnTargetNetworkRequest,
        _$ApplySecurityGroupsToClientVpnTargetNetworkRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ApplySecurityGroupsToClientVpnTargetNetworkRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApplySecurityGroupsToClientVpnTargetNetworkRequestBuilder();
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
        case 'VpcId':
          result.vpcId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'SecurityGroupId':
          result.securityGroupIds.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
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
    final payload =
        (object as ApplySecurityGroupsToClientVpnTargetNetworkRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ApplySecurityGroupsToClientVpnTargetNetworkRequestResponse',
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
      ..add(const _i1.XmlElementName('VpcId'))
      ..add(serializers.serialize(
        payload.vpcId,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('SecurityGroupId'))
      ..add(const _i1.XmlBuiltListSerializer(
        memberName: 'item',
        indexer: _i1.XmlIndexer.ec2QueryList,
      ).serialize(
        serializers,
        payload.securityGroupIds,
        specifiedType: const FullType.nullable(
          _i3.BuiltList,
          [FullType(String)],
        ),
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
