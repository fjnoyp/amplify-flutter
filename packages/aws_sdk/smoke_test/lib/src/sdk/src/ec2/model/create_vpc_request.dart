// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_vpc_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/tenancy.dart' as _i3;

part 'create_vpc_request.g.dart';

abstract class CreateVpcRequest
    with _i1.HttpInput<CreateVpcRequest>, _i2.AWSEquatable<CreateVpcRequest>
    implements Built<CreateVpcRequest, CreateVpcRequestBuilder> {
  factory CreateVpcRequest({
    String? cidrBlock,
    bool? amazonProvidedIpv6CidrBlock,
    String? ipv6Pool,
    String? ipv6CidrBlock,
    String? ipv4IpamPoolId,
    int? ipv4NetmaskLength,
    String? ipv6IpamPoolId,
    int? ipv6NetmaskLength,
    bool? dryRun,
    _i3.Tenancy? instanceTenancy,
    String? ipv6CidrBlockNetworkBorderGroup,
    List<_i4.TagSpecification>? tagSpecifications,
  }) {
    amazonProvidedIpv6CidrBlock ??= false;
    dryRun ??= false;
    return _$CreateVpcRequest._(
      cidrBlock: cidrBlock,
      amazonProvidedIpv6CidrBlock: amazonProvidedIpv6CidrBlock,
      ipv6Pool: ipv6Pool,
      ipv6CidrBlock: ipv6CidrBlock,
      ipv4IpamPoolId: ipv4IpamPoolId,
      ipv4NetmaskLength: ipv4NetmaskLength,
      ipv6IpamPoolId: ipv6IpamPoolId,
      ipv6NetmaskLength: ipv6NetmaskLength,
      dryRun: dryRun,
      instanceTenancy: instanceTenancy,
      ipv6CidrBlockNetworkBorderGroup: ipv6CidrBlockNetworkBorderGroup,
      tagSpecifications:
          tagSpecifications == null ? null : _i5.BuiltList(tagSpecifications),
    );
  }

  factory CreateVpcRequest.build(
      [void Function(CreateVpcRequestBuilder) updates]) = _$CreateVpcRequest;

  const CreateVpcRequest._();

  factory CreateVpcRequest.fromRequest(
    CreateVpcRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    CreateVpcRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateVpcRequestBuilder b) {
    b.amazonProvidedIpv6CidrBlock = false;
    b.dryRun = false;
  }

  /// The IPv4 network range for the VPC, in CIDR notation. For example, `10.0.0.0/16`. We modify the specified CIDR block to its canonical form; for example, if you specify `100.68.0.18/18`, we modify it to `100.68.0.0/18`.
  String? get cidrBlock;

  /// Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC. You cannot specify the range of IP addresses, or the size of the CIDR block.
  bool get amazonProvidedIpv6CidrBlock;

  /// The ID of an IPv6 address pool from which to allocate the IPv6 CIDR block.
  String? get ipv6Pool;

  /// The IPv6 CIDR block from the IPv6 address pool. You must also specify `Ipv6Pool` in the request.
  ///
  /// To let Amazon choose the IPv6 CIDR block for you, omit this parameter.
  String? get ipv6CidrBlock;

  /// The ID of an IPv4 IPAM pool you want to use for allocating this VPC's CIDR. For more information, see [What is IPAM?](https://docs.aws.amazon.com/vpc/latest/ipam/what-is-it-ipam.html) in the _Amazon VPC IPAM User Guide_.
  String? get ipv4IpamPoolId;

  /// The netmask length of the IPv4 CIDR you want to allocate to this VPC from an Amazon VPC IP Address Manager (IPAM) pool. For more information about IPAM, see [What is IPAM?](https://docs.aws.amazon.com/vpc/latest/ipam/what-is-it-ipam.html) in the _Amazon VPC IPAM User Guide_.
  int? get ipv4NetmaskLength;

  /// The ID of an IPv6 IPAM pool which will be used to allocate this VPC an IPv6 CIDR. IPAM is a VPC feature that you can use to automate your IP address management workflows including assigning, tracking, troubleshooting, and auditing IP addresses across Amazon Web Services Regions and accounts throughout your Amazon Web Services Organization. For more information, see [What is IPAM?](https://docs.aws.amazon.com/vpc/latest/ipam/what-is-it-ipam.html) in the _Amazon VPC IPAM User Guide_.
  String? get ipv6IpamPoolId;

  /// The netmask length of the IPv6 CIDR you want to allocate to this VPC from an Amazon VPC IP Address Manager (IPAM) pool. For more information about IPAM, see [What is IPAM?](https://docs.aws.amazon.com/vpc/latest/ipam/what-is-it-ipam.html) in the _Amazon VPC IPAM User Guide_.
  int? get ipv6NetmaskLength;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The tenancy options for instances launched into the VPC. For `default`, instances are launched with shared tenancy by default. You can launch instances with any tenancy into a shared tenancy VPC. For `dedicated`, instances are launched as dedicated tenancy instances by default. You can only launch instances with a tenancy of `dedicated` or `host` into a dedicated tenancy VPC.
  ///
  /// **Important:** The `host` value cannot be used with this parameter. Use the `default` or `dedicated` values only.
  ///
  /// Default: `default`
  _i3.Tenancy? get instanceTenancy;

  /// The name of the location from which we advertise the IPV6 CIDR block. Use this parameter to limit the address to this location.
  ///
  /// You must set `AmazonProvidedIpv6CidrBlock` to `true` to use this parameter.
  String? get ipv6CidrBlockNetworkBorderGroup;

  /// The tags to assign to the VPC.
  _i5.BuiltList<_i4.TagSpecification>? get tagSpecifications;
  @override
  CreateVpcRequest getPayload() => this;
  @override
  List<Object?> get props => [
        cidrBlock,
        amazonProvidedIpv6CidrBlock,
        ipv6Pool,
        ipv6CidrBlock,
        ipv4IpamPoolId,
        ipv4NetmaskLength,
        ipv6IpamPoolId,
        ipv6NetmaskLength,
        dryRun,
        instanceTenancy,
        ipv6CidrBlockNetworkBorderGroup,
        tagSpecifications,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateVpcRequest');
    helper.add(
      'cidrBlock',
      cidrBlock,
    );
    helper.add(
      'amazonProvidedIpv6CidrBlock',
      amazonProvidedIpv6CidrBlock,
    );
    helper.add(
      'ipv6Pool',
      ipv6Pool,
    );
    helper.add(
      'ipv6CidrBlock',
      ipv6CidrBlock,
    );
    helper.add(
      'ipv4IpamPoolId',
      ipv4IpamPoolId,
    );
    helper.add(
      'ipv4NetmaskLength',
      ipv4NetmaskLength,
    );
    helper.add(
      'ipv6IpamPoolId',
      ipv6IpamPoolId,
    );
    helper.add(
      'ipv6NetmaskLength',
      ipv6NetmaskLength,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'instanceTenancy',
      instanceTenancy,
    );
    helper.add(
      'ipv6CidrBlockNetworkBorderGroup',
      ipv6CidrBlockNetworkBorderGroup,
    );
    helper.add(
      'tagSpecifications',
      tagSpecifications,
    );
    return helper.toString();
  }
}

class CreateVpcRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateVpcRequest> {
  const CreateVpcRequestEc2QuerySerializer() : super('CreateVpcRequest');

  @override
  Iterable<Type> get types => const [
        CreateVpcRequest,
        _$CreateVpcRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateVpcRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateVpcRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'CidrBlock':
          if (value != null) {
            result.cidrBlock = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'amazonProvidedIpv6CidrBlock':
          result.amazonProvidedIpv6CidrBlock = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'Ipv6Pool':
          if (value != null) {
            result.ipv6Pool = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Ipv6CidrBlock':
          if (value != null) {
            result.ipv6CidrBlock = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Ipv4IpamPoolId':
          if (value != null) {
            result.ipv4IpamPoolId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Ipv4NetmaskLength':
          if (value != null) {
            result.ipv4NetmaskLength = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'Ipv6IpamPoolId':
          if (value != null) {
            result.ipv6IpamPoolId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Ipv6NetmaskLength':
          if (value != null) {
            result.ipv6NetmaskLength = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'instanceTenancy':
          if (value != null) {
            result.instanceTenancy = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.Tenancy),
            ) as _i3.Tenancy);
          }
          break;
        case 'Ipv6CidrBlockNetworkBorderGroup':
          if (value != null) {
            result.ipv6CidrBlockNetworkBorderGroup = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
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
    final payload = (object as CreateVpcRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'CreateVpcRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.cidrBlock != null) {
      result
        ..add(const _i1.XmlElementName('CidrBlock'))
        ..add(serializers.serialize(
          payload.cidrBlock!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('AmazonProvidedIpv6CidrBlock'))
      ..add(serializers.serialize(
        payload.amazonProvidedIpv6CidrBlock,
        specifiedType: const FullType(bool),
      ));
    if (payload.ipv6Pool != null) {
      result
        ..add(const _i1.XmlElementName('Ipv6Pool'))
        ..add(serializers.serialize(
          payload.ipv6Pool!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.ipv6CidrBlock != null) {
      result
        ..add(const _i1.XmlElementName('Ipv6CidrBlock'))
        ..add(serializers.serialize(
          payload.ipv6CidrBlock!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.ipv4IpamPoolId != null) {
      result
        ..add(const _i1.XmlElementName('Ipv4IpamPoolId'))
        ..add(serializers.serialize(
          payload.ipv4IpamPoolId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.ipv4NetmaskLength != null) {
      result
        ..add(const _i1.XmlElementName('Ipv4NetmaskLength'))
        ..add(serializers.serialize(
          payload.ipv4NetmaskLength!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (payload.ipv6IpamPoolId != null) {
      result
        ..add(const _i1.XmlElementName('Ipv6IpamPoolId'))
        ..add(serializers.serialize(
          payload.ipv6IpamPoolId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.ipv6NetmaskLength != null) {
      result
        ..add(const _i1.XmlElementName('Ipv6NetmaskLength'))
        ..add(serializers.serialize(
          payload.ipv6NetmaskLength!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    if (payload.instanceTenancy != null) {
      result
        ..add(const _i1.XmlElementName('InstanceTenancy'))
        ..add(serializers.serialize(
          payload.instanceTenancy!,
          specifiedType: const FullType.nullable(_i3.Tenancy),
        ));
    }
    if (payload.ipv6CidrBlockNetworkBorderGroup != null) {
      result
        ..add(const _i1.XmlElementName('Ipv6CidrBlockNetworkBorderGroup'))
        ..add(serializers.serialize(
          payload.ipv6CidrBlockNetworkBorderGroup!,
          specifiedType: const FullType(String),
        ));
    }
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
