// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_vpc_endpoint_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_endpoint.dart' as _i2;

part 'create_vpc_endpoint_result.g.dart';

/// Contains the output of CreateVpcEndpoint.
abstract class CreateVpcEndpointResult
    with _i1.AWSEquatable<CreateVpcEndpointResult>
    implements Built<CreateVpcEndpointResult, CreateVpcEndpointResultBuilder> {
  /// Contains the output of CreateVpcEndpoint.
  factory CreateVpcEndpointResult({
    _i2.VpcEndpoint? vpcEndpoint,
    String? clientToken,
  }) {
    return _$CreateVpcEndpointResult._(
      vpcEndpoint: vpcEndpoint,
      clientToken: clientToken,
    );
  }

  /// Contains the output of CreateVpcEndpoint.
  factory CreateVpcEndpointResult.build(
          [void Function(CreateVpcEndpointResultBuilder) updates]) =
      _$CreateVpcEndpointResult;

  const CreateVpcEndpointResult._();

  /// Constructs a [CreateVpcEndpointResult] from a [payload] and [response].
  factory CreateVpcEndpointResult.fromResponse(
    CreateVpcEndpointResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    CreateVpcEndpointResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateVpcEndpointResultBuilder b) {}

  /// Information about the endpoint.
  _i2.VpcEndpoint? get vpcEndpoint;

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
  String? get clientToken;
  @override
  List<Object?> get props => [
        vpcEndpoint,
        clientToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateVpcEndpointResult');
    helper.add(
      'vpcEndpoint',
      vpcEndpoint,
    );
    helper.add(
      'clientToken',
      clientToken,
    );
    return helper.toString();
  }
}

class CreateVpcEndpointResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<CreateVpcEndpointResult> {
  const CreateVpcEndpointResultEc2QuerySerializer()
      : super('CreateVpcEndpointResult');

  @override
  Iterable<Type> get types => const [
        CreateVpcEndpointResult,
        _$CreateVpcEndpointResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateVpcEndpointResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateVpcEndpointResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'vpcEndpoint':
          if (value != null) {
            result.vpcEndpoint.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.VpcEndpoint),
            ) as _i2.VpcEndpoint));
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
    final payload = (object as CreateVpcEndpointResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'CreateVpcEndpointResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.vpcEndpoint != null) {
      result
        ..add(const _i3.XmlElementName('VpcEndpoint'))
        ..add(serializers.serialize(
          payload.vpcEndpoint!,
          specifiedType: const FullType(_i2.VpcEndpoint),
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
