// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.instance_network_interface_association; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'instance_network_interface_association.g.dart';

/// Describes association information for an Elastic IP address (IPv4).
abstract class InstanceNetworkInterfaceAssociation
    with
        _i1.AWSEquatable<InstanceNetworkInterfaceAssociation>
    implements
        Built<InstanceNetworkInterfaceAssociation,
            InstanceNetworkInterfaceAssociationBuilder> {
  /// Describes association information for an Elastic IP address (IPv4).
  factory InstanceNetworkInterfaceAssociation({
    String? carrierIp,
    String? customerOwnedIp,
    String? ipOwnerId,
    String? publicDnsName,
    String? publicIp,
  }) {
    return _$InstanceNetworkInterfaceAssociation._(
      carrierIp: carrierIp,
      customerOwnedIp: customerOwnedIp,
      ipOwnerId: ipOwnerId,
      publicDnsName: publicDnsName,
      publicIp: publicIp,
    );
  }

  /// Describes association information for an Elastic IP address (IPv4).
  factory InstanceNetworkInterfaceAssociation.build(
          [void Function(InstanceNetworkInterfaceAssociationBuilder) updates]) =
      _$InstanceNetworkInterfaceAssociation;

  const InstanceNetworkInterfaceAssociation._();

  static const List<_i2.SmithySerializer> serializers = [
    InstanceNetworkInterfaceAssociationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InstanceNetworkInterfaceAssociationBuilder b) {}

  /// The carrier IP address associated with the network interface.
  String? get carrierIp;

  /// The customer-owned IP address associated with the network interface.
  String? get customerOwnedIp;

  /// The ID of the owner of the Elastic IP address.
  String? get ipOwnerId;

  /// The public DNS name.
  String? get publicDnsName;

  /// The public IP address or Elastic IP address bound to the network interface.
  String? get publicIp;
  @override
  List<Object?> get props => [
        carrierIp,
        customerOwnedIp,
        ipOwnerId,
        publicDnsName,
        publicIp,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('InstanceNetworkInterfaceAssociation');
    helper.add(
      'carrierIp',
      carrierIp,
    );
    helper.add(
      'customerOwnedIp',
      customerOwnedIp,
    );
    helper.add(
      'ipOwnerId',
      ipOwnerId,
    );
    helper.add(
      'publicDnsName',
      publicDnsName,
    );
    helper.add(
      'publicIp',
      publicIp,
    );
    return helper.toString();
  }
}

class InstanceNetworkInterfaceAssociationEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<InstanceNetworkInterfaceAssociation> {
  const InstanceNetworkInterfaceAssociationEc2QuerySerializer()
      : super('InstanceNetworkInterfaceAssociation');

  @override
  Iterable<Type> get types => const [
        InstanceNetworkInterfaceAssociation,
        _$InstanceNetworkInterfaceAssociation,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceNetworkInterfaceAssociation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceNetworkInterfaceAssociationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'carrierIp':
          if (value != null) {
            result.carrierIp = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'customerOwnedIp':
          if (value != null) {
            result.customerOwnedIp = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ipOwnerId':
          if (value != null) {
            result.ipOwnerId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'publicDnsName':
          if (value != null) {
            result.publicDnsName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'publicIp':
          if (value != null) {
            result.publicIp = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as InstanceNetworkInterfaceAssociation);
    final result = <Object?>[
      const _i2.XmlElementName(
        'InstanceNetworkInterfaceAssociationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.carrierIp != null) {
      result
        ..add(const _i2.XmlElementName('CarrierIp'))
        ..add(serializers.serialize(
          payload.carrierIp!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.customerOwnedIp != null) {
      result
        ..add(const _i2.XmlElementName('CustomerOwnedIp'))
        ..add(serializers.serialize(
          payload.customerOwnedIp!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.ipOwnerId != null) {
      result
        ..add(const _i2.XmlElementName('IpOwnerId'))
        ..add(serializers.serialize(
          payload.ipOwnerId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.publicDnsName != null) {
      result
        ..add(const _i2.XmlElementName('PublicDnsName'))
        ..add(serializers.serialize(
          payload.publicDnsName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.publicIp != null) {
      result
        ..add(const _i2.XmlElementName('PublicIp'))
        ..add(serializers.serialize(
          payload.publicIp!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
