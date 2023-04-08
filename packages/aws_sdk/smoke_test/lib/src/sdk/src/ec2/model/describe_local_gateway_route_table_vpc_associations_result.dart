// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_local_gateway_route_table_vpc_associations_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/local_gateway_route_table_vpc_association.dart'
    as _i2;

part 'describe_local_gateway_route_table_vpc_associations_result.g.dart';

abstract class DescribeLocalGatewayRouteTableVpcAssociationsResult
    with
        _i1.AWSEquatable<DescribeLocalGatewayRouteTableVpcAssociationsResult>
    implements
        Built<DescribeLocalGatewayRouteTableVpcAssociationsResult,
            DescribeLocalGatewayRouteTableVpcAssociationsResultBuilder> {
  factory DescribeLocalGatewayRouteTableVpcAssociationsResult({
    List<_i2.LocalGatewayRouteTableVpcAssociation>?
        localGatewayRouteTableVpcAssociations,
    String? nextToken,
  }) {
    return _$DescribeLocalGatewayRouteTableVpcAssociationsResult._(
      localGatewayRouteTableVpcAssociations:
          localGatewayRouteTableVpcAssociations == null
              ? null
              : _i3.BuiltList(localGatewayRouteTableVpcAssociations),
      nextToken: nextToken,
    );
  }

  factory DescribeLocalGatewayRouteTableVpcAssociationsResult.build(
      [void Function(DescribeLocalGatewayRouteTableVpcAssociationsResultBuilder)
          updates]) = _$DescribeLocalGatewayRouteTableVpcAssociationsResult;

  const DescribeLocalGatewayRouteTableVpcAssociationsResult._();

  /// Constructs a [DescribeLocalGatewayRouteTableVpcAssociationsResult] from a [payload] and [response].
  factory DescribeLocalGatewayRouteTableVpcAssociationsResult.fromResponse(
    DescribeLocalGatewayRouteTableVpcAssociationsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeLocalGatewayRouteTableVpcAssociationsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      DescribeLocalGatewayRouteTableVpcAssociationsResultBuilder b) {}

  /// Information about the associations.
  _i3.BuiltList<_i2.LocalGatewayRouteTableVpcAssociation>?
      get localGatewayRouteTableVpcAssociations;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        localGatewayRouteTableVpcAssociations,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeLocalGatewayRouteTableVpcAssociationsResult');
    helper.add(
      'localGatewayRouteTableVpcAssociations',
      localGatewayRouteTableVpcAssociations,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeLocalGatewayRouteTableVpcAssociationsResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<
        DescribeLocalGatewayRouteTableVpcAssociationsResult> {
  const DescribeLocalGatewayRouteTableVpcAssociationsResultEc2QuerySerializer()
      : super('DescribeLocalGatewayRouteTableVpcAssociationsResult');

  @override
  Iterable<Type> get types => const [
        DescribeLocalGatewayRouteTableVpcAssociationsResult,
        _$DescribeLocalGatewayRouteTableVpcAssociationsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeLocalGatewayRouteTableVpcAssociationsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeLocalGatewayRouteTableVpcAssociationsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'localGatewayRouteTableVpcAssociationSet':
          if (value != null) {
            result.localGatewayRouteTableVpcAssociations
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.LocalGatewayRouteTableVpcAssociation)],
              ),
            ) as _i3.BuiltList<_i2.LocalGatewayRouteTableVpcAssociation>));
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
    final payload =
        (object as DescribeLocalGatewayRouteTableVpcAssociationsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeLocalGatewayRouteTableVpcAssociationsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.localGatewayRouteTableVpcAssociations != null) {
      result
        ..add(
            const _i4.XmlElementName('LocalGatewayRouteTableVpcAssociationSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.localGatewayRouteTableVpcAssociations!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.LocalGatewayRouteTableVpcAssociation)],
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
