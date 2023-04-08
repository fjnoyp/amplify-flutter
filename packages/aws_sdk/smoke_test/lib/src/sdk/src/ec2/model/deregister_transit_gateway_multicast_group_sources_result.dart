// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.deregister_transit_gateway_multicast_group_sources_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_multicast_deregistered_group_sources.dart'
    as _i2;

part 'deregister_transit_gateway_multicast_group_sources_result.g.dart';

abstract class DeregisterTransitGatewayMulticastGroupSourcesResult
    with
        _i1.AWSEquatable<DeregisterTransitGatewayMulticastGroupSourcesResult>
    implements
        Built<DeregisterTransitGatewayMulticastGroupSourcesResult,
            DeregisterTransitGatewayMulticastGroupSourcesResultBuilder> {
  factory DeregisterTransitGatewayMulticastGroupSourcesResult(
      {_i2.TransitGatewayMulticastDeregisteredGroupSources?
          deregisteredMulticastGroupSources}) {
    return _$DeregisterTransitGatewayMulticastGroupSourcesResult._(
        deregisteredMulticastGroupSources: deregisteredMulticastGroupSources);
  }

  factory DeregisterTransitGatewayMulticastGroupSourcesResult.build(
      [void Function(DeregisterTransitGatewayMulticastGroupSourcesResultBuilder)
          updates]) = _$DeregisterTransitGatewayMulticastGroupSourcesResult;

  const DeregisterTransitGatewayMulticastGroupSourcesResult._();

  /// Constructs a [DeregisterTransitGatewayMulticastGroupSourcesResult] from a [payload] and [response].
  factory DeregisterTransitGatewayMulticastGroupSourcesResult.fromResponse(
    DeregisterTransitGatewayMulticastGroupSourcesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    DeregisterTransitGatewayMulticastGroupSourcesResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      DeregisterTransitGatewayMulticastGroupSourcesResultBuilder b) {}

  /// Information about the deregistered group sources.
  _i2.TransitGatewayMulticastDeregisteredGroupSources?
      get deregisteredMulticastGroupSources;
  @override
  List<Object?> get props => [deregisteredMulticastGroupSources];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DeregisterTransitGatewayMulticastGroupSourcesResult');
    helper.add(
      'deregisteredMulticastGroupSources',
      deregisteredMulticastGroupSources,
    );
    return helper.toString();
  }
}

class DeregisterTransitGatewayMulticastGroupSourcesResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<
        DeregisterTransitGatewayMulticastGroupSourcesResult> {
  const DeregisterTransitGatewayMulticastGroupSourcesResultEc2QuerySerializer()
      : super('DeregisterTransitGatewayMulticastGroupSourcesResult');

  @override
  Iterable<Type> get types => const [
        DeregisterTransitGatewayMulticastGroupSourcesResult,
        _$DeregisterTransitGatewayMulticastGroupSourcesResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeregisterTransitGatewayMulticastGroupSourcesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeregisterTransitGatewayMulticastGroupSourcesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'deregisteredMulticastGroupSources':
          if (value != null) {
            result.deregisteredMulticastGroupSources
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                  _i2.TransitGatewayMulticastDeregisteredGroupSources),
            ) as _i2.TransitGatewayMulticastDeregisteredGroupSources));
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
        (object as DeregisterTransitGatewayMulticastGroupSourcesResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'DeregisterTransitGatewayMulticastGroupSourcesResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.deregisteredMulticastGroupSources != null) {
      result
        ..add(const _i3.XmlElementName('DeregisteredMulticastGroupSources'))
        ..add(serializers.serialize(
          payload.deregisteredMulticastGroupSources!,
          specifiedType: const FullType(
              _i2.TransitGatewayMulticastDeregisteredGroupSources),
        ));
    }
    return result;
  }
}
