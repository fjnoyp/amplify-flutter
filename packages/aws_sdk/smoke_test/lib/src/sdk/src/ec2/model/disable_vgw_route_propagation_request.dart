// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.disable_vgw_route_propagation_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'disable_vgw_route_propagation_request.g.dart';

/// Contains the parameters for DisableVgwRoutePropagation.
abstract class DisableVgwRoutePropagationRequest
    with
        _i1.HttpInput<DisableVgwRoutePropagationRequest>,
        _i2.AWSEquatable<DisableVgwRoutePropagationRequest>
    implements
        Built<DisableVgwRoutePropagationRequest,
            DisableVgwRoutePropagationRequestBuilder> {
  /// Contains the parameters for DisableVgwRoutePropagation.
  factory DisableVgwRoutePropagationRequest({
    required String gatewayId,
    required String routeTableId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DisableVgwRoutePropagationRequest._(
      gatewayId: gatewayId,
      routeTableId: routeTableId,
      dryRun: dryRun,
    );
  }

  /// Contains the parameters for DisableVgwRoutePropagation.
  factory DisableVgwRoutePropagationRequest.build(
          [void Function(DisableVgwRoutePropagationRequestBuilder) updates]) =
      _$DisableVgwRoutePropagationRequest;

  const DisableVgwRoutePropagationRequest._();

  factory DisableVgwRoutePropagationRequest.fromRequest(
    DisableVgwRoutePropagationRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DisableVgwRoutePropagationRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DisableVgwRoutePropagationRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the virtual private gateway.
  String get gatewayId;

  /// The ID of the route table.
  String get routeTableId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DisableVgwRoutePropagationRequest getPayload() => this;
  @override
  List<Object?> get props => [
        gatewayId,
        routeTableId,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DisableVgwRoutePropagationRequest');
    helper.add(
      'gatewayId',
      gatewayId,
    );
    helper.add(
      'routeTableId',
      routeTableId,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class DisableVgwRoutePropagationRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DisableVgwRoutePropagationRequest> {
  const DisableVgwRoutePropagationRequestEc2QuerySerializer()
      : super('DisableVgwRoutePropagationRequest');

  @override
  Iterable<Type> get types => const [
        DisableVgwRoutePropagationRequest,
        _$DisableVgwRoutePropagationRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DisableVgwRoutePropagationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DisableVgwRoutePropagationRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'GatewayId':
          result.gatewayId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'RouteTableId':
          result.routeTableId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
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
    final payload = (object as DisableVgwRoutePropagationRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DisableVgwRoutePropagationRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('GatewayId'))
      ..add(serializers.serialize(
        payload.gatewayId,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('RouteTableId'))
      ..add(serializers.serialize(
        payload.routeTableId,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
