// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.network_interface_association; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'network_interface_association.g.dart';

/// Describes association information for an Elastic IP address (IPv4 only), or a Carrier IP address (for a network interface which resides in a subnet in a Wavelength Zone).
abstract class NetworkInterfaceAssociation
    with _i1.AWSEquatable<NetworkInterfaceAssociation>
    implements
        Built<NetworkInterfaceAssociation, NetworkInterfaceAssociationBuilder> {
  /// Describes association information for an Elastic IP address (IPv4 only), or a Carrier IP address (for a network interface which resides in a subnet in a Wavelength Zone).
  factory NetworkInterfaceAssociation({
    String? allocationId,
    String? associationId,
    String? ipOwnerId,
    String? publicDnsName,
    String? publicIp,
    String? customerOwnedIp,
    String? carrierIp,
  }) {
    return _$NetworkInterfaceAssociation._(
      allocationId: allocationId,
      associationId: associationId,
      ipOwnerId: ipOwnerId,
      publicDnsName: publicDnsName,
      publicIp: publicIp,
      customerOwnedIp: customerOwnedIp,
      carrierIp: carrierIp,
    );
  }

  /// Describes association information for an Elastic IP address (IPv4 only), or a Carrier IP address (for a network interface which resides in a subnet in a Wavelength Zone).
  factory NetworkInterfaceAssociation.build(
          [void Function(NetworkInterfaceAssociationBuilder) updates]) =
      _$NetworkInterfaceAssociation;

  const NetworkInterfaceAssociation._();

  static const List<_i2.SmithySerializer> serializers = [
    NetworkInterfaceAssociationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NetworkInterfaceAssociationBuilder b) {}

  /// The allocation ID.
  String? get allocationId;

  /// The association ID.
  String? get associationId;

  /// The ID of the Elastic IP address owner.
  String? get ipOwnerId;

  /// The public DNS name.
  String? get publicDnsName;

  /// The address of the Elastic IP address bound to the network interface.
  String? get publicIp;

  /// The customer-owned IP address associated with the network interface.
  String? get customerOwnedIp;

  /// The carrier IP address associated with the network interface.
  ///
  /// This option is only available when the network interface is in a subnet which is associated with a Wavelength Zone.
  String? get carrierIp;
  @override
  List<Object?> get props => [
        allocationId,
        associationId,
        ipOwnerId,
        publicDnsName,
        publicIp,
        customerOwnedIp,
        carrierIp,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NetworkInterfaceAssociation');
    helper.add(
      'allocationId',
      allocationId,
    );
    helper.add(
      'associationId',
      associationId,
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
    helper.add(
      'customerOwnedIp',
      customerOwnedIp,
    );
    helper.add(
      'carrierIp',
      carrierIp,
    );
    return helper.toString();
  }
}

class NetworkInterfaceAssociationEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<NetworkInterfaceAssociation> {
  const NetworkInterfaceAssociationEc2QuerySerializer()
      : super('NetworkInterfaceAssociation');

  @override
  Iterable<Type> get types => const [
        NetworkInterfaceAssociation,
        _$NetworkInterfaceAssociation,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  NetworkInterfaceAssociation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NetworkInterfaceAssociationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'allocationId':
          if (value != null) {
            result.allocationId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'associationId':
          if (value != null) {
            result.associationId = (serializers.deserialize(
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
        case 'customerOwnedIp':
          if (value != null) {
            result.customerOwnedIp = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'carrierIp':
          if (value != null) {
            result.carrierIp = (serializers.deserialize(
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
    final payload = (object as NetworkInterfaceAssociation);
    final result = <Object?>[
      const _i2.XmlElementName(
        'NetworkInterfaceAssociationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.allocationId != null) {
      result
        ..add(const _i2.XmlElementName('AllocationId'))
        ..add(serializers.serialize(
          payload.allocationId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.associationId != null) {
      result
        ..add(const _i2.XmlElementName('AssociationId'))
        ..add(serializers.serialize(
          payload.associationId!,
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
    if (payload.customerOwnedIp != null) {
      result
        ..add(const _i2.XmlElementName('CustomerOwnedIp'))
        ..add(serializers.serialize(
          payload.customerOwnedIp!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.carrierIp != null) {
      result
        ..add(const _i2.XmlElementName('CarrierIp'))
        ..add(serializers.serialize(
          payload.carrierIp!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
