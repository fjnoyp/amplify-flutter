// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_vpc_endpoint_service_configuration_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/service_configuration.dart'
    as _i2;

part 'create_vpc_endpoint_service_configuration_result.g.dart';

abstract class CreateVpcEndpointServiceConfigurationResult
    with
        _i1.AWSEquatable<CreateVpcEndpointServiceConfigurationResult>
    implements
        Built<CreateVpcEndpointServiceConfigurationResult,
            CreateVpcEndpointServiceConfigurationResultBuilder> {
  factory CreateVpcEndpointServiceConfigurationResult({
    _i2.ServiceConfiguration? serviceConfiguration,
    String? clientToken,
  }) {
    return _$CreateVpcEndpointServiceConfigurationResult._(
      serviceConfiguration: serviceConfiguration,
      clientToken: clientToken,
    );
  }

  factory CreateVpcEndpointServiceConfigurationResult.build(
      [void Function(CreateVpcEndpointServiceConfigurationResultBuilder)
          updates]) = _$CreateVpcEndpointServiceConfigurationResult;

  const CreateVpcEndpointServiceConfigurationResult._();

  /// Constructs a [CreateVpcEndpointServiceConfigurationResult] from a [payload] and [response].
  factory CreateVpcEndpointServiceConfigurationResult.fromResponse(
    CreateVpcEndpointServiceConfigurationResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    CreateVpcEndpointServiceConfigurationResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateVpcEndpointServiceConfigurationResultBuilder b) {}

  /// Information about the service configuration.
  _i2.ServiceConfiguration? get serviceConfiguration;

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
  String? get clientToken;
  @override
  List<Object?> get props => [
        serviceConfiguration,
        clientToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'CreateVpcEndpointServiceConfigurationResult');
    helper.add(
      'serviceConfiguration',
      serviceConfiguration,
    );
    helper.add(
      'clientToken',
      clientToken,
    );
    return helper.toString();
  }
}

class CreateVpcEndpointServiceConfigurationResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<CreateVpcEndpointServiceConfigurationResult> {
  const CreateVpcEndpointServiceConfigurationResultEc2QuerySerializer()
      : super('CreateVpcEndpointServiceConfigurationResult');

  @override
  Iterable<Type> get types => const [
        CreateVpcEndpointServiceConfigurationResult,
        _$CreateVpcEndpointServiceConfigurationResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateVpcEndpointServiceConfigurationResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateVpcEndpointServiceConfigurationResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'serviceConfiguration':
          if (value != null) {
            result.serviceConfiguration.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ServiceConfiguration),
            ) as _i2.ServiceConfiguration));
          }
          break;
        case 'clientToken':
          if (value != null) {
            result.clientToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as CreateVpcEndpointServiceConfigurationResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'CreateVpcEndpointServiceConfigurationResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.serviceConfiguration != null) {
      result
        ..add(const _i3.XmlElementName('ServiceConfiguration'))
        ..add(serializers.serialize(
          payload.serviceConfiguration!,
          specifiedType: const FullType(_i2.ServiceConfiguration),
        ));
    }
    if (payload.clientToken != null) {
      result
        ..add(const _i3.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          payload.clientToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
