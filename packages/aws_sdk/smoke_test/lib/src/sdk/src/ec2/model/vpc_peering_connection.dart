// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.vpc_peering_connection; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_peering_connection_state_reason.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_peering_connection_vpc_info.dart'
    as _i2;

part 'vpc_peering_connection.g.dart';

/// Describes a VPC peering connection.
abstract class VpcPeeringConnection
    with _i1.AWSEquatable<VpcPeeringConnection>
    implements Built<VpcPeeringConnection, VpcPeeringConnectionBuilder> {
  /// Describes a VPC peering connection.
  factory VpcPeeringConnection({
    _i2.VpcPeeringConnectionVpcInfo? accepterVpcInfo,
    DateTime? expirationTime,
    _i2.VpcPeeringConnectionVpcInfo? requesterVpcInfo,
    _i3.VpcPeeringConnectionStateReason? status,
    List<_i4.Tag>? tags,
    String? vpcPeeringConnectionId,
  }) {
    return _$VpcPeeringConnection._(
      accepterVpcInfo: accepterVpcInfo,
      expirationTime: expirationTime,
      requesterVpcInfo: requesterVpcInfo,
      status: status,
      tags: tags == null ? null : _i5.BuiltList(tags),
      vpcPeeringConnectionId: vpcPeeringConnectionId,
    );
  }

  /// Describes a VPC peering connection.
  factory VpcPeeringConnection.build(
          [void Function(VpcPeeringConnectionBuilder) updates]) =
      _$VpcPeeringConnection;

  const VpcPeeringConnection._();

  static const List<_i6.SmithySerializer> serializers = [
    VpcPeeringConnectionEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(VpcPeeringConnectionBuilder b) {}

  /// Information about the accepter VPC. CIDR block information is only returned when describing an active VPC peering connection.
  _i2.VpcPeeringConnectionVpcInfo? get accepterVpcInfo;

  /// The time that an unaccepted VPC peering connection will expire.
  DateTime? get expirationTime;

  /// Information about the requester VPC. CIDR block information is only returned when describing an active VPC peering connection.
  _i2.VpcPeeringConnectionVpcInfo? get requesterVpcInfo;

  /// The status of the VPC peering connection.
  _i3.VpcPeeringConnectionStateReason? get status;

  /// Any tags assigned to the resource.
  _i5.BuiltList<_i4.Tag>? get tags;

  /// The ID of the VPC peering connection.
  String? get vpcPeeringConnectionId;
  @override
  List<Object?> get props => [
        accepterVpcInfo,
        expirationTime,
        requesterVpcInfo,
        status,
        tags,
        vpcPeeringConnectionId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VpcPeeringConnection');
    helper.add(
      'accepterVpcInfo',
      accepterVpcInfo,
    );
    helper.add(
      'expirationTime',
      expirationTime,
    );
    helper.add(
      'requesterVpcInfo',
      requesterVpcInfo,
    );
    helper.add(
      'status',
      status,
    );
    helper.add(
      'tags',
      tags,
    );
    helper.add(
      'vpcPeeringConnectionId',
      vpcPeeringConnectionId,
    );
    return helper.toString();
  }
}

class VpcPeeringConnectionEc2QuerySerializer
    extends _i6.StructuredSmithySerializer<VpcPeeringConnection> {
  const VpcPeeringConnectionEc2QuerySerializer()
      : super('VpcPeeringConnection');

  @override
  Iterable<Type> get types => const [
        VpcPeeringConnection,
        _$VpcPeeringConnection,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VpcPeeringConnection deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VpcPeeringConnectionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'accepterVpcInfo':
          if (value != null) {
            result.accepterVpcInfo.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.VpcPeeringConnectionVpcInfo),
            ) as _i2.VpcPeeringConnectionVpcInfo));
          }
          break;
        case 'expirationTime':
          if (value != null) {
            result.expirationTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'requesterVpcInfo':
          if (value != null) {
            result.requesterVpcInfo.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.VpcPeeringConnectionVpcInfo),
            ) as _i2.VpcPeeringConnectionVpcInfo));
          }
          break;
        case 'status':
          if (value != null) {
            result.status.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i3.VpcPeeringConnectionStateReason),
            ) as _i3.VpcPeeringConnectionStateReason));
          }
          break;
        case 'tagSet':
          if (value != null) {
            result.tags.replace((const _i6.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i6.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(_i4.Tag)],
              ),
            ) as _i5.BuiltList<_i4.Tag>));
          }
          break;
        case 'vpcPeeringConnectionId':
          if (value != null) {
            result.vpcPeeringConnectionId = (serializers.deserialize(
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
    final payload = (object as VpcPeeringConnection);
    final result = <Object?>[
      const _i6.XmlElementName(
        'VpcPeeringConnectionResponse',
        _i6.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.accepterVpcInfo != null) {
      result
        ..add(const _i6.XmlElementName('AccepterVpcInfo'))
        ..add(serializers.serialize(
          payload.accepterVpcInfo!,
          specifiedType: const FullType(_i2.VpcPeeringConnectionVpcInfo),
        ));
    }
    if (payload.expirationTime != null) {
      result
        ..add(const _i6.XmlElementName('ExpirationTime'))
        ..add(serializers.serialize(
          payload.expirationTime!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.requesterVpcInfo != null) {
      result
        ..add(const _i6.XmlElementName('RequesterVpcInfo'))
        ..add(serializers.serialize(
          payload.requesterVpcInfo!,
          specifiedType: const FullType(_i2.VpcPeeringConnectionVpcInfo),
        ));
    }
    if (payload.status != null) {
      result
        ..add(const _i6.XmlElementName('Status'))
        ..add(serializers.serialize(
          payload.status!,
          specifiedType: const FullType(_i3.VpcPeeringConnectionStateReason),
        ));
    }
    if (payload.tags != null) {
      result
        ..add(const _i6.XmlElementName('TagSet'))
        ..add(const _i6.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i6.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tags!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i4.Tag)],
          ),
        ));
    }
    if (payload.vpcPeeringConnectionId != null) {
      result
        ..add(const _i6.XmlElementName('VpcPeeringConnectionId'))
        ..add(serializers.serialize(
          payload.vpcPeeringConnectionId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
