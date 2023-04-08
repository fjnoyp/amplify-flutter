// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.associate_vpc_cidr_block_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_cidr_block_association.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_ipv6_cidr_block_association.dart'
    as _i2;

part 'associate_vpc_cidr_block_result.g.dart';

abstract class AssociateVpcCidrBlockResult
    with _i1.AWSEquatable<AssociateVpcCidrBlockResult>
    implements
        Built<AssociateVpcCidrBlockResult, AssociateVpcCidrBlockResultBuilder> {
  factory AssociateVpcCidrBlockResult({
    _i2.VpcIpv6CidrBlockAssociation? ipv6CidrBlockAssociation,
    _i3.VpcCidrBlockAssociation? cidrBlockAssociation,
    String? vpcId,
  }) {
    return _$AssociateVpcCidrBlockResult._(
      ipv6CidrBlockAssociation: ipv6CidrBlockAssociation,
      cidrBlockAssociation: cidrBlockAssociation,
      vpcId: vpcId,
    );
  }

  factory AssociateVpcCidrBlockResult.build(
          [void Function(AssociateVpcCidrBlockResultBuilder) updates]) =
      _$AssociateVpcCidrBlockResult;

  const AssociateVpcCidrBlockResult._();

  /// Constructs a [AssociateVpcCidrBlockResult] from a [payload] and [response].
  factory AssociateVpcCidrBlockResult.fromResponse(
    AssociateVpcCidrBlockResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    AssociateVpcCidrBlockResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AssociateVpcCidrBlockResultBuilder b) {}

  /// Information about the IPv6 CIDR block association.
  _i2.VpcIpv6CidrBlockAssociation? get ipv6CidrBlockAssociation;

  /// Information about the IPv4 CIDR block association.
  _i3.VpcCidrBlockAssociation? get cidrBlockAssociation;

  /// The ID of the VPC.
  String? get vpcId;
  @override
  List<Object?> get props => [
        ipv6CidrBlockAssociation,
        cidrBlockAssociation,
        vpcId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AssociateVpcCidrBlockResult');
    helper.add(
      'ipv6CidrBlockAssociation',
      ipv6CidrBlockAssociation,
    );
    helper.add(
      'cidrBlockAssociation',
      cidrBlockAssociation,
    );
    helper.add(
      'vpcId',
      vpcId,
    );
    return helper.toString();
  }
}

class AssociateVpcCidrBlockResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<AssociateVpcCidrBlockResult> {
  const AssociateVpcCidrBlockResultEc2QuerySerializer()
      : super('AssociateVpcCidrBlockResult');

  @override
  Iterable<Type> get types => const [
        AssociateVpcCidrBlockResult,
        _$AssociateVpcCidrBlockResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AssociateVpcCidrBlockResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssociateVpcCidrBlockResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ipv6CidrBlockAssociation':
          if (value != null) {
            result.ipv6CidrBlockAssociation.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.VpcIpv6CidrBlockAssociation),
            ) as _i2.VpcIpv6CidrBlockAssociation));
          }
          break;
        case 'cidrBlockAssociation':
          if (value != null) {
            result.cidrBlockAssociation.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.VpcCidrBlockAssociation),
            ) as _i3.VpcCidrBlockAssociation));
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
    final payload = (object as AssociateVpcCidrBlockResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'AssociateVpcCidrBlockResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.ipv6CidrBlockAssociation != null) {
      result
        ..add(const _i4.XmlElementName('Ipv6CidrBlockAssociation'))
        ..add(serializers.serialize(
          payload.ipv6CidrBlockAssociation!,
          specifiedType: const FullType(_i2.VpcIpv6CidrBlockAssociation),
        ));
    }
    if (payload.cidrBlockAssociation != null) {
      result
        ..add(const _i4.XmlElementName('CidrBlockAssociation'))
        ..add(serializers.serialize(
          payload.cidrBlockAssociation!,
          specifiedType: const FullType(_i3.VpcCidrBlockAssociation),
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
    return result;
  }
}
