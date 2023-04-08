// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.client_connect_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'client_connect_options.g.dart';

/// The options for managing connection authorization for new client connections.
abstract class ClientConnectOptions
    with _i1.AWSEquatable<ClientConnectOptions>
    implements Built<ClientConnectOptions, ClientConnectOptionsBuilder> {
  /// The options for managing connection authorization for new client connections.
  factory ClientConnectOptions({
    bool? enabled,
    String? lambdaFunctionArn,
  }) {
    enabled ??= false;
    return _$ClientConnectOptions._(
      enabled: enabled,
      lambdaFunctionArn: lambdaFunctionArn,
    );
  }

  /// The options for managing connection authorization for new client connections.
  factory ClientConnectOptions.build(
          [void Function(ClientConnectOptionsBuilder) updates]) =
      _$ClientConnectOptions;

  const ClientConnectOptions._();

  static const List<_i2.SmithySerializer> serializers = [
    ClientConnectOptionsEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ClientConnectOptionsBuilder b) {
    b.enabled = false;
  }

  /// Indicates whether client connect options are enabled. The default is `false` (not enabled).
  bool get enabled;

  /// The Amazon Resource Name (ARN) of the Lambda function used for connection authorization.
  String? get lambdaFunctionArn;
  @override
  List<Object?> get props => [
        enabled,
        lambdaFunctionArn,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ClientConnectOptions');
    helper.add(
      'enabled',
      enabled,
    );
    helper.add(
      'lambdaFunctionArn',
      lambdaFunctionArn,
    );
    return helper.toString();
  }
}

class ClientConnectOptionsEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ClientConnectOptions> {
  const ClientConnectOptionsEc2QuerySerializer()
      : super('ClientConnectOptions');

  @override
  Iterable<Type> get types => const [
        ClientConnectOptions,
        _$ClientConnectOptions,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ClientConnectOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClientConnectOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Enabled':
          result.enabled = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'LambdaFunctionArn':
          if (value != null) {
            result.lambdaFunctionArn = (serializers.deserialize(
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
    final payload = (object as ClientConnectOptions);
    final result = <Object?>[
      const _i2.XmlElementName(
        'ClientConnectOptionsResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i2.XmlElementName('Enabled'))
      ..add(serializers.serialize(
        payload.enabled,
        specifiedType: const FullType(bool),
      ));
    if (payload.lambdaFunctionArn != null) {
      result
        ..add(const _i2.XmlElementName('LambdaFunctionArn'))
        ..add(serializers.serialize(
          payload.lambdaFunctionArn!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
