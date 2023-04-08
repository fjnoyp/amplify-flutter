// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_client_vpn_endpoint_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_endpoint_status.dart'
    as _i2;

part 'create_client_vpn_endpoint_result.g.dart';

abstract class CreateClientVpnEndpointResult
    with
        _i1.AWSEquatable<CreateClientVpnEndpointResult>
    implements
        Built<CreateClientVpnEndpointResult,
            CreateClientVpnEndpointResultBuilder> {
  factory CreateClientVpnEndpointResult({
    String? clientVpnEndpointId,
    _i2.ClientVpnEndpointStatus? status,
    String? dnsName,
  }) {
    return _$CreateClientVpnEndpointResult._(
      clientVpnEndpointId: clientVpnEndpointId,
      status: status,
      dnsName: dnsName,
    );
  }

  factory CreateClientVpnEndpointResult.build(
          [void Function(CreateClientVpnEndpointResultBuilder) updates]) =
      _$CreateClientVpnEndpointResult;

  const CreateClientVpnEndpointResult._();

  /// Constructs a [CreateClientVpnEndpointResult] from a [payload] and [response].
  factory CreateClientVpnEndpointResult.fromResponse(
    CreateClientVpnEndpointResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    CreateClientVpnEndpointResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateClientVpnEndpointResultBuilder b) {}

  /// The ID of the Client VPN endpoint.
  String? get clientVpnEndpointId;

  /// The current state of the Client VPN endpoint.
  _i2.ClientVpnEndpointStatus? get status;

  /// The DNS name to be used by clients when establishing their VPN session.
  String? get dnsName;
  @override
  List<Object?> get props => [
        clientVpnEndpointId,
        status,
        dnsName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateClientVpnEndpointResult');
    helper.add(
      'clientVpnEndpointId',
      clientVpnEndpointId,
    );
    helper.add(
      'status',
      status,
    );
    helper.add(
      'dnsName',
      dnsName,
    );
    return helper.toString();
  }
}

class CreateClientVpnEndpointResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<CreateClientVpnEndpointResult> {
  const CreateClientVpnEndpointResultEc2QuerySerializer()
      : super('CreateClientVpnEndpointResult');

  @override
  Iterable<Type> get types => const [
        CreateClientVpnEndpointResult,
        _$CreateClientVpnEndpointResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateClientVpnEndpointResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateClientVpnEndpointResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'clientVpnEndpointId':
          if (value != null) {
            result.clientVpnEndpointId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'status':
          if (value != null) {
            result.status.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ClientVpnEndpointStatus),
            ) as _i2.ClientVpnEndpointStatus));
          }
          break;
        case 'dnsName':
          if (value != null) {
            result.dnsName = (serializers.deserialize(
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
    final payload = (object as CreateClientVpnEndpointResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'CreateClientVpnEndpointResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.clientVpnEndpointId != null) {
      result
        ..add(const _i3.XmlElementName('ClientVpnEndpointId'))
        ..add(serializers.serialize(
          payload.clientVpnEndpointId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.status != null) {
      result
        ..add(const _i3.XmlElementName('Status'))
        ..add(serializers.serialize(
          payload.status!,
          specifiedType: const FullType(_i2.ClientVpnEndpointStatus),
        ));
    }
    if (payload.dnsName != null) {
      result
        ..add(const _i3.XmlElementName('DnsName'))
        ..add(serializers.serialize(
          payload.dnsName!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
