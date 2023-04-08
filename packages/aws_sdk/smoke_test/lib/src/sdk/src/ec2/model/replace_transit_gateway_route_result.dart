// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.replace_transit_gateway_route_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route.dart'
    as _i2;

part 'replace_transit_gateway_route_result.g.dart';

abstract class ReplaceTransitGatewayRouteResult
    with
        _i1.AWSEquatable<ReplaceTransitGatewayRouteResult>
    implements
        Built<ReplaceTransitGatewayRouteResult,
            ReplaceTransitGatewayRouteResultBuilder> {
  factory ReplaceTransitGatewayRouteResult({_i2.TransitGatewayRoute? route}) {
    return _$ReplaceTransitGatewayRouteResult._(route: route);
  }

  factory ReplaceTransitGatewayRouteResult.build(
          [void Function(ReplaceTransitGatewayRouteResultBuilder) updates]) =
      _$ReplaceTransitGatewayRouteResult;

  const ReplaceTransitGatewayRouteResult._();

  /// Constructs a [ReplaceTransitGatewayRouteResult] from a [payload] and [response].
  factory ReplaceTransitGatewayRouteResult.fromResponse(
    ReplaceTransitGatewayRouteResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    ReplaceTransitGatewayRouteResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ReplaceTransitGatewayRouteResultBuilder b) {}

  /// Information about the modified route.
  _i2.TransitGatewayRoute? get route;
  @override
  List<Object?> get props => [route];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ReplaceTransitGatewayRouteResult');
    helper.add(
      'route',
      route,
    );
    return helper.toString();
  }
}

class ReplaceTransitGatewayRouteResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ReplaceTransitGatewayRouteResult> {
  const ReplaceTransitGatewayRouteResultEc2QuerySerializer()
      : super('ReplaceTransitGatewayRouteResult');

  @override
  Iterable<Type> get types => const [
        ReplaceTransitGatewayRouteResult,
        _$ReplaceTransitGatewayRouteResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ReplaceTransitGatewayRouteResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReplaceTransitGatewayRouteResultBuilder();
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
    final payload = (object as ReplaceTransitGatewayRouteResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'ReplaceTransitGatewayRouteResultResponse',
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
