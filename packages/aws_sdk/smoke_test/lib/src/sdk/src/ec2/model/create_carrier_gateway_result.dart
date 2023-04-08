// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_carrier_gateway_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/carrier_gateway.dart' as _i2;

part 'create_carrier_gateway_result.g.dart';

abstract class CreateCarrierGatewayResult
    with _i1.AWSEquatable<CreateCarrierGatewayResult>
    implements
        Built<CreateCarrierGatewayResult, CreateCarrierGatewayResultBuilder> {
  factory CreateCarrierGatewayResult({_i2.CarrierGateway? carrierGateway}) {
    return _$CreateCarrierGatewayResult._(carrierGateway: carrierGateway);
  }

  factory CreateCarrierGatewayResult.build(
          [void Function(CreateCarrierGatewayResultBuilder) updates]) =
      _$CreateCarrierGatewayResult;

  const CreateCarrierGatewayResult._();

  /// Constructs a [CreateCarrierGatewayResult] from a [payload] and [response].
  factory CreateCarrierGatewayResult.fromResponse(
    CreateCarrierGatewayResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    CreateCarrierGatewayResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateCarrierGatewayResultBuilder b) {}

  /// Information about the carrier gateway.
  _i2.CarrierGateway? get carrierGateway;
  @override
  List<Object?> get props => [carrierGateway];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateCarrierGatewayResult');
    helper.add(
      'carrierGateway',
      carrierGateway,
    );
    return helper.toString();
  }
}

class CreateCarrierGatewayResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<CreateCarrierGatewayResult> {
  const CreateCarrierGatewayResultEc2QuerySerializer()
      : super('CreateCarrierGatewayResult');

  @override
  Iterable<Type> get types => const [
        CreateCarrierGatewayResult,
        _$CreateCarrierGatewayResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateCarrierGatewayResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateCarrierGatewayResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'carrierGateway':
          if (value != null) {
            result.carrierGateway.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.CarrierGateway),
            ) as _i2.CarrierGateway));
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
    final payload = (object as CreateCarrierGatewayResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'CreateCarrierGatewayResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.carrierGateway != null) {
      result
        ..add(const _i3.XmlElementName('CarrierGateway'))
        ..add(serializers.serialize(
          payload.carrierGateway!,
          specifiedType: const FullType(_i2.CarrierGateway),
        ));
    }
    return result;
  }
}
