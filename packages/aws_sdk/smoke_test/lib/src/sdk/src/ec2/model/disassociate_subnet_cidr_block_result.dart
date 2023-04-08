// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.disassociate_subnet_cidr_block_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/subnet_ipv6_cidr_block_association.dart'
    as _i2;

part 'disassociate_subnet_cidr_block_result.g.dart';

abstract class DisassociateSubnetCidrBlockResult
    with
        _i1.AWSEquatable<DisassociateSubnetCidrBlockResult>
    implements
        Built<DisassociateSubnetCidrBlockResult,
            DisassociateSubnetCidrBlockResultBuilder> {
  factory DisassociateSubnetCidrBlockResult({
    _i2.SubnetIpv6CidrBlockAssociation? ipv6CidrBlockAssociation,
    String? subnetId,
  }) {
    return _$DisassociateSubnetCidrBlockResult._(
      ipv6CidrBlockAssociation: ipv6CidrBlockAssociation,
      subnetId: subnetId,
    );
  }

  factory DisassociateSubnetCidrBlockResult.build(
          [void Function(DisassociateSubnetCidrBlockResultBuilder) updates]) =
      _$DisassociateSubnetCidrBlockResult;

  const DisassociateSubnetCidrBlockResult._();

  /// Constructs a [DisassociateSubnetCidrBlockResult] from a [payload] and [response].
  factory DisassociateSubnetCidrBlockResult.fromResponse(
    DisassociateSubnetCidrBlockResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    DisassociateSubnetCidrBlockResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DisassociateSubnetCidrBlockResultBuilder b) {}

  /// Information about the IPv6 CIDR block association.
  _i2.SubnetIpv6CidrBlockAssociation? get ipv6CidrBlockAssociation;

  /// The ID of the subnet.
  String? get subnetId;
  @override
  List<Object?> get props => [
        ipv6CidrBlockAssociation,
        subnetId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DisassociateSubnetCidrBlockResult');
    helper.add(
      'ipv6CidrBlockAssociation',
      ipv6CidrBlockAssociation,
    );
    helper.add(
      'subnetId',
      subnetId,
    );
    return helper.toString();
  }
}

class DisassociateSubnetCidrBlockResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DisassociateSubnetCidrBlockResult> {
  const DisassociateSubnetCidrBlockResultEc2QuerySerializer()
      : super('DisassociateSubnetCidrBlockResult');

  @override
  Iterable<Type> get types => const [
        DisassociateSubnetCidrBlockResult,
        _$DisassociateSubnetCidrBlockResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DisassociateSubnetCidrBlockResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DisassociateSubnetCidrBlockResultBuilder();
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
              specifiedType: const FullType(_i2.SubnetIpv6CidrBlockAssociation),
            ) as _i2.SubnetIpv6CidrBlockAssociation));
          }
          break;
        case 'subnetId':
          if (value != null) {
            result.subnetId = (serializers.deserialize(
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
    final payload = (object as DisassociateSubnetCidrBlockResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'DisassociateSubnetCidrBlockResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.ipv6CidrBlockAssociation != null) {
      result
        ..add(const _i3.XmlElementName('Ipv6CidrBlockAssociation'))
        ..add(serializers.serialize(
          payload.ipv6CidrBlockAssociation!,
          specifiedType: const FullType(_i2.SubnetIpv6CidrBlockAssociation),
        ));
    }
    if (payload.subnetId != null) {
      result
        ..add(const _i3.XmlElementName('SubnetId'))
        ..add(serializers.serialize(
          payload.subnetId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
