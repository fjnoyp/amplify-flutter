// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.deregister_transit_gateway_multicast_group_members_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_multicast_deregistered_group_members.dart'
    as _i2;

part 'deregister_transit_gateway_multicast_group_members_result.g.dart';

abstract class DeregisterTransitGatewayMulticastGroupMembersResult
    with
        _i1.AWSEquatable<DeregisterTransitGatewayMulticastGroupMembersResult>
    implements
        Built<DeregisterTransitGatewayMulticastGroupMembersResult,
            DeregisterTransitGatewayMulticastGroupMembersResultBuilder> {
  factory DeregisterTransitGatewayMulticastGroupMembersResult(
      {_i2.TransitGatewayMulticastDeregisteredGroupMembers?
          deregisteredMulticastGroupMembers}) {
    return _$DeregisterTransitGatewayMulticastGroupMembersResult._(
        deregisteredMulticastGroupMembers: deregisteredMulticastGroupMembers);
  }

  factory DeregisterTransitGatewayMulticastGroupMembersResult.build(
      [void Function(DeregisterTransitGatewayMulticastGroupMembersResultBuilder)
          updates]) = _$DeregisterTransitGatewayMulticastGroupMembersResult;

  const DeregisterTransitGatewayMulticastGroupMembersResult._();

  /// Constructs a [DeregisterTransitGatewayMulticastGroupMembersResult] from a [payload] and [response].
  factory DeregisterTransitGatewayMulticastGroupMembersResult.fromResponse(
    DeregisterTransitGatewayMulticastGroupMembersResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    DeregisterTransitGatewayMulticastGroupMembersResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      DeregisterTransitGatewayMulticastGroupMembersResultBuilder b) {}

  /// Information about the deregistered members.
  _i2.TransitGatewayMulticastDeregisteredGroupMembers?
      get deregisteredMulticastGroupMembers;
  @override
  List<Object?> get props => [deregisteredMulticastGroupMembers];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DeregisterTransitGatewayMulticastGroupMembersResult');
    helper.add(
      'deregisteredMulticastGroupMembers',
      deregisteredMulticastGroupMembers,
    );
    return helper.toString();
  }
}

class DeregisterTransitGatewayMulticastGroupMembersResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<
        DeregisterTransitGatewayMulticastGroupMembersResult> {
  const DeregisterTransitGatewayMulticastGroupMembersResultEc2QuerySerializer()
      : super('DeregisterTransitGatewayMulticastGroupMembersResult');

  @override
  Iterable<Type> get types => const [
        DeregisterTransitGatewayMulticastGroupMembersResult,
        _$DeregisterTransitGatewayMulticastGroupMembersResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeregisterTransitGatewayMulticastGroupMembersResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeregisterTransitGatewayMulticastGroupMembersResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'deregisteredMulticastGroupMembers':
          if (value != null) {
            result.deregisteredMulticastGroupMembers
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                  _i2.TransitGatewayMulticastDeregisteredGroupMembers),
            ) as _i2.TransitGatewayMulticastDeregisteredGroupMembers));
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
    final payload =
        (object as DeregisterTransitGatewayMulticastGroupMembersResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'DeregisterTransitGatewayMulticastGroupMembersResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.deregisteredMulticastGroupMembers != null) {
      result
        ..add(const _i3.XmlElementName('DeregisteredMulticastGroupMembers'))
        ..add(serializers.serialize(
          payload.deregisteredMulticastGroupMembers!,
          specifiedType: const FullType(
              _i2.TransitGatewayMulticastDeregisteredGroupMembers),
        ));
    }
    return result;
  }
}
