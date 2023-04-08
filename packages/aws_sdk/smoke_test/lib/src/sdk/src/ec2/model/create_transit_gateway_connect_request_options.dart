// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_transit_gateway_connect_request_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/protocol_value.dart' as _i2;

part 'create_transit_gateway_connect_request_options.g.dart';

/// The options for a Connect attachment.
abstract class CreateTransitGatewayConnectRequestOptions
    with
        _i1.AWSEquatable<CreateTransitGatewayConnectRequestOptions>
    implements
        Built<CreateTransitGatewayConnectRequestOptions,
            CreateTransitGatewayConnectRequestOptionsBuilder> {
  /// The options for a Connect attachment.
  factory CreateTransitGatewayConnectRequestOptions(
      {required _i2.ProtocolValue protocol}) {
    return _$CreateTransitGatewayConnectRequestOptions._(protocol: protocol);
  }

  /// The options for a Connect attachment.
  factory CreateTransitGatewayConnectRequestOptions.build(
      [void Function(CreateTransitGatewayConnectRequestOptionsBuilder)
          updates]) = _$CreateTransitGatewayConnectRequestOptions;

  const CreateTransitGatewayConnectRequestOptions._();

  static const List<_i3.SmithySerializer> serializers = [
    CreateTransitGatewayConnectRequestOptionsEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateTransitGatewayConnectRequestOptionsBuilder b) {}

  /// The tunnel protocol.
  _i2.ProtocolValue get protocol;
  @override
  List<Object?> get props => [protocol];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'CreateTransitGatewayConnectRequestOptions');
    helper.add(
      'protocol',
      protocol,
    );
    return helper.toString();
  }
}

class CreateTransitGatewayConnectRequestOptionsEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<CreateTransitGatewayConnectRequestOptions> {
  const CreateTransitGatewayConnectRequestOptionsEc2QuerySerializer()
      : super('CreateTransitGatewayConnectRequestOptions');

  @override
  Iterable<Type> get types => const [
        CreateTransitGatewayConnectRequestOptions,
        _$CreateTransitGatewayConnectRequestOptions,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateTransitGatewayConnectRequestOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTransitGatewayConnectRequestOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Protocol':
          result.protocol = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i2.ProtocolValue),
          ) as _i2.ProtocolValue);
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
    final payload = (object as CreateTransitGatewayConnectRequestOptions);
    final result = <Object?>[
      const _i3.XmlElementName(
        'CreateTransitGatewayConnectRequestOptionsResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i3.XmlElementName('Protocol'))
      ..add(serializers.serialize(
        payload.protocol,
        specifiedType: const FullType.nullable(_i2.ProtocolValue),
      ));
    return result;
  }
}
