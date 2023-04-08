// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.allocate_address_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/domain_type.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart' as _i4;

part 'allocate_address_request.g.dart';

abstract class AllocateAddressRequest
    with
        _i1.HttpInput<AllocateAddressRequest>,
        _i2.AWSEquatable<AllocateAddressRequest>
    implements Built<AllocateAddressRequest, AllocateAddressRequestBuilder> {
  factory AllocateAddressRequest({
    _i3.DomainType? domain,
    String? address,
    String? publicIpv4Pool,
    String? networkBorderGroup,
    String? customerOwnedIpv4Pool,
    bool? dryRun,
    List<_i4.TagSpecification>? tagSpecifications,
  }) {
    dryRun ??= false;
    return _$AllocateAddressRequest._(
      domain: domain,
      address: address,
      publicIpv4Pool: publicIpv4Pool,
      networkBorderGroup: networkBorderGroup,
      customerOwnedIpv4Pool: customerOwnedIpv4Pool,
      dryRun: dryRun,
      tagSpecifications:
          tagSpecifications == null ? null : _i5.BuiltList(tagSpecifications),
    );
  }

  factory AllocateAddressRequest.build(
          [void Function(AllocateAddressRequestBuilder) updates]) =
      _$AllocateAddressRequest;

  const AllocateAddressRequest._();

  factory AllocateAddressRequest.fromRequest(
    AllocateAddressRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    AllocateAddressRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AllocateAddressRequestBuilder b) {
    b.dryRun = false;
  }

  /// Indicates whether the Elastic IP address is for use with instances in a VPC or instances in EC2-Classic.
  ///
  /// Default: If the Region supports EC2-Classic, the default is `standard`. Otherwise, the default is `vpc`.
  _i3.DomainType? get domain;

  /// \[EC2-VPC\] The Elastic IP address to recover or an IPv4 address from an address pool.
  String? get address;

  /// The ID of an address pool that you own. Use this parameter to let Amazon EC2 select an address from the address pool. To specify a specific address from the address pool, use the `Address` parameter instead.
  String? get publicIpv4Pool;

  /// A unique set of Availability Zones, Local Zones, or Wavelength Zones from which Amazon Web Services advertises IP addresses. Use this parameter to limit the IP address to this location. IP addresses cannot move between network border groups.
  ///
  /// Use [DescribeAvailabilityZones](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeAvailabilityZones.html) to view the network border groups.
  ///
  /// You cannot use a network border group with EC2 Classic. If you attempt this operation on EC2 Classic, you receive an `InvalidParameterCombination` error.
  String? get networkBorderGroup;

  /// The ID of a customer-owned address pool. Use this parameter to let Amazon EC2 select an address from the address pool. Alternatively, specify a specific address from the address pool.
  String? get customerOwnedIpv4Pool;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The tags to assign to the Elastic IP address.
  _i5.BuiltList<_i4.TagSpecification>? get tagSpecifications;
  @override
  AllocateAddressRequest getPayload() => this;
  @override
  List<Object?> get props => [
        domain,
        address,
        publicIpv4Pool,
        networkBorderGroup,
        customerOwnedIpv4Pool,
        dryRun,
        tagSpecifications,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AllocateAddressRequest');
    helper.add(
      'domain',
      domain,
    );
    helper.add(
      'address',
      address,
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
      'customerOwnedIpv4Pool',
      customerOwnedIpv4Pool,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'tagSpecifications',
      tagSpecifications,
    );
    return helper.toString();
  }
}

class AllocateAddressRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<AllocateAddressRequest> {
  const AllocateAddressRequestEc2QuerySerializer()
      : super('AllocateAddressRequest');

  @override
  Iterable<Type> get types => const [
        AllocateAddressRequest,
        _$AllocateAddressRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AllocateAddressRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AllocateAddressRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Domain':
          if (value != null) {
            result.domain = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.DomainType),
            ) as _i3.DomainType);
          }
          break;
        case 'Address':
          if (value != null) {
            result.address = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'PublicIpv4Pool':
          if (value != null) {
            result.publicIpv4Pool = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'NetworkBorderGroup':
          if (value != null) {
            result.networkBorderGroup = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'CustomerOwnedIpv4Pool':
          if (value != null) {
            result.customerOwnedIpv4Pool = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'TagSpecification':
          if (value != null) {
            result.tagSpecifications.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(_i4.TagSpecification)],
              ),
            ) as _i5.BuiltList<_i4.TagSpecification>));
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
    final payload = (object as AllocateAddressRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'AllocateAddressRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.domain != null) {
      result
        ..add(const _i1.XmlElementName('Domain'))
        ..add(serializers.serialize(
          payload.domain!,
          specifiedType: const FullType.nullable(_i3.DomainType),
        ));
    }
    if (payload.address != null) {
      result
        ..add(const _i1.XmlElementName('Address'))
        ..add(serializers.serialize(
          payload.address!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.publicIpv4Pool != null) {
      result
        ..add(const _i1.XmlElementName('PublicIpv4Pool'))
        ..add(serializers.serialize(
          payload.publicIpv4Pool!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.networkBorderGroup != null) {
      result
        ..add(const _i1.XmlElementName('NetworkBorderGroup'))
        ..add(serializers.serialize(
          payload.networkBorderGroup!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.customerOwnedIpv4Pool != null) {
      result
        ..add(const _i1.XmlElementName('CustomerOwnedIpv4Pool'))
        ..add(serializers.serialize(
          payload.customerOwnedIpv4Pool!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    if (payload.tagSpecifications != null) {
      result
        ..add(const _i1.XmlElementName('TagSpecification'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tagSpecifications!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i4.TagSpecification)],
          ),
        ));
    }
    return result;
  }
}
