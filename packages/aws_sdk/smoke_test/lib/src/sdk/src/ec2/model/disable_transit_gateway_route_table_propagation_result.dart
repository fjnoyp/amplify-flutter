// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.disable_transit_gateway_route_table_propagation_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_propagation.dart'
    as _i2;

part 'disable_transit_gateway_route_table_propagation_result.g.dart';

abstract class DisableTransitGatewayRouteTablePropagationResult
    with
        _i1.AWSEquatable<DisableTransitGatewayRouteTablePropagationResult>
    implements
        Built<DisableTransitGatewayRouteTablePropagationResult,
            DisableTransitGatewayRouteTablePropagationResultBuilder> {
  factory DisableTransitGatewayRouteTablePropagationResult(
      {_i2.TransitGatewayPropagation? propagation}) {
    return _$DisableTransitGatewayRouteTablePropagationResult._(
        propagation: propagation);
  }

  factory DisableTransitGatewayRouteTablePropagationResult.build(
      [void Function(DisableTransitGatewayRouteTablePropagationResultBuilder)
          updates]) = _$DisableTransitGatewayRouteTablePropagationResult;

  const DisableTransitGatewayRouteTablePropagationResult._();

  /// Constructs a [DisableTransitGatewayRouteTablePropagationResult] from a [payload] and [response].
  factory DisableTransitGatewayRouteTablePropagationResult.fromResponse(
    DisableTransitGatewayRouteTablePropagationResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    DisableTransitGatewayRouteTablePropagationResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      DisableTransitGatewayRouteTablePropagationResultBuilder b) {}

  /// Information about route propagation.
  _i2.TransitGatewayPropagation? get propagation;
  @override
  List<Object?> get props => [propagation];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DisableTransitGatewayRouteTablePropagationResult');
    helper.add(
      'propagation',
      propagation,
    );
    return helper.toString();
  }
}

class DisableTransitGatewayRouteTablePropagationResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<
        DisableTransitGatewayRouteTablePropagationResult> {
  const DisableTransitGatewayRouteTablePropagationResultEc2QuerySerializer()
      : super('DisableTransitGatewayRouteTablePropagationResult');

  @override
  Iterable<Type> get types => const [
        DisableTransitGatewayRouteTablePropagationResult,
        _$DisableTransitGatewayRouteTablePropagationResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DisableTransitGatewayRouteTablePropagationResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DisableTransitGatewayRouteTablePropagationResultBuilder();
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
    final payload =
        (object as DisableTransitGatewayRouteTablePropagationResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'DisableTransitGatewayRouteTablePropagationResultResponse',
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
