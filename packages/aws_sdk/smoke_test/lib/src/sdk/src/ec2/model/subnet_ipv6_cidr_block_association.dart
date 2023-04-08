// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.subnet_ipv6_cidr_block_association; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/subnet_cidr_block_state.dart'
    as _i2;

part 'subnet_ipv6_cidr_block_association.g.dart';

/// Describes an association between a subnet and an IPv6 CIDR block.
abstract class SubnetIpv6CidrBlockAssociation
    with
        _i1.AWSEquatable<SubnetIpv6CidrBlockAssociation>
    implements
        Built<SubnetIpv6CidrBlockAssociation,
            SubnetIpv6CidrBlockAssociationBuilder> {
  /// Describes an association between a subnet and an IPv6 CIDR block.
  factory SubnetIpv6CidrBlockAssociation({
    String? associationId,
    String? ipv6CidrBlock,
    _i2.SubnetCidrBlockState? ipv6CidrBlockState,
  }) {
    return _$SubnetIpv6CidrBlockAssociation._(
      associationId: associationId,
      ipv6CidrBlock: ipv6CidrBlock,
      ipv6CidrBlockState: ipv6CidrBlockState,
    );
  }

  /// Describes an association between a subnet and an IPv6 CIDR block.
  factory SubnetIpv6CidrBlockAssociation.build(
          [void Function(SubnetIpv6CidrBlockAssociationBuilder) updates]) =
      _$SubnetIpv6CidrBlockAssociation;

  const SubnetIpv6CidrBlockAssociation._();

  static const List<_i3.SmithySerializer> serializers = [
    SubnetIpv6CidrBlockAssociationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SubnetIpv6CidrBlockAssociationBuilder b) {}

  /// The ID of the association.
  String? get associationId;

  /// The IPv6 CIDR block.
  String? get ipv6CidrBlock;

  /// The state of the CIDR block.
  _i2.SubnetCidrBlockState? get ipv6CidrBlockState;
  @override
  List<Object?> get props => [
        associationId,
        ipv6CidrBlock,
        ipv6CidrBlockState,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('SubnetIpv6CidrBlockAssociation');
    helper.add(
      'associationId',
      associationId,
    );
    helper.add(
      'ipv6CidrBlock',
      ipv6CidrBlock,
    );
    helper.add(
      'ipv6CidrBlockState',
      ipv6CidrBlockState,
    );
    return helper.toString();
  }
}

class SubnetIpv6CidrBlockAssociationEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<SubnetIpv6CidrBlockAssociation> {
  const SubnetIpv6CidrBlockAssociationEc2QuerySerializer()
      : super('SubnetIpv6CidrBlockAssociation');

  @override
  Iterable<Type> get types => const [
        SubnetIpv6CidrBlockAssociation,
        _$SubnetIpv6CidrBlockAssociation,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SubnetIpv6CidrBlockAssociation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SubnetIpv6CidrBlockAssociationBuilder();
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
        case 'ipv6CidrBlock':
          if (value != null) {
            result.ipv6CidrBlock = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ipv6CidrBlockState':
          if (value != null) {
            result.ipv6CidrBlockState.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.SubnetCidrBlockState),
            ) as _i2.SubnetCidrBlockState));
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
    final payload = (object as SubnetIpv6CidrBlockAssociation);
    final result = <Object?>[
      const _i3.XmlElementName(
        'SubnetIpv6CidrBlockAssociationResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.associationId != null) {
      result
        ..add(const _i3.XmlElementName('AssociationId'))
        ..add(serializers.serialize(
          payload.associationId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.ipv6CidrBlock != null) {
      result
        ..add(const _i3.XmlElementName('Ipv6CidrBlock'))
        ..add(serializers.serialize(
          payload.ipv6CidrBlock!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.ipv6CidrBlockState != null) {
      result
        ..add(const _i3.XmlElementName('Ipv6CidrBlockState'))
        ..add(serializers.serialize(
          payload.ipv6CidrBlockState!,
          specifiedType: const FullType(_i2.SubnetCidrBlockState),
        ));
    }
    return result;
  }
}
