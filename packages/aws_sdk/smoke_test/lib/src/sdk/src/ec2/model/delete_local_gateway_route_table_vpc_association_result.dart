// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_local_gateway_route_table_vpc_association_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/local_gateway_route_table_vpc_association.dart'
    as _i2;

part 'delete_local_gateway_route_table_vpc_association_result.g.dart';

abstract class DeleteLocalGatewayRouteTableVpcAssociationResult
    with
        _i1.AWSEquatable<DeleteLocalGatewayRouteTableVpcAssociationResult>
    implements
        Built<DeleteLocalGatewayRouteTableVpcAssociationResult,
            DeleteLocalGatewayRouteTableVpcAssociationResultBuilder> {
  factory DeleteLocalGatewayRouteTableVpcAssociationResult(
      {_i2.LocalGatewayRouteTableVpcAssociation?
          localGatewayRouteTableVpcAssociation}) {
    return _$DeleteLocalGatewayRouteTableVpcAssociationResult._(
        localGatewayRouteTableVpcAssociation:
            localGatewayRouteTableVpcAssociation);
  }

  factory DeleteLocalGatewayRouteTableVpcAssociationResult.build(
      [void Function(DeleteLocalGatewayRouteTableVpcAssociationResultBuilder)
          updates]) = _$DeleteLocalGatewayRouteTableVpcAssociationResult;

  const DeleteLocalGatewayRouteTableVpcAssociationResult._();

  /// Constructs a [DeleteLocalGatewayRouteTableVpcAssociationResult] from a [payload] and [response].
  factory DeleteLocalGatewayRouteTableVpcAssociationResult.fromResponse(
    DeleteLocalGatewayRouteTableVpcAssociationResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    DeleteLocalGatewayRouteTableVpcAssociationResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      DeleteLocalGatewayRouteTableVpcAssociationResultBuilder b) {}

  /// Information about the association.
  _i2.LocalGatewayRouteTableVpcAssociation?
      get localGatewayRouteTableVpcAssociation;
  @override
  List<Object?> get props => [localGatewayRouteTableVpcAssociation];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DeleteLocalGatewayRouteTableVpcAssociationResult');
    helper.add(
      'localGatewayRouteTableVpcAssociation',
      localGatewayRouteTableVpcAssociation,
    );
    return helper.toString();
  }
}

class DeleteLocalGatewayRouteTableVpcAssociationResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<
        DeleteLocalGatewayRouteTableVpcAssociationResult> {
  const DeleteLocalGatewayRouteTableVpcAssociationResultEc2QuerySerializer()
      : super('DeleteLocalGatewayRouteTableVpcAssociationResult');

  @override
  Iterable<Type> get types => const [
        DeleteLocalGatewayRouteTableVpcAssociationResult,
        _$DeleteLocalGatewayRouteTableVpcAssociationResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteLocalGatewayRouteTableVpcAssociationResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteLocalGatewayRouteTableVpcAssociationResultBuilder();
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
        (object as DeleteLocalGatewayRouteTableVpcAssociationResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'DeleteLocalGatewayRouteTableVpcAssociationResultResponse',
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
