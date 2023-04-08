// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_transit_gateway_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway.dart' as _i2;

part 'create_transit_gateway_result.g.dart';

abstract class CreateTransitGatewayResult
    with _i1.AWSEquatable<CreateTransitGatewayResult>
    implements
        Built<CreateTransitGatewayResult, CreateTransitGatewayResultBuilder> {
  factory CreateTransitGatewayResult({_i2.TransitGateway? transitGateway}) {
    return _$CreateTransitGatewayResult._(transitGateway: transitGateway);
  }

  factory CreateTransitGatewayResult.build(
          [void Function(CreateTransitGatewayResultBuilder) updates]) =
      _$CreateTransitGatewayResult;

  const CreateTransitGatewayResult._();

  /// Constructs a [CreateTransitGatewayResult] from a [payload] and [response].
  factory CreateTransitGatewayResult.fromResponse(
    CreateTransitGatewayResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    CreateTransitGatewayResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateTransitGatewayResultBuilder b) {}

  /// Information about the transit gateway.
  _i2.TransitGateway? get transitGateway;
  @override
  List<Object?> get props => [transitGateway];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateTransitGatewayResult');
    helper.add(
      'transitGateway',
      transitGateway,
    );
    return helper.toString();
  }
}

class CreateTransitGatewayResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<CreateTransitGatewayResult> {
  const CreateTransitGatewayResultEc2QuerySerializer()
      : super('CreateTransitGatewayResult');

  @override
  Iterable<Type> get types => const [
        CreateTransitGatewayResult,
        _$CreateTransitGatewayResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateTransitGatewayResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTransitGatewayResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'transitGateway':
          if (value != null) {
            result.transitGateway.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.TransitGateway),
            ) as _i2.TransitGateway));
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
    final payload = (object as CreateTransitGatewayResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'CreateTransitGatewayResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.transitGateway != null) {
      result
        ..add(const _i3.XmlElementName('TransitGateway'))
        ..add(serializers.serialize(
          payload.transitGateway!,
          specifiedType: const FullType(_i2.TransitGateway),
        ));
    }
    return result;
  }
}
