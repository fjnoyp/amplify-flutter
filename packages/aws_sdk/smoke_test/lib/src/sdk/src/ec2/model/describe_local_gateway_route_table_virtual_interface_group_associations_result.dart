// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_local_gateway_route_table_virtual_interface_group_associations_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/local_gateway_route_table_virtual_interface_group_association.dart'
    as _i2;

part 'describe_local_gateway_route_table_virtual_interface_group_associations_result.g.dart';

abstract class DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult
    with
        _i1.AWSEquatable<
            DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult>
    implements
        Built<
            DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult,
            DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResultBuilder> {
  factory DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult({
    List<_i2.LocalGatewayRouteTableVirtualInterfaceGroupAssociation>?
        localGatewayRouteTableVirtualInterfaceGroupAssociations,
    String? nextToken,
  }) {
    return _$DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult
        ._(
      localGatewayRouteTableVirtualInterfaceGroupAssociations:
          localGatewayRouteTableVirtualInterfaceGroupAssociations == null
              ? null
              : _i3.BuiltList(
                  localGatewayRouteTableVirtualInterfaceGroupAssociations),
      nextToken: nextToken,
    );
  }

  factory DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult.build(
          [void Function(
                  DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResultBuilder)
              updates]) =
      _$DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult;

  const DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult._();

  /// Constructs a [DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult] from a [payload] and [response].
  factory DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult.fromResponse(
    DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult
        payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResultBuilder
          b) {}

  /// Information about the associations.
  _i3.BuiltList<_i2.LocalGatewayRouteTableVirtualInterfaceGroupAssociation>?
      get localGatewayRouteTableVirtualInterfaceGroupAssociations;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        localGatewayRouteTableVirtualInterfaceGroupAssociations,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult');
    helper.add(
      'localGatewayRouteTableVirtualInterfaceGroupAssociations',
      localGatewayRouteTableVirtualInterfaceGroupAssociations,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<
        DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult> {
  const DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResultEc2QuerySerializer()
      : super(
            'DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult');

  @override
  Iterable<Type> get types => const [
        DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult,
        _$DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult
      deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'localGatewayRouteTableVirtualInterfaceGroupAssociationSet':
          if (value != null) {
            result.localGatewayRouteTableVirtualInterfaceGroupAssociations
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [
                  FullType(_i2
                      .LocalGatewayRouteTableVirtualInterfaceGroupAssociation)
                ],
              ),
            ) as _i3.BuiltList<
                    _i2.LocalGatewayRouteTableVirtualInterfaceGroupAssociation>));
          }
          break;
        case 'nextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
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
    final payload = (object
        as DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.localGatewayRouteTableVirtualInterfaceGroupAssociations !=
        null) {
      result
        ..add(const _i4.XmlElementName(
            'LocalGatewayRouteTableVirtualInterfaceGroupAssociationSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.localGatewayRouteTableVirtualInterfaceGroupAssociations!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [
              FullType(
                  _i2.LocalGatewayRouteTableVirtualInterfaceGroupAssociation)
            ],
          ),
        ));
    }
    if (payload.nextToken != null) {
      result
        ..add(const _i4.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
