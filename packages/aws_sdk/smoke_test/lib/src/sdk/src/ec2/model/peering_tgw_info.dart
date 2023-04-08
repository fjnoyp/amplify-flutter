// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.peering_tgw_info; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'peering_tgw_info.g.dart';

/// Information about the transit gateway in the peering attachment.
abstract class PeeringTgwInfo
    with _i1.AWSEquatable<PeeringTgwInfo>
    implements Built<PeeringTgwInfo, PeeringTgwInfoBuilder> {
  /// Information about the transit gateway in the peering attachment.
  factory PeeringTgwInfo({
    String? transitGatewayId,
    String? coreNetworkId,
    String? ownerId,
    String? region,
  }) {
    return _$PeeringTgwInfo._(
      transitGatewayId: transitGatewayId,
      coreNetworkId: coreNetworkId,
      ownerId: ownerId,
      region: region,
    );
  }

  /// Information about the transit gateway in the peering attachment.
  factory PeeringTgwInfo.build([void Function(PeeringTgwInfoBuilder) updates]) =
      _$PeeringTgwInfo;

  const PeeringTgwInfo._();

  static const List<_i2.SmithySerializer> serializers = [
    PeeringTgwInfoEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PeeringTgwInfoBuilder b) {}

  /// The ID of the transit gateway.
  String? get transitGatewayId;

  /// The ID of the core network where the transit gateway peer is located.
  String? get coreNetworkId;

  /// The ID of the Amazon Web Services account that owns the transit gateway.
  String? get ownerId;

  /// The Region of the transit gateway.
  String? get region;
  @override
  List<Object?> get props => [
        transitGatewayId,
        coreNetworkId,
        ownerId,
        region,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PeeringTgwInfo');
    helper.add(
      'transitGatewayId',
      transitGatewayId,
    );
    helper.add(
      'coreNetworkId',
      coreNetworkId,
    );
    helper.add(
      'ownerId',
      ownerId,
    );
    helper.add(
      'region',
      region,
    );
    return helper.toString();
  }
}

class PeeringTgwInfoEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<PeeringTgwInfo> {
  const PeeringTgwInfoEc2QuerySerializer() : super('PeeringTgwInfo');

  @override
  Iterable<Type> get types => const [
        PeeringTgwInfo,
        _$PeeringTgwInfo,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  PeeringTgwInfo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PeeringTgwInfoBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'transitGatewayId':
          if (value != null) {
            result.transitGatewayId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'coreNetworkId':
          if (value != null) {
            result.coreNetworkId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ownerId':
          if (value != null) {
            result.ownerId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'region':
          if (value != null) {
            result.region = (serializers.deserialize(
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
    final payload = (object as PeeringTgwInfo);
    final result = <Object?>[
      const _i2.XmlElementName(
        'PeeringTgwInfoResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.transitGatewayId != null) {
      result
        ..add(const _i2.XmlElementName('TransitGatewayId'))
        ..add(serializers.serialize(
          payload.transitGatewayId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.coreNetworkId != null) {
      result
        ..add(const _i2.XmlElementName('CoreNetworkId'))
        ..add(serializers.serialize(
          payload.coreNetworkId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.ownerId != null) {
      result
        ..add(const _i2.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          payload.ownerId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.region != null) {
      result
        ..add(const _i2.XmlElementName('Region'))
        ..add(serializers.serialize(
          payload.region!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
