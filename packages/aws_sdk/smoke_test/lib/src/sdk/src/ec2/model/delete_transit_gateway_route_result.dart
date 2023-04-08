// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_transit_gateway_route_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route.dart'
    as _i2;

part 'delete_transit_gateway_route_result.g.dart';

abstract class DeleteTransitGatewayRouteResult
    with
        _i1.AWSEquatable<DeleteTransitGatewayRouteResult>
    implements
        Built<DeleteTransitGatewayRouteResult,
            DeleteTransitGatewayRouteResultBuilder> {
  factory DeleteTransitGatewayRouteResult({_i2.TransitGatewayRoute? route}) {
    return _$DeleteTransitGatewayRouteResult._(route: route);
  }

  factory DeleteTransitGatewayRouteResult.build(
          [void Function(DeleteTransitGatewayRouteResultBuilder) updates]) =
      _$DeleteTransitGatewayRouteResult;

  const DeleteTransitGatewayRouteResult._();

  /// Constructs a [DeleteTransitGatewayRouteResult] from a [payload] and [response].
  factory DeleteTransitGatewayRouteResult.fromResponse(
    DeleteTransitGatewayRouteResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    DeleteTransitGatewayRouteResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteTransitGatewayRouteResultBuilder b) {}

  /// Information about the route.
  _i2.TransitGatewayRoute? get route;
  @override
  List<Object?> get props => [route];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteTransitGatewayRouteResult');
    helper.add(
      'route',
      route,
    );
    return helper.toString();
  }
}

class DeleteTransitGatewayRouteResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DeleteTransitGatewayRouteResult> {
  const DeleteTransitGatewayRouteResultEc2QuerySerializer()
      : super('DeleteTransitGatewayRouteResult');

  @override
  Iterable<Type> get types => const [
        DeleteTransitGatewayRouteResult,
        _$DeleteTransitGatewayRouteResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteTransitGatewayRouteResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteTransitGatewayRouteResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'route':
          if (value != null) {
            result.route.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.TransitGatewayRoute),
            ) as _i2.TransitGatewayRoute));
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
    final payload = (object as DeleteTransitGatewayRouteResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'DeleteTransitGatewayRouteResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.route != null) {
      result
        ..add(const _i3.XmlElementName('Route'))
        ..add(serializers.serialize(
          payload.route!,
          specifiedType: const FullType(_i2.TransitGatewayRoute),
        ));
    }
    return result;
  }
}
