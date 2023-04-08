// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_vpn_gateway_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_gateway.dart' as _i2;

part 'create_vpn_gateway_result.g.dart';

/// Contains the output of CreateVpnGateway.
abstract class CreateVpnGatewayResult
    with _i1.AWSEquatable<CreateVpnGatewayResult>
    implements Built<CreateVpnGatewayResult, CreateVpnGatewayResultBuilder> {
  /// Contains the output of CreateVpnGateway.
  factory CreateVpnGatewayResult({_i2.VpnGateway? vpnGateway}) {
    return _$CreateVpnGatewayResult._(vpnGateway: vpnGateway);
  }

  /// Contains the output of CreateVpnGateway.
  factory CreateVpnGatewayResult.build(
          [void Function(CreateVpnGatewayResultBuilder) updates]) =
      _$CreateVpnGatewayResult;

  const CreateVpnGatewayResult._();

  /// Constructs a [CreateVpnGatewayResult] from a [payload] and [response].
  factory CreateVpnGatewayResult.fromResponse(
    CreateVpnGatewayResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    CreateVpnGatewayResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateVpnGatewayResultBuilder b) {}

  /// Information about the virtual private gateway.
  _i2.VpnGateway? get vpnGateway;
  @override
  List<Object?> get props => [vpnGateway];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateVpnGatewayResult');
    helper.add(
      'vpnGateway',
      vpnGateway,
    );
    return helper.toString();
  }
}

class CreateVpnGatewayResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<CreateVpnGatewayResult> {
  const CreateVpnGatewayResultEc2QuerySerializer()
      : super('CreateVpnGatewayResult');

  @override
  Iterable<Type> get types => const [
        CreateVpnGatewayResult,
        _$CreateVpnGatewayResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateVpnGatewayResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateVpnGatewayResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'vpnGateway':
          if (value != null) {
            result.vpnGateway.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.VpnGateway),
            ) as _i2.VpnGateway));
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
    final payload = (object as CreateVpnGatewayResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'CreateVpnGatewayResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.vpnGateway != null) {
      result
        ..add(const _i3.XmlElementName('VpnGateway'))
        ..add(serializers.serialize(
          payload.vpnGateway!,
          specifiedType: const FullType(_i2.VpnGateway),
        ));
    }
    return result;
  }
}
