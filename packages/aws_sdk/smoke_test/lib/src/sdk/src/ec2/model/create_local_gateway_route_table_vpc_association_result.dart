// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_local_gateway_route_table_vpc_association_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/local_gateway_route_table_vpc_association.dart'
    as _i2;

part 'create_local_gateway_route_table_vpc_association_result.g.dart';

abstract class CreateLocalGatewayRouteTableVpcAssociationResult
    with
        _i1.AWSEquatable<CreateLocalGatewayRouteTableVpcAssociationResult>
    implements
        Built<CreateLocalGatewayRouteTableVpcAssociationResult,
            CreateLocalGatewayRouteTableVpcAssociationResultBuilder> {
  factory CreateLocalGatewayRouteTableVpcAssociationResult(
      {_i2.LocalGatewayRouteTableVpcAssociation?
          localGatewayRouteTableVpcAssociation}) {
    return _$CreateLocalGatewayRouteTableVpcAssociationResult._(
        localGatewayRouteTableVpcAssociation:
            localGatewayRouteTableVpcAssociation);
  }

  factory CreateLocalGatewayRouteTableVpcAssociationResult.build(
      [void Function(CreateLocalGatewayRouteTableVpcAssociationResultBuilder)
          updates]) = _$CreateLocalGatewayRouteTableVpcAssociationResult;

  const CreateLocalGatewayRouteTableVpcAssociationResult._();

  /// Constructs a [CreateLocalGatewayRouteTableVpcAssociationResult] from a [payload] and [response].
  factory CreateLocalGatewayRouteTableVpcAssociationResult.fromResponse(
    CreateLocalGatewayRouteTableVpcAssociationResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    CreateLocalGatewayRouteTableVpcAssociationResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      CreateLocalGatewayRouteTableVpcAssociationResultBuilder b) {}

  /// Information about the association.
  _i2.LocalGatewayRouteTableVpcAssociation?
      get localGatewayRouteTableVpcAssociation;
  @override
  List<Object?> get props => [localGatewayRouteTableVpcAssociation];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'CreateLocalGatewayRouteTableVpcAssociationResult');
    helper.add(
      'localGatewayRouteTableVpcAssociation',
      localGatewayRouteTableVpcAssociation,
    );
    return helper.toString();
  }
}

class CreateLocalGatewayRouteTableVpcAssociationResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<
        CreateLocalGatewayRouteTableVpcAssociationResult> {
  const CreateLocalGatewayRouteTableVpcAssociationResultEc2QuerySerializer()
      : super('CreateLocalGatewayRouteTableVpcAssociationResult');

  @override
  Iterable<Type> get types => const [
        CreateLocalGatewayRouteTableVpcAssociationResult,
        _$CreateLocalGatewayRouteTableVpcAssociationResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateLocalGatewayRouteTableVpcAssociationResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateLocalGatewayRouteTableVpcAssociationResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'localGatewayRouteTableVpcAssociation':
          if (value != null) {
            result.localGatewayRouteTableVpcAssociation
                .replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i2.LocalGatewayRouteTableVpcAssociation),
            ) as _i2.LocalGatewayRouteTableVpcAssociation));
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
        (object as CreateLocalGatewayRouteTableVpcAssociationResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'CreateLocalGatewayRouteTableVpcAssociationResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.localGatewayRouteTableVpcAssociation != null) {
      result
        ..add(const _i3.XmlElementName('LocalGatewayRouteTableVpcAssociation'))
        ..add(serializers.serialize(
          payload.localGatewayRouteTableVpcAssociation!,
          specifiedType:
              const FullType(_i2.LocalGatewayRouteTableVpcAssociation),
        ));
    }
    return result;
  }
}
