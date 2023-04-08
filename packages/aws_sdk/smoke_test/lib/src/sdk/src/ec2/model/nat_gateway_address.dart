// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.nat_gateway_address; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'nat_gateway_address.g.dart';

/// Describes the IP addresses and network interface associated with a NAT gateway.
abstract class NatGatewayAddress
    with _i1.AWSEquatable<NatGatewayAddress>
    implements Built<NatGatewayAddress, NatGatewayAddressBuilder> {
  /// Describes the IP addresses and network interface associated with a NAT gateway.
  factory NatGatewayAddress({
    String? allocationId,
    String? networkInterfaceId,
    String? privateIp,
    String? publicIp,
  }) {
    return _$NatGatewayAddress._(
      allocationId: allocationId,
      networkInterfaceId: networkInterfaceId,
      privateIp: privateIp,
      publicIp: publicIp,
    );
  }

  /// Describes the IP addresses and network interface associated with a NAT gateway.
  factory NatGatewayAddress.build(
      [void Function(NatGatewayAddressBuilder) updates]) = _$NatGatewayAddress;

  const NatGatewayAddress._();

  static const List<_i2.SmithySerializer> serializers = [
    NatGatewayAddressEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NatGatewayAddressBuilder b) {}

  /// \[Public NAT gateway only\] The allocation ID of the Elastic IP address that's associated with the NAT gateway.
  String? get allocationId;

  /// The ID of the network interface associated with the NAT gateway.
  String? get networkInterfaceId;

  /// The private IP address associated with the NAT gateway.
  String? get privateIp;

  /// \[Public NAT gateway only\] The Elastic IP address associated with the NAT gateway.
  String? get publicIp;
  @override
  List<Object?> get props => [
        allocationId,
        networkInterfaceId,
        privateIp,
        publicIp,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NatGatewayAddress');
    helper.add(
      'allocationId',
      allocationId,
    );
    helper.add(
      'networkInterfaceId',
      networkInterfaceId,
    );
    helper.add(
      'privateIp',
      privateIp,
    );
    helper.add(
      'publicIp',
      publicIp,
    );
    return helper.toString();
  }
}

class NatGatewayAddressEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<NatGatewayAddress> {
  const NatGatewayAddressEc2QuerySerializer() : super('NatGatewayAddress');

  @override
  Iterable<Type> get types => const [
        NatGatewayAddress,
        _$NatGatewayAddress,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  NatGatewayAddress deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NatGatewayAddressBuilder();
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
        case 'networkInterfaceId':
          if (value != null) {
            result.networkInterfaceId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'privateIp':
          if (value != null) {
            result.privateIp = (serializers.deserialize(
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
    final payload = (object as NatGatewayAddress);
    final result = <Object?>[
      const _i2.XmlElementName(
        'NatGatewayAddressResponse',
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
    if (payload.networkInterfaceId != null) {
      result
        ..add(const _i2.XmlElementName('NetworkInterfaceId'))
        ..add(serializers.serialize(
          payload.networkInterfaceId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.privateIp != null) {
      result
        ..add(const _i2.XmlElementName('PrivateIp'))
        ..add(serializers.serialize(
          payload.privateIp!,
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
