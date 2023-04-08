// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_transit_gateway_route_table_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route_table.dart'
    as _i2;

part 'delete_transit_gateway_route_table_result.g.dart';

abstract class DeleteTransitGatewayRouteTableResult
    with
        _i1.AWSEquatable<DeleteTransitGatewayRouteTableResult>
    implements
        Built<DeleteTransitGatewayRouteTableResult,
            DeleteTransitGatewayRouteTableResultBuilder> {
  factory DeleteTransitGatewayRouteTableResult(
      {_i2.TransitGatewayRouteTable? transitGatewayRouteTable}) {
    return _$DeleteTransitGatewayRouteTableResult._(
        transitGatewayRouteTable: transitGatewayRouteTable);
  }

  factory DeleteTransitGatewayRouteTableResult.build(
      [void Function(DeleteTransitGatewayRouteTableResultBuilder)
          updates]) = _$DeleteTransitGatewayRouteTableResult;

  const DeleteTransitGatewayRouteTableResult._();

  /// Constructs a [DeleteTransitGatewayRouteTableResult] from a [payload] and [response].
  factory DeleteTransitGatewayRouteTableResult.fromResponse(
    DeleteTransitGatewayRouteTableResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    DeleteTransitGatewayRouteTableResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteTransitGatewayRouteTableResultBuilder b) {}

  /// Information about the deleted transit gateway route table.
  _i2.TransitGatewayRouteTable? get transitGatewayRouteTable;
  @override
  List<Object?> get props => [transitGatewayRouteTable];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteTransitGatewayRouteTableResult');
    helper.add(
      'transitGatewayRouteTable',
      transitGatewayRouteTable,
    );
    return helper.toString();
  }
}

class DeleteTransitGatewayRouteTableResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<DeleteTransitGatewayRouteTableResult> {
  const DeleteTransitGatewayRouteTableResultEc2QuerySerializer()
      : super('DeleteTransitGatewayRouteTableResult');

  @override
  Iterable<Type> get types => const [
        DeleteTransitGatewayRouteTableResult,
        _$DeleteTransitGatewayRouteTableResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteTransitGatewayRouteTableResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteTransitGatewayRouteTableResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'transitGatewayRouteTable':
          if (value != null) {
            result.transitGatewayRouteTable.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.TransitGatewayRouteTable),
            ) as _i2.TransitGatewayRouteTable));
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
    final payload = (object as DeleteTransitGatewayRouteTableResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'DeleteTransitGatewayRouteTableResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.transitGatewayRouteTable != null) {
      result
        ..add(const _i3.XmlElementName('TransitGatewayRouteTable'))
        ..add(serializers.serialize(
          payload.transitGatewayRouteTable!,
          specifiedType: const FullType(_i2.TransitGatewayRouteTable),
        ));
    }
    return result;
  }
}
