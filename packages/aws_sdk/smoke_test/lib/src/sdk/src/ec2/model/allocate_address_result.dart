// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.allocate_address_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/domain_type.dart' as _i2;

part 'allocate_address_result.g.dart';

abstract class AllocateAddressResult
    with _i1.AWSEquatable<AllocateAddressResult>
    implements Built<AllocateAddressResult, AllocateAddressResultBuilder> {
  factory AllocateAddressResult({
    String? publicIp,
    String? allocationId,
    String? publicIpv4Pool,
    String? networkBorderGroup,
    _i2.DomainType? domain,
    String? customerOwnedIp,
    String? customerOwnedIpv4Pool,
    String? carrierIp,
  }) {
    return _$AllocateAddressResult._(
      publicIp: publicIp,
      allocationId: allocationId,
      publicIpv4Pool: publicIpv4Pool,
      networkBorderGroup: networkBorderGroup,
      domain: domain,
      customerOwnedIp: customerOwnedIp,
      customerOwnedIpv4Pool: customerOwnedIpv4Pool,
      carrierIp: carrierIp,
    );
  }

  factory AllocateAddressResult.build(
          [void Function(AllocateAddressResultBuilder) updates]) =
      _$AllocateAddressResult;

  const AllocateAddressResult._();

  /// Constructs a [AllocateAddressResult] from a [payload] and [response].
  factory AllocateAddressResult.fromResponse(
    AllocateAddressResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    AllocateAddressResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AllocateAddressResultBuilder b) {}

  /// The Elastic IP address.
  String? get publicIp;

  /// \[EC2-VPC\] The ID that Amazon Web Services assigns to represent the allocation of the Elastic IP address for use with instances in a VPC.
  String? get allocationId;

  /// The ID of an address pool.
  String? get publicIpv4Pool;

  /// The set of Availability Zones, Local Zones, or Wavelength Zones from which Amazon Web Services advertises IP addresses.
  String? get networkBorderGroup;

  /// Indicates whether the Elastic IP address is for use with instances in a VPC (`vpc`) or instances in EC2-Classic (`standard`).
  _i2.DomainType? get domain;

  /// The customer-owned IP address.
  String? get customerOwnedIp;

  /// The ID of the customer-owned address pool.
  String? get customerOwnedIpv4Pool;

  /// The carrier IP address. This option is only available for network interfaces which reside in a subnet in a Wavelength Zone (for example an EC2 instance).
  String? get carrierIp;
  @override
  List<Object?> get props => [
        publicIp,
        allocationId,
        publicIpv4Pool,
        networkBorderGroup,
        domain,
        customerOwnedIp,
        customerOwnedIpv4Pool,
        carrierIp,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AllocateAddressResult');
    helper.add(
      'publicIp',
      publicIp,
    );
    helper.add(
      'allocationId',
      allocationId,
    );
    helper.add(
      'publicIpv4Pool',
      publicIpv4Pool,
    );
    helper.add(
      'networkBorderGroup',
      networkBorderGroup,
    );
    helper.add(
      'domain',
      domain,
    );
    helper.add(
      'customerOwnedIp',
      customerOwnedIp,
    );
    helper.add(
      'customerOwnedIpv4Pool',
      customerOwnedIpv4Pool,
    );
    helper.add(
      'carrierIp',
      carrierIp,
    );
    return helper.toString();
  }
}

class AllocateAddressResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<AllocateAddressResult> {
  const AllocateAddressResultEc2QuerySerializer()
      : super('AllocateAddressResult');

  @override
  Iterable<Type> get types => const [
        AllocateAddressResult,
        _$AllocateAddressResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AllocateAddressResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AllocateAddressResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'publicIp':
          if (value != null) {
            result.publicIp = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'allocationId':
          if (value != null) {
            result.allocationId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'publicIpv4Pool':
          if (value != null) {
            result.publicIpv4Pool = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'networkBorderGroup':
          if (value != null) {
            result.networkBorderGroup = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'domain':
          if (value != null) {
            result.domain = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.DomainType),
            ) as _i2.DomainType);
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
        case 'customerOwnedIpv4Pool':
          if (value != null) {
            result.customerOwnedIpv4Pool = (serializers.deserialize(
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
    final payload = (object as AllocateAddressResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'AllocateAddressResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.publicIp != null) {
      result
        ..add(const _i3.XmlElementName('PublicIp'))
        ..add(serializers.serialize(
          payload.publicIp!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.allocationId != null) {
      result
        ..add(const _i3.XmlElementName('AllocationId'))
        ..add(serializers.serialize(
          payload.allocationId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.publicIpv4Pool != null) {
      result
        ..add(const _i3.XmlElementName('PublicIpv4Pool'))
        ..add(serializers.serialize(
          payload.publicIpv4Pool!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.networkBorderGroup != null) {
      result
        ..add(const _i3.XmlElementName('NetworkBorderGroup'))
        ..add(serializers.serialize(
          payload.networkBorderGroup!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.domain != null) {
      result
        ..add(const _i3.XmlElementName('Domain'))
        ..add(serializers.serialize(
          payload.domain!,
          specifiedType: const FullType.nullable(_i2.DomainType),
        ));
    }
    if (payload.customerOwnedIp != null) {
      result
        ..add(const _i3.XmlElementName('CustomerOwnedIp'))
        ..add(serializers.serialize(
          payload.customerOwnedIp!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.customerOwnedIpv4Pool != null) {
      result
        ..add(const _i3.XmlElementName('CustomerOwnedIpv4Pool'))
        ..add(serializers.serialize(
          payload.customerOwnedIpv4Pool!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.carrierIp != null) {
      result
        ..add(const _i3.XmlElementName('CarrierIp'))
        ..add(serializers.serialize(
          payload.carrierIp!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
