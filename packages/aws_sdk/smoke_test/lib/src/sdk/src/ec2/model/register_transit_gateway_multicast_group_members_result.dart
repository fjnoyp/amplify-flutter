// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.register_transit_gateway_multicast_group_members_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_multicast_registered_group_members.dart'
    as _i2;

part 'register_transit_gateway_multicast_group_members_result.g.dart';

abstract class RegisterTransitGatewayMulticastGroupMembersResult
    with
        _i1.AWSEquatable<RegisterTransitGatewayMulticastGroupMembersResult>
    implements
        Built<RegisterTransitGatewayMulticastGroupMembersResult,
            RegisterTransitGatewayMulticastGroupMembersResultBuilder> {
  factory RegisterTransitGatewayMulticastGroupMembersResult(
      {_i2.TransitGatewayMulticastRegisteredGroupMembers?
          registeredMulticastGroupMembers}) {
    return _$RegisterTransitGatewayMulticastGroupMembersResult._(
        registeredMulticastGroupMembers: registeredMulticastGroupMembers);
  }

  factory RegisterTransitGatewayMulticastGroupMembersResult.build(
      [void Function(RegisterTransitGatewayMulticastGroupMembersResultBuilder)
          updates]) = _$RegisterTransitGatewayMulticastGroupMembersResult;

  const RegisterTransitGatewayMulticastGroupMembersResult._();

  /// Constructs a [RegisterTransitGatewayMulticastGroupMembersResult] from a [payload] and [response].
  factory RegisterTransitGatewayMulticastGroupMembersResult.fromResponse(
    RegisterTransitGatewayMulticastGroupMembersResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    RegisterTransitGatewayMulticastGroupMembersResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      RegisterTransitGatewayMulticastGroupMembersResultBuilder b) {}

  /// Information about the registered transit gateway multicast group members.
  _i2.TransitGatewayMulticastRegisteredGroupMembers?
      get registeredMulticastGroupMembers;
  @override
  List<Object?> get props => [registeredMulticastGroupMembers];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'RegisterTransitGatewayMulticastGroupMembersResult');
    helper.add(
      'registeredMulticastGroupMembers',
      registeredMulticastGroupMembers,
    );
    return helper.toString();
  }
}

class RegisterTransitGatewayMulticastGroupMembersResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<
        RegisterTransitGatewayMulticastGroupMembersResult> {
  const RegisterTransitGatewayMulticastGroupMembersResultEc2QuerySerializer()
      : super('RegisterTransitGatewayMulticastGroupMembersResult');

  @override
  Iterable<Type> get types => const [
        RegisterTransitGatewayMulticastGroupMembersResult,
        _$RegisterTransitGatewayMulticastGroupMembersResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RegisterTransitGatewayMulticastGroupMembersResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RegisterTransitGatewayMulticastGroupMembersResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'registeredMulticastGroupMembers':
          if (value != null) {
            result.registeredMulticastGroupMembers
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                  _i2.TransitGatewayMulticastRegisteredGroupMembers),
            ) as _i2.TransitGatewayMulticastRegisteredGroupMembers));
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
        (object as RegisterTransitGatewayMulticastGroupMembersResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'RegisterTransitGatewayMulticastGroupMembersResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.registeredMulticastGroupMembers != null) {
      result
        ..add(const _i3.XmlElementName('RegisteredMulticastGroupMembers'))
        ..add(serializers.serialize(
          payload.registeredMulticastGroupMembers!,
          specifiedType:
              const FullType(_i2.TransitGatewayMulticastRegisteredGroupMembers),
        ));
    }
    return result;
  }
}
