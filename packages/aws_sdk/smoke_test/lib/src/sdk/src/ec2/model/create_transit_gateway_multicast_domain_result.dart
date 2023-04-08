// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_transit_gateway_multicast_domain_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_multicast_domain.dart'
    as _i2;

part 'create_transit_gateway_multicast_domain_result.g.dart';

abstract class CreateTransitGatewayMulticastDomainResult
    with
        _i1.AWSEquatable<CreateTransitGatewayMulticastDomainResult>
    implements
        Built<CreateTransitGatewayMulticastDomainResult,
            CreateTransitGatewayMulticastDomainResultBuilder> {
  factory CreateTransitGatewayMulticastDomainResult(
      {_i2.TransitGatewayMulticastDomain? transitGatewayMulticastDomain}) {
    return _$CreateTransitGatewayMulticastDomainResult._(
        transitGatewayMulticastDomain: transitGatewayMulticastDomain);
  }

  factory CreateTransitGatewayMulticastDomainResult.build(
      [void Function(CreateTransitGatewayMulticastDomainResultBuilder)
          updates]) = _$CreateTransitGatewayMulticastDomainResult;

  const CreateTransitGatewayMulticastDomainResult._();

  /// Constructs a [CreateTransitGatewayMulticastDomainResult] from a [payload] and [response].
  factory CreateTransitGatewayMulticastDomainResult.fromResponse(
    CreateTransitGatewayMulticastDomainResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    CreateTransitGatewayMulticastDomainResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateTransitGatewayMulticastDomainResultBuilder b) {}

  /// Information about the transit gateway multicast domain.
  _i2.TransitGatewayMulticastDomain? get transitGatewayMulticastDomain;
  @override
  List<Object?> get props => [transitGatewayMulticastDomain];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'CreateTransitGatewayMulticastDomainResult');
    helper.add(
      'transitGatewayMulticastDomain',
      transitGatewayMulticastDomain,
    );
    return helper.toString();
  }
}

class CreateTransitGatewayMulticastDomainResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<CreateTransitGatewayMulticastDomainResult> {
  const CreateTransitGatewayMulticastDomainResultEc2QuerySerializer()
      : super('CreateTransitGatewayMulticastDomainResult');

  @override
  Iterable<Type> get types => const [
        CreateTransitGatewayMulticastDomainResult,
        _$CreateTransitGatewayMulticastDomainResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateTransitGatewayMulticastDomainResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTransitGatewayMulticastDomainResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'transitGatewayMulticastDomain':
          if (value != null) {
            result.transitGatewayMulticastDomain
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.TransitGatewayMulticastDomain),
            ) as _i2.TransitGatewayMulticastDomain));
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
    final payload = (object as CreateTransitGatewayMulticastDomainResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'CreateTransitGatewayMulticastDomainResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.transitGatewayMulticastDomain != null) {
      result
        ..add(const _i3.XmlElementName('TransitGatewayMulticastDomain'))
        ..add(serializers.serialize(
          payload.transitGatewayMulticastDomain!,
          specifiedType: const FullType(_i2.TransitGatewayMulticastDomain),
        ));
    }
    return result;
  }
}
