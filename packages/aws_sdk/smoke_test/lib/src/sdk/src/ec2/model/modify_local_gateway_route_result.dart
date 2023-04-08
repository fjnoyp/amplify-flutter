// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.modify_local_gateway_route_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/local_gateway_route.dart'
    as _i2;

part 'modify_local_gateway_route_result.g.dart';

abstract class ModifyLocalGatewayRouteResult
    with
        _i1.AWSEquatable<ModifyLocalGatewayRouteResult>
    implements
        Built<ModifyLocalGatewayRouteResult,
            ModifyLocalGatewayRouteResultBuilder> {
  factory ModifyLocalGatewayRouteResult({_i2.LocalGatewayRoute? route}) {
    return _$ModifyLocalGatewayRouteResult._(route: route);
  }

  factory ModifyLocalGatewayRouteResult.build(
          [void Function(ModifyLocalGatewayRouteResultBuilder) updates]) =
      _$ModifyLocalGatewayRouteResult;

  const ModifyLocalGatewayRouteResult._();

  /// Constructs a [ModifyLocalGatewayRouteResult] from a [payload] and [response].
  factory ModifyLocalGatewayRouteResult.fromResponse(
    ModifyLocalGatewayRouteResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    ModifyLocalGatewayRouteResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyLocalGatewayRouteResultBuilder b) {}

  /// Describes a route for a local gateway route table.
  _i2.LocalGatewayRoute? get route;
  @override
  List<Object?> get props => [route];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifyLocalGatewayRouteResult');
    helper.add(
      'route',
      route,
    );
    return helper.toString();
  }
}

class ModifyLocalGatewayRouteResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ModifyLocalGatewayRouteResult> {
  const ModifyLocalGatewayRouteResultEc2QuerySerializer()
      : super('ModifyLocalGatewayRouteResult');

  @override
  Iterable<Type> get types => const [
        ModifyLocalGatewayRouteResult,
        _$ModifyLocalGatewayRouteResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyLocalGatewayRouteResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyLocalGatewayRouteResultBuilder();
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
              specifiedType: const FullType(_i2.LocalGatewayRoute),
            ) as _i2.LocalGatewayRoute));
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
    final payload = (object as ModifyLocalGatewayRouteResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'ModifyLocalGatewayRouteResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.route != null) {
      result
        ..add(const _i3.XmlElementName('Route'))
        ..add(serializers.serialize(
          payload.route!,
          specifiedType: const FullType(_i2.LocalGatewayRoute),
        ));
    }
    return result;
  }
}
