// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_local_gateway_route_table_virtual_interface_group_association_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/local_gateway_route_table_virtual_interface_group_association.dart'
    as _i2;

part 'create_local_gateway_route_table_virtual_interface_group_association_result.g.dart';

abstract class CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult
    with
        _i1.AWSEquatable<
            CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult>
    implements
        Built<
            CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult,
            CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResultBuilder> {
  factory CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult(
      {_i2.LocalGatewayRouteTableVirtualInterfaceGroupAssociation?
          localGatewayRouteTableVirtualInterfaceGroupAssociation}) {
    return _$CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult
        ._(
            localGatewayRouteTableVirtualInterfaceGroupAssociation:
                localGatewayRouteTableVirtualInterfaceGroupAssociation);
  }

  factory CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult.build(
          [void Function(
                  CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResultBuilder)
              updates]) =
      _$CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult;

  const CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult._();

  /// Constructs a [CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult] from a [payload] and [response].
  factory CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult.fromResponse(
    CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResultBuilder
          b) {}

  /// Describes an association between a local gateway route table and a virtual interface group.
  _i2.LocalGatewayRouteTableVirtualInterfaceGroupAssociation?
      get localGatewayRouteTableVirtualInterfaceGroupAssociation;
  @override
  List<Object?> get props =>
      [localGatewayRouteTableVirtualInterfaceGroupAssociation];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult');
    helper.add(
      'localGatewayRouteTableVirtualInterfaceGroupAssociation',
      localGatewayRouteTableVirtualInterfaceGroupAssociation,
    );
    return helper.toString();
  }
}

class CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<
        CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult> {
  const CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResultEc2QuerySerializer()
      : super(
            'CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult');

  @override
  Iterable<Type> get types => const [
        CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult,
        _$CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult
      deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'localGatewayRouteTableVirtualInterfaceGroupAssociation':
          if (value != null) {
            result.localGatewayRouteTableVirtualInterfaceGroupAssociation
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                  _i2.LocalGatewayRouteTableVirtualInterfaceGroupAssociation),
            ) as _i2.LocalGatewayRouteTableVirtualInterfaceGroupAssociation));
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
    final payload = (object
        as CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.localGatewayRouteTableVirtualInterfaceGroupAssociation !=
        null) {
      result
        ..add(const _i3.XmlElementName(
            'LocalGatewayRouteTableVirtualInterfaceGroupAssociation'))
        ..add(serializers.serialize(
          payload.localGatewayRouteTableVirtualInterfaceGroupAssociation!,
          specifiedType: const FullType(
              _i2.LocalGatewayRouteTableVirtualInterfaceGroupAssociation),
        ));
    }
    return result;
  }
}
