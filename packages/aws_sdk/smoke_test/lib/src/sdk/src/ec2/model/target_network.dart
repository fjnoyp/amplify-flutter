// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.target_network; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/association_status.dart'
    as _i2;

part 'target_network.g.dart';

/// Describes a target network associated with a Client VPN endpoint.
abstract class TargetNetwork
    with _i1.AWSEquatable<TargetNetwork>
    implements Built<TargetNetwork, TargetNetworkBuilder> {
  /// Describes a target network associated with a Client VPN endpoint.
  factory TargetNetwork({
    String? associationId,
    String? vpcId,
    String? targetNetworkId,
    String? clientVpnEndpointId,
    _i2.AssociationStatus? status,
    List<String>? securityGroups,
  }) {
    return _$TargetNetwork._(
      associationId: associationId,
      vpcId: vpcId,
      targetNetworkId: targetNetworkId,
      clientVpnEndpointId: clientVpnEndpointId,
      status: status,
      securityGroups:
          securityGroups == null ? null : _i3.BuiltList(securityGroups),
    );
  }

  /// Describes a target network associated with a Client VPN endpoint.
  factory TargetNetwork.build([void Function(TargetNetworkBuilder) updates]) =
      _$TargetNetwork;

  const TargetNetwork._();

  static const List<_i4.SmithySerializer> serializers = [
    TargetNetworkEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TargetNetworkBuilder b) {}

  /// The ID of the association.
  String? get associationId;

  /// The ID of the VPC in which the target network (subnet) is located.
  String? get vpcId;

  /// The ID of the subnet specified as the target network.
  String? get targetNetworkId;

  /// The ID of the Client VPN endpoint with which the target network is associated.
  String? get clientVpnEndpointId;

  /// The current state of the target network association.
  _i2.AssociationStatus? get status;

  /// The IDs of the security groups applied to the target network association.
  _i3.BuiltList<String>? get securityGroups;
  @override
  List<Object?> get props => [
        associationId,
        vpcId,
        targetNetworkId,
        clientVpnEndpointId,
        status,
        securityGroups,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TargetNetwork');
    helper.add(
      'associationId',
      associationId,
    );
    helper.add(
      'vpcId',
      vpcId,
    );
    helper.add(
      'targetNetworkId',
      targetNetworkId,
    );
    helper.add(
      'clientVpnEndpointId',
      clientVpnEndpointId,
    );
    helper.add(
      'status',
      status,
    );
    helper.add(
      'securityGroups',
      securityGroups,
    );
    return helper.toString();
  }
}

class TargetNetworkEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<TargetNetwork> {
  const TargetNetworkEc2QuerySerializer() : super('TargetNetwork');

  @override
  Iterable<Type> get types => const [
        TargetNetwork,
        _$TargetNetwork,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TargetNetwork deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TargetNetworkBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'associationId':
          if (value != null) {
            result.associationId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'vpcId':
          if (value != null) {
            result.vpcId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'targetNetworkId':
          if (value != null) {
            result.targetNetworkId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'clientVpnEndpointId':
          if (value != null) {
            result.clientVpnEndpointId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'status':
          if (value != null) {
            result.status.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.AssociationStatus),
            ) as _i2.AssociationStatus));
          }
          break;
        case 'securityGroups':
          if (value != null) {
            result.securityGroups.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
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
    final payload = (object as TargetNetwork);
    final result = <Object?>[
      const _i4.XmlElementName(
        'TargetNetworkResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.associationId != null) {
      result
        ..add(const _i4.XmlElementName('AssociationId'))
        ..add(serializers.serialize(
          payload.associationId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.vpcId != null) {
      result
        ..add(const _i4.XmlElementName('VpcId'))
        ..add(serializers.serialize(
          payload.vpcId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.targetNetworkId != null) {
      result
        ..add(const _i4.XmlElementName('TargetNetworkId'))
        ..add(serializers.serialize(
          payload.targetNetworkId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.clientVpnEndpointId != null) {
      result
        ..add(const _i4.XmlElementName('ClientVpnEndpointId'))
        ..add(serializers.serialize(
          payload.clientVpnEndpointId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.status != null) {
      result
        ..add(const _i4.XmlElementName('Status'))
        ..add(serializers.serialize(
          payload.status!,
          specifiedType: const FullType(_i2.AssociationStatus),
        ));
    }
    if (payload.securityGroups != null) {
      result
        ..add(const _i4.XmlElementName('SecurityGroups'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.securityGroups!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result;
  }
}
