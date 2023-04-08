// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.associate_transit_gateway_policy_table_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_policy_table_association.dart'
    as _i2;

part 'associate_transit_gateway_policy_table_result.g.dart';

abstract class AssociateTransitGatewayPolicyTableResult
    with
        _i1.AWSEquatable<AssociateTransitGatewayPolicyTableResult>
    implements
        Built<AssociateTransitGatewayPolicyTableResult,
            AssociateTransitGatewayPolicyTableResultBuilder> {
  factory AssociateTransitGatewayPolicyTableResult(
      {_i2.TransitGatewayPolicyTableAssociation? association}) {
    return _$AssociateTransitGatewayPolicyTableResult._(
        association: association);
  }

  factory AssociateTransitGatewayPolicyTableResult.build(
      [void Function(AssociateTransitGatewayPolicyTableResultBuilder)
          updates]) = _$AssociateTransitGatewayPolicyTableResult;

  const AssociateTransitGatewayPolicyTableResult._();

  /// Constructs a [AssociateTransitGatewayPolicyTableResult] from a [payload] and [response].
  factory AssociateTransitGatewayPolicyTableResult.fromResponse(
    AssociateTransitGatewayPolicyTableResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    AssociateTransitGatewayPolicyTableResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AssociateTransitGatewayPolicyTableResultBuilder b) {}

  /// Describes the association of a transit gateway and a transit gateway policy table.
  _i2.TransitGatewayPolicyTableAssociation? get association;
  @override
  List<Object?> get props => [association];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('AssociateTransitGatewayPolicyTableResult');
    helper.add(
      'association',
      association,
    );
    return helper.toString();
  }
}

class AssociateTransitGatewayPolicyTableResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<AssociateTransitGatewayPolicyTableResult> {
  const AssociateTransitGatewayPolicyTableResultEc2QuerySerializer()
      : super('AssociateTransitGatewayPolicyTableResult');

  @override
  Iterable<Type> get types => const [
        AssociateTransitGatewayPolicyTableResult,
        _$AssociateTransitGatewayPolicyTableResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AssociateTransitGatewayPolicyTableResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssociateTransitGatewayPolicyTableResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'association':
          if (value != null) {
            result.association.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i2.TransitGatewayPolicyTableAssociation),
            ) as _i2.TransitGatewayPolicyTableAssociation));
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
    final payload = (object as AssociateTransitGatewayPolicyTableResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'AssociateTransitGatewayPolicyTableResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.association != null) {
      result
        ..add(const _i3.XmlElementName('Association'))
        ..add(serializers.serialize(
          payload.association!,
          specifiedType:
              const FullType(_i2.TransitGatewayPolicyTableAssociation),
        ));
    }
    return result;
  }
}
