// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.register_transit_gateway_multicast_group_sources_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_multicast_registered_group_sources.dart'
    as _i2;

part 'register_transit_gateway_multicast_group_sources_result.g.dart';

abstract class RegisterTransitGatewayMulticastGroupSourcesResult
    with
        _i1.AWSEquatable<RegisterTransitGatewayMulticastGroupSourcesResult>
    implements
        Built<RegisterTransitGatewayMulticastGroupSourcesResult,
            RegisterTransitGatewayMulticastGroupSourcesResultBuilder> {
  factory RegisterTransitGatewayMulticastGroupSourcesResult(
      {_i2.TransitGatewayMulticastRegisteredGroupSources?
          registeredMulticastGroupSources}) {
    return _$RegisterTransitGatewayMulticastGroupSourcesResult._(
        registeredMulticastGroupSources: registeredMulticastGroupSources);
  }

  factory RegisterTransitGatewayMulticastGroupSourcesResult.build(
      [void Function(RegisterTransitGatewayMulticastGroupSourcesResultBuilder)
          updates]) = _$RegisterTransitGatewayMulticastGroupSourcesResult;

  const RegisterTransitGatewayMulticastGroupSourcesResult._();

  /// Constructs a [RegisterTransitGatewayMulticastGroupSourcesResult] from a [payload] and [response].
  factory RegisterTransitGatewayMulticastGroupSourcesResult.fromResponse(
    RegisterTransitGatewayMulticastGroupSourcesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    RegisterTransitGatewayMulticastGroupSourcesResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      RegisterTransitGatewayMulticastGroupSourcesResultBuilder b) {}

  /// Information about the transit gateway multicast group sources.
  _i2.TransitGatewayMulticastRegisteredGroupSources?
      get registeredMulticastGroupSources;
  @override
  List<Object?> get props => [registeredMulticastGroupSources];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'RegisterTransitGatewayMulticastGroupSourcesResult');
    helper.add(
      'registeredMulticastGroupSources',
      registeredMulticastGroupSources,
    );
    return helper.toString();
  }
}

class RegisterTransitGatewayMulticastGroupSourcesResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<
        RegisterTransitGatewayMulticastGroupSourcesResult> {
  const RegisterTransitGatewayMulticastGroupSourcesResultEc2QuerySerializer()
      : super('RegisterTransitGatewayMulticastGroupSourcesResult');

  @override
  Iterable<Type> get types => const [
        RegisterTransitGatewayMulticastGroupSourcesResult,
        _$RegisterTransitGatewayMulticastGroupSourcesResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RegisterTransitGatewayMulticastGroupSourcesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RegisterTransitGatewayMulticastGroupSourcesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'registeredMulticastGroupSources':
          if (value != null) {
            result.registeredMulticastGroupSources
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                  _i2.TransitGatewayMulticastRegisteredGroupSources),
            ) as _i2.TransitGatewayMulticastRegisteredGroupSources));
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
        (object as RegisterTransitGatewayMulticastGroupSourcesResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'RegisterTransitGatewayMulticastGroupSourcesResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.registeredMulticastGroupSources != null) {
      result
        ..add(const _i3.XmlElementName('RegisteredMulticastGroupSources'))
        ..add(serializers.serialize(
          payload.registeredMulticastGroupSources!,
          specifiedType:
              const FullType(_i2.TransitGatewayMulticastRegisteredGroupSources),
        ));
    }
    return result;
  }
}
