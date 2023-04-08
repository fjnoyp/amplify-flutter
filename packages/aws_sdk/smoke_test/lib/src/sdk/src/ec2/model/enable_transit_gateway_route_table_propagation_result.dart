// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.enable_transit_gateway_route_table_propagation_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_propagation.dart'
    as _i2;

part 'enable_transit_gateway_route_table_propagation_result.g.dart';

abstract class EnableTransitGatewayRouteTablePropagationResult
    with
        _i1.AWSEquatable<EnableTransitGatewayRouteTablePropagationResult>
    implements
        Built<EnableTransitGatewayRouteTablePropagationResult,
            EnableTransitGatewayRouteTablePropagationResultBuilder> {
  factory EnableTransitGatewayRouteTablePropagationResult(
      {_i2.TransitGatewayPropagation? propagation}) {
    return _$EnableTransitGatewayRouteTablePropagationResult._(
        propagation: propagation);
  }

  factory EnableTransitGatewayRouteTablePropagationResult.build(
      [void Function(EnableTransitGatewayRouteTablePropagationResultBuilder)
          updates]) = _$EnableTransitGatewayRouteTablePropagationResult;

  const EnableTransitGatewayRouteTablePropagationResult._();

  /// Constructs a [EnableTransitGatewayRouteTablePropagationResult] from a [payload] and [response].
  factory EnableTransitGatewayRouteTablePropagationResult.fromResponse(
    EnableTransitGatewayRouteTablePropagationResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    EnableTransitGatewayRouteTablePropagationResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EnableTransitGatewayRouteTablePropagationResultBuilder b) {}

  /// Information about route propagation.
  _i2.TransitGatewayPropagation? get propagation;
  @override
  List<Object?> get props => [propagation];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'EnableTransitGatewayRouteTablePropagationResult');
    helper.add(
      'propagation',
      propagation,
    );
    return helper.toString();
  }
}

class EnableTransitGatewayRouteTablePropagationResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<
        EnableTransitGatewayRouteTablePropagationResult> {
  const EnableTransitGatewayRouteTablePropagationResultEc2QuerySerializer()
      : super('EnableTransitGatewayRouteTablePropagationResult');

  @override
  Iterable<Type> get types => const [
        EnableTransitGatewayRouteTablePropagationResult,
        _$EnableTransitGatewayRouteTablePropagationResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  EnableTransitGatewayRouteTablePropagationResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EnableTransitGatewayRouteTablePropagationResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'propagation':
          if (value != null) {
            result.propagation.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.TransitGatewayPropagation),
            ) as _i2.TransitGatewayPropagation));
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
    final payload = (object as EnableTransitGatewayRouteTablePropagationResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'EnableTransitGatewayRouteTablePropagationResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.propagation != null) {
      result
        ..add(const _i3.XmlElementName('Propagation'))
        ..add(serializers.serialize(
          payload.propagation!,
          specifiedType: const FullType(_i2.TransitGatewayPropagation),
        ));
    }
    return result;
  }
}
