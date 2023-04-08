// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_local_gateway_route_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/local_gateway_route.dart'
    as _i2;

part 'create_local_gateway_route_result.g.dart';

abstract class CreateLocalGatewayRouteResult
    with
        _i1.AWSEquatable<CreateLocalGatewayRouteResult>
    implements
        Built<CreateLocalGatewayRouteResult,
            CreateLocalGatewayRouteResultBuilder> {
  factory CreateLocalGatewayRouteResult({_i2.LocalGatewayRoute? route}) {
    return _$CreateLocalGatewayRouteResult._(route: route);
  }

  factory CreateLocalGatewayRouteResult.build(
          [void Function(CreateLocalGatewayRouteResultBuilder) updates]) =
      _$CreateLocalGatewayRouteResult;

  const CreateLocalGatewayRouteResult._();

  /// Constructs a [CreateLocalGatewayRouteResult] from a [payload] and [response].
  factory CreateLocalGatewayRouteResult.fromResponse(
    CreateLocalGatewayRouteResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    CreateLocalGatewayRouteResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateLocalGatewayRouteResultBuilder b) {}

  /// Information about the route.
  _i2.LocalGatewayRoute? get route;
  @override
  List<Object?> get props => [route];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateLocalGatewayRouteResult');
    helper.add(
      'route',
      route,
    );
    return helper.toString();
  }
}

class CreateLocalGatewayRouteResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<CreateLocalGatewayRouteResult> {
  const CreateLocalGatewayRouteResultEc2QuerySerializer()
      : super('CreateLocalGatewayRouteResult');

  @override
  Iterable<Type> get types => const [
        CreateLocalGatewayRouteResult,
        _$CreateLocalGatewayRouteResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateLocalGatewayRouteResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateLocalGatewayRouteResultBuilder();
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
    final payload = (object as CreateLocalGatewayRouteResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'CreateLocalGatewayRouteResultResponse',
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
