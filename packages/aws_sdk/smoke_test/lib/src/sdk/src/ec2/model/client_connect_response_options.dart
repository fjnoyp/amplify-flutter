// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.client_connect_response_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_endpoint_attribute_status.dart'
    as _i2;

part 'client_connect_response_options.g.dart';

/// The options for managing connection authorization for new client connections.
abstract class ClientConnectResponseOptions
    with
        _i1.AWSEquatable<ClientConnectResponseOptions>
    implements
        Built<ClientConnectResponseOptions,
            ClientConnectResponseOptionsBuilder> {
  /// The options for managing connection authorization for new client connections.
  factory ClientConnectResponseOptions({
    bool? enabled,
    String? lambdaFunctionArn,
    _i2.ClientVpnEndpointAttributeStatus? status,
  }) {
    enabled ??= false;
    return _$ClientConnectResponseOptions._(
      enabled: enabled,
      lambdaFunctionArn: lambdaFunctionArn,
      status: status,
    );
  }

  /// The options for managing connection authorization for new client connections.
  factory ClientConnectResponseOptions.build(
          [void Function(ClientConnectResponseOptionsBuilder) updates]) =
      _$ClientConnectResponseOptions;

  const ClientConnectResponseOptions._();

  static const List<_i3.SmithySerializer> serializers = [
    ClientConnectResponseOptionsEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ClientConnectResponseOptionsBuilder b) {
    b.enabled = false;
  }

  /// Indicates whether client connect options are enabled.
  bool get enabled;

  /// The Amazon Resource Name (ARN) of the Lambda function used for connection authorization.
  String? get lambdaFunctionArn;

  /// The status of any updates to the client connect options.
  _i2.ClientVpnEndpointAttributeStatus? get status;
  @override
  List<Object?> get props => [
        enabled,
        lambdaFunctionArn,
        status,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ClientConnectResponseOptions');
    helper.add(
      'enabled',
      enabled,
    );
    helper.add(
      'lambdaFunctionArn',
      lambdaFunctionArn,
    );
    helper.add(
      'status',
      status,
    );
    return helper.toString();
  }
}

class ClientConnectResponseOptionsEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ClientConnectResponseOptions> {
  const ClientConnectResponseOptionsEc2QuerySerializer()
      : super('ClientConnectResponseOptions');

  @override
  Iterable<Type> get types => const [
        ClientConnectResponseOptions,
        _$ClientConnectResponseOptions,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ClientConnectResponseOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClientConnectResponseOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'enabled':
          result.enabled = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'lambdaFunctionArn':
          if (value != null) {
            result.lambdaFunctionArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'status':
          if (value != null) {
            result.status.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i2.ClientVpnEndpointAttributeStatus),
            ) as _i2.ClientVpnEndpointAttributeStatus));
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
    final payload = (object as ClientConnectResponseOptions);
    final result = <Object?>[
      const _i3.XmlElementName(
        'ClientConnectResponseOptionsResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i3.XmlElementName('Enabled'))
      ..add(serializers.serialize(
        payload.enabled,
        specifiedType: const FullType(bool),
      ));
    if (payload.lambdaFunctionArn != null) {
      result
        ..add(const _i3.XmlElementName('LambdaFunctionArn'))
        ..add(serializers.serialize(
          payload.lambdaFunctionArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.status != null) {
      result
        ..add(const _i3.XmlElementName('Status'))
        ..add(serializers.serialize(
          payload.status!,
          specifiedType: const FullType(_i2.ClientVpnEndpointAttributeStatus),
        ));
    }
    return result;
  }
}
