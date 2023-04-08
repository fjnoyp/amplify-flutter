// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_customer_gateway_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/customer_gateway.dart' as _i2;

part 'create_customer_gateway_result.g.dart';

/// Contains the output of CreateCustomerGateway.
abstract class CreateCustomerGatewayResult
    with _i1.AWSEquatable<CreateCustomerGatewayResult>
    implements
        Built<CreateCustomerGatewayResult, CreateCustomerGatewayResultBuilder> {
  /// Contains the output of CreateCustomerGateway.
  factory CreateCustomerGatewayResult({_i2.CustomerGateway? customerGateway}) {
    return _$CreateCustomerGatewayResult._(customerGateway: customerGateway);
  }

  /// Contains the output of CreateCustomerGateway.
  factory CreateCustomerGatewayResult.build(
          [void Function(CreateCustomerGatewayResultBuilder) updates]) =
      _$CreateCustomerGatewayResult;

  const CreateCustomerGatewayResult._();

  /// Constructs a [CreateCustomerGatewayResult] from a [payload] and [response].
  factory CreateCustomerGatewayResult.fromResponse(
    CreateCustomerGatewayResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    CreateCustomerGatewayResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateCustomerGatewayResultBuilder b) {}

  /// Information about the customer gateway.
  _i2.CustomerGateway? get customerGateway;
  @override
  List<Object?> get props => [customerGateway];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateCustomerGatewayResult');
    helper.add(
      'customerGateway',
      customerGateway,
    );
    return helper.toString();
  }
}

class CreateCustomerGatewayResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<CreateCustomerGatewayResult> {
  const CreateCustomerGatewayResultEc2QuerySerializer()
      : super('CreateCustomerGatewayResult');

  @override
  Iterable<Type> get types => const [
        CreateCustomerGatewayResult,
        _$CreateCustomerGatewayResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateCustomerGatewayResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateCustomerGatewayResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'customerGateway':
          if (value != null) {
            result.customerGateway.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.CustomerGateway),
            ) as _i2.CustomerGateway));
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
    final payload = (object as CreateCustomerGatewayResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'CreateCustomerGatewayResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.customerGateway != null) {
      result
        ..add(const _i3.XmlElementName('CustomerGateway'))
        ..add(serializers.serialize(
          payload.customerGateway!,
          specifiedType: const FullType(_i2.CustomerGateway),
        ));
    }
    return result;
  }
}
