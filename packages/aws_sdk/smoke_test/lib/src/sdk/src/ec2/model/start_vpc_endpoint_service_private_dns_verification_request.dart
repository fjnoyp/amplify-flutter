// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.start_vpc_endpoint_service_private_dns_verification_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'start_vpc_endpoint_service_private_dns_verification_request.g.dart';

abstract class StartVpcEndpointServicePrivateDnsVerificationRequest
    with
        _i1.HttpInput<StartVpcEndpointServicePrivateDnsVerificationRequest>,
        _i2.AWSEquatable<StartVpcEndpointServicePrivateDnsVerificationRequest>
    implements
        Built<StartVpcEndpointServicePrivateDnsVerificationRequest,
            StartVpcEndpointServicePrivateDnsVerificationRequestBuilder> {
  factory StartVpcEndpointServicePrivateDnsVerificationRequest({
    bool? dryRun,
    required String serviceId,
  }) {
    dryRun ??= false;
    return _$StartVpcEndpointServicePrivateDnsVerificationRequest._(
      dryRun: dryRun,
      serviceId: serviceId,
    );
  }

  factory StartVpcEndpointServicePrivateDnsVerificationRequest.build(
      [void Function(
              StartVpcEndpointServicePrivateDnsVerificationRequestBuilder)
          updates]) = _$StartVpcEndpointServicePrivateDnsVerificationRequest;

  const StartVpcEndpointServicePrivateDnsVerificationRequest._();

  factory StartVpcEndpointServicePrivateDnsVerificationRequest.fromRequest(
    StartVpcEndpointServicePrivateDnsVerificationRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    StartVpcEndpointServicePrivateDnsVerificationRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      StartVpcEndpointServicePrivateDnsVerificationRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the endpoint service.
  String get serviceId;
  @override
  StartVpcEndpointServicePrivateDnsVerificationRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        serviceId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'StartVpcEndpointServicePrivateDnsVerificationRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'serviceId',
      serviceId,
    );
    return helper.toString();
  }
}

class StartVpcEndpointServicePrivateDnsVerificationRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<
        StartVpcEndpointServicePrivateDnsVerificationRequest> {
  const StartVpcEndpointServicePrivateDnsVerificationRequestEc2QuerySerializer()
      : super('StartVpcEndpointServicePrivateDnsVerificationRequest');

  @override
  Iterable<Type> get types => const [
        StartVpcEndpointServicePrivateDnsVerificationRequest,
        _$StartVpcEndpointServicePrivateDnsVerificationRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  StartVpcEndpointServicePrivateDnsVerificationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        StartVpcEndpointServicePrivateDnsVerificationRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'ServiceId':
          result.serviceId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
        (object as StartVpcEndpointServicePrivateDnsVerificationRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'StartVpcEndpointServicePrivateDnsVerificationRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i1.XmlElementName('ServiceId'))
      ..add(serializers.serialize(
        payload.serviceId,
        specifiedType: const FullType(String),
      ));
    return result;
  }
}
