// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.register_transit_gateway_multicast_group_members_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'register_transit_gateway_multicast_group_members_request.g.dart';

abstract class RegisterTransitGatewayMulticastGroupMembersRequest
    with
        _i1.HttpInput<RegisterTransitGatewayMulticastGroupMembersRequest>,
        _i2.AWSEquatable<RegisterTransitGatewayMulticastGroupMembersRequest>
    implements
        Built<RegisterTransitGatewayMulticastGroupMembersRequest,
            RegisterTransitGatewayMulticastGroupMembersRequestBuilder> {
  factory RegisterTransitGatewayMulticastGroupMembersRequest({
    String? transitGatewayMulticastDomainId,
    String? groupIpAddress,
    List<String>? networkInterfaceIds,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$RegisterTransitGatewayMulticastGroupMembersRequest._(
      transitGatewayMulticastDomainId: transitGatewayMulticastDomainId,
      groupIpAddress: groupIpAddress,
      networkInterfaceIds: networkInterfaceIds == null
          ? null
          : _i3.BuiltList(networkInterfaceIds),
      dryRun: dryRun,
    );
  }

  factory RegisterTransitGatewayMulticastGroupMembersRequest.build(
      [void Function(RegisterTransitGatewayMulticastGroupMembersRequestBuilder)
          updates]) = _$RegisterTransitGatewayMulticastGroupMembersRequest;

  const RegisterTransitGatewayMulticastGroupMembersRequest._();

  factory RegisterTransitGatewayMulticastGroupMembersRequest.fromRequest(
    RegisterTransitGatewayMulticastGroupMembersRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    RegisterTransitGatewayMulticastGroupMembersRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      RegisterTransitGatewayMulticastGroupMembersRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the transit gateway multicast domain.
  String? get transitGatewayMulticastDomainId;

  /// The IP address assigned to the transit gateway multicast group.
  String? get groupIpAddress;

  /// The group members' network interface IDs to register with the transit gateway multicast group.
  _i3.BuiltList<String>? get networkInterfaceIds;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  RegisterTransitGatewayMulticastGroupMembersRequest getPayload() => this;
  @override
  List<Object?> get props => [
        transitGatewayMulticastDomainId,
        groupIpAddress,
        networkInterfaceIds,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'RegisterTransitGatewayMulticastGroupMembersRequest');
    helper.add(
      'transitGatewayMulticastDomainId',
      transitGatewayMulticastDomainId,
    );
    helper.add(
      'groupIpAddress',
      groupIpAddress,
    );
    helper.add(
      'networkInterfaceIds',
      networkInterfaceIds,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class RegisterTransitGatewayMulticastGroupMembersRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<
        RegisterTransitGatewayMulticastGroupMembersRequest> {
  const RegisterTransitGatewayMulticastGroupMembersRequestEc2QuerySerializer()
      : super('RegisterTransitGatewayMulticastGroupMembersRequest');

  @override
  Iterable<Type> get types => const [
        RegisterTransitGatewayMulticastGroupMembersRequest,
        _$RegisterTransitGatewayMulticastGroupMembersRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RegisterTransitGatewayMulticastGroupMembersRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RegisterTransitGatewayMulticastGroupMembersRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'TransitGatewayMulticastDomainId':
          if (value != null) {
            result.transitGatewayMulticastDomainId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'GroupIpAddress':
          if (value != null) {
            result.groupIpAddress = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'NetworkInterfaceIds':
          if (value != null) {
            result.networkInterfaceIds
                .replace((const _i1.XmlBuiltListSerializer(
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
    final payload =
        (object as RegisterTransitGatewayMulticastGroupMembersRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'RegisterTransitGatewayMulticastGroupMembersRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.transitGatewayMulticastDomainId != null) {
      result
        ..add(const _i1.XmlElementName('TransitGatewayMulticastDomainId'))
        ..add(serializers.serialize(
          payload.transitGatewayMulticastDomainId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.groupIpAddress != null) {
      result
        ..add(const _i1.XmlElementName('GroupIpAddress'))
        ..add(serializers.serialize(
          payload.groupIpAddress!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.networkInterfaceIds != null) {
      result
        ..add(const _i1.XmlElementName('NetworkInterfaceIds'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.networkInterfaceIds!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
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
