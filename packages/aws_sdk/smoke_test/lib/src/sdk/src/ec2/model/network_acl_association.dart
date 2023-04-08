// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.network_acl_association; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'network_acl_association.g.dart';

/// Describes an association between a network ACL and a subnet.
abstract class NetworkAclAssociation
    with _i1.AWSEquatable<NetworkAclAssociation>
    implements Built<NetworkAclAssociation, NetworkAclAssociationBuilder> {
  /// Describes an association between a network ACL and a subnet.
  factory NetworkAclAssociation({
    String? networkAclAssociationId,
    String? networkAclId,
    String? subnetId,
  }) {
    return _$NetworkAclAssociation._(
      networkAclAssociationId: networkAclAssociationId,
      networkAclId: networkAclId,
      subnetId: subnetId,
    );
  }

  /// Describes an association between a network ACL and a subnet.
  factory NetworkAclAssociation.build(
          [void Function(NetworkAclAssociationBuilder) updates]) =
      _$NetworkAclAssociation;

  const NetworkAclAssociation._();

  static const List<_i2.SmithySerializer> serializers = [
    NetworkAclAssociationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NetworkAclAssociationBuilder b) {}

  /// The ID of the association between a network ACL and a subnet.
  String? get networkAclAssociationId;

  /// The ID of the network ACL.
  String? get networkAclId;

  /// The ID of the subnet.
  String? get subnetId;
  @override
  List<Object?> get props => [
        networkAclAssociationId,
        networkAclId,
        subnetId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NetworkAclAssociation');
    helper.add(
      'networkAclAssociationId',
      networkAclAssociationId,
    );
    helper.add(
      'networkAclId',
      networkAclId,
    );
    helper.add(
      'subnetId',
      subnetId,
    );
    return helper.toString();
  }
}

class NetworkAclAssociationEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<NetworkAclAssociation> {
  const NetworkAclAssociationEc2QuerySerializer()
      : super('NetworkAclAssociation');

  @override
  Iterable<Type> get types => const [
        NetworkAclAssociation,
        _$NetworkAclAssociation,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  NetworkAclAssociation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NetworkAclAssociationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'networkAclAssociationId':
          if (value != null) {
            result.networkAclAssociationId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'networkAclId':
          if (value != null) {
            result.networkAclId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as NetworkAclAssociation);
    final result = <Object?>[
      const _i2.XmlElementName(
        'NetworkAclAssociationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.networkAclAssociationId != null) {
      result
        ..add(const _i2.XmlElementName('NetworkAclAssociationId'))
        ..add(serializers.serialize(
          payload.networkAclAssociationId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.networkAclId != null) {
      result
        ..add(const _i2.XmlElementName('NetworkAclId'))
        ..add(serializers.serialize(
          payload.networkAclId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.subnetId != null) {
      result
        ..add(const _i2.XmlElementName('SubnetId'))
        ..add(serializers.serialize(
          payload.subnetId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
