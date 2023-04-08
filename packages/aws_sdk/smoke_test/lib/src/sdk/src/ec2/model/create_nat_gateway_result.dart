// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_nat_gateway_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/nat_gateway.dart' as _i2;

part 'create_nat_gateway_result.g.dart';

abstract class CreateNatGatewayResult
    with _i1.AWSEquatable<CreateNatGatewayResult>
    implements Built<CreateNatGatewayResult, CreateNatGatewayResultBuilder> {
  factory CreateNatGatewayResult({
    String? clientToken,
    _i2.NatGateway? natGateway,
  }) {
    return _$CreateNatGatewayResult._(
      clientToken: clientToken,
      natGateway: natGateway,
    );
  }

  factory CreateNatGatewayResult.build(
          [void Function(CreateNatGatewayResultBuilder) updates]) =
      _$CreateNatGatewayResult;

  const CreateNatGatewayResult._();

  /// Constructs a [CreateNatGatewayResult] from a [payload] and [response].
  factory CreateNatGatewayResult.fromResponse(
    CreateNatGatewayResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    CreateNatGatewayResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateNatGatewayResultBuilder b) {}

  /// Unique, case-sensitive identifier to ensure the idempotency of the request. Only returned if a client token was provided in the request.
  String? get clientToken;

  /// Information about the NAT gateway.
  _i2.NatGateway? get natGateway;
  @override
  List<Object?> get props => [
        clientToken,
        natGateway,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateNatGatewayResult');
    helper.add(
      'clientToken',
      clientToken,
    );
    helper.add(
      'natGateway',
      natGateway,
    );
    return helper.toString();
  }
}

class CreateNatGatewayResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<CreateNatGatewayResult> {
  const CreateNatGatewayResultEc2QuerySerializer()
      : super('CreateNatGatewayResult');

  @override
  Iterable<Type> get types => const [
        CreateNatGatewayResult,
        _$CreateNatGatewayResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateNatGatewayResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateNatGatewayResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'clientToken':
          if (value != null) {
            result.clientToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'natGateway':
          if (value != null) {
            result.natGateway.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.NatGateway),
            ) as _i2.NatGateway));
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
    final payload = (object as CreateNatGatewayResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'CreateNatGatewayResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.clientToken != null) {
      result
        ..add(const _i3.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          payload.clientToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.natGateway != null) {
      result
        ..add(const _i3.XmlElementName('NatGateway'))
        ..add(serializers.serialize(
          payload.natGateway!,
          specifiedType: const FullType(_i2.NatGateway),
        ));
    }
    return result;
  }
}
