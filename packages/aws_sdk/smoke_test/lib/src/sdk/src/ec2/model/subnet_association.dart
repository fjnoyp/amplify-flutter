// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.subnet_association; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_mulitcast_domain_association_state.dart'
    as _i2;

part 'subnet_association.g.dart';

/// Describes the subnet association with the transit gateway multicast domain.
abstract class SubnetAssociation
    with _i1.AWSEquatable<SubnetAssociation>
    implements Built<SubnetAssociation, SubnetAssociationBuilder> {
  /// Describes the subnet association with the transit gateway multicast domain.
  factory SubnetAssociation({
    String? subnetId,
    _i2.TransitGatewayMulitcastDomainAssociationState? state,
  }) {
    return _$SubnetAssociation._(
      subnetId: subnetId,
      state: state,
    );
  }

  /// Describes the subnet association with the transit gateway multicast domain.
  factory SubnetAssociation.build(
      [void Function(SubnetAssociationBuilder) updates]) = _$SubnetAssociation;

  const SubnetAssociation._();

  static const List<_i3.SmithySerializer> serializers = [
    SubnetAssociationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SubnetAssociationBuilder b) {}

  /// The ID of the subnet.
  String? get subnetId;

  /// The state of the subnet association.
  _i2.TransitGatewayMulitcastDomainAssociationState? get state;
  @override
  List<Object?> get props => [
        subnetId,
        state,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SubnetAssociation');
    helper.add(
      'subnetId',
      subnetId,
    );
    helper.add(
      'state',
      state,
    );
    return helper.toString();
  }
}

class SubnetAssociationEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<SubnetAssociation> {
  const SubnetAssociationEc2QuerySerializer() : super('SubnetAssociation');

  @override
  Iterable<Type> get types => const [
        SubnetAssociation,
        _$SubnetAssociation,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SubnetAssociation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SubnetAssociationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'subnetId':
          if (value != null) {
            result.subnetId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'state':
          if (value != null) {
            result.state = (serializers.deserialize(
              value,
              specifiedType: const FullType(
                  _i2.TransitGatewayMulitcastDomainAssociationState),
            ) as _i2.TransitGatewayMulitcastDomainAssociationState);
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
    final payload = (object as SubnetAssociation);
    final result = <Object?>[
      const _i3.XmlElementName(
        'SubnetAssociationResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.subnetId != null) {
      result
        ..add(const _i3.XmlElementName('SubnetId'))
        ..add(serializers.serialize(
          payload.subnetId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.state != null) {
      result
        ..add(const _i3.XmlElementName('State'))
        ..add(serializers.serialize(
          payload.state!,
          specifiedType: const FullType.nullable(
              _i2.TransitGatewayMulitcastDomainAssociationState),
        ));
    }
    return result;
  }
}
