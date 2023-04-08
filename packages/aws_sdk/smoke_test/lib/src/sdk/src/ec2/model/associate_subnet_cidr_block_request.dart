// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.associate_subnet_cidr_block_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'associate_subnet_cidr_block_request.g.dart';

abstract class AssociateSubnetCidrBlockRequest
    with
        _i1.HttpInput<AssociateSubnetCidrBlockRequest>,
        _i2.AWSEquatable<AssociateSubnetCidrBlockRequest>
    implements
        Built<AssociateSubnetCidrBlockRequest,
            AssociateSubnetCidrBlockRequestBuilder> {
  factory AssociateSubnetCidrBlockRequest({
    required String ipv6CidrBlock,
    required String subnetId,
  }) {
    return _$AssociateSubnetCidrBlockRequest._(
      ipv6CidrBlock: ipv6CidrBlock,
      subnetId: subnetId,
    );
  }

  factory AssociateSubnetCidrBlockRequest.build(
          [void Function(AssociateSubnetCidrBlockRequestBuilder) updates]) =
      _$AssociateSubnetCidrBlockRequest;

  const AssociateSubnetCidrBlockRequest._();

  factory AssociateSubnetCidrBlockRequest.fromRequest(
    AssociateSubnetCidrBlockRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    AssociateSubnetCidrBlockRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AssociateSubnetCidrBlockRequestBuilder b) {}

  /// The IPv6 CIDR block for your subnet. The subnet must have a /64 prefix length.
  String get ipv6CidrBlock;

  /// The ID of your subnet.
  String get subnetId;
  @override
  AssociateSubnetCidrBlockRequest getPayload() => this;
  @override
  List<Object?> get props => [
        ipv6CidrBlock,
        subnetId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('AssociateSubnetCidrBlockRequest');
    helper.add(
      'ipv6CidrBlock',
      ipv6CidrBlock,
    );
    helper.add(
      'subnetId',
      subnetId,
    );
    return helper.toString();
  }
}

class AssociateSubnetCidrBlockRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<AssociateSubnetCidrBlockRequest> {
  const AssociateSubnetCidrBlockRequestEc2QuerySerializer()
      : super('AssociateSubnetCidrBlockRequest');

  @override
  Iterable<Type> get types => const [
        AssociateSubnetCidrBlockRequest,
        _$AssociateSubnetCidrBlockRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AssociateSubnetCidrBlockRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssociateSubnetCidrBlockRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ipv6CidrBlock':
          result.ipv6CidrBlock = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'subnetId':
          result.subnetId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as AssociateSubnetCidrBlockRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'AssociateSubnetCidrBlockRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('Ipv6CidrBlock'))
      ..add(serializers.serialize(
        payload.ipv6CidrBlock,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('SubnetId'))
      ..add(serializers.serialize(
        payload.subnetId,
        specifiedType: const FullType(String),
      ));
    return result;
  }
}
