// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_vpn_connection_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/vpn_connection.dart' as _i2;

part 'create_vpn_connection_result.g.dart';

/// Contains the output of CreateVpnConnection.
abstract class CreateVpnConnectionResult
    with _i1.AWSEquatable<CreateVpnConnectionResult>
    implements
        Built<CreateVpnConnectionResult, CreateVpnConnectionResultBuilder> {
  /// Contains the output of CreateVpnConnection.
  factory CreateVpnConnectionResult({_i2.VpnConnection? vpnConnection}) {
    return _$CreateVpnConnectionResult._(vpnConnection: vpnConnection);
  }

  /// Contains the output of CreateVpnConnection.
  factory CreateVpnConnectionResult.build(
          [void Function(CreateVpnConnectionResultBuilder) updates]) =
      _$CreateVpnConnectionResult;

  const CreateVpnConnectionResult._();

  /// Constructs a [CreateVpnConnectionResult] from a [payload] and [response].
  factory CreateVpnConnectionResult.fromResponse(
    CreateVpnConnectionResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    CreateVpnConnectionResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateVpnConnectionResultBuilder b) {}

  /// Information about the VPN connection.
  _i2.VpnConnection? get vpnConnection;
  @override
  List<Object?> get props => [vpnConnection];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateVpnConnectionResult');
    helper.add(
      'vpnConnection',
      vpnConnection,
    );
    return helper.toString();
  }
}

class CreateVpnConnectionResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<CreateVpnConnectionResult> {
  const CreateVpnConnectionResultEc2QuerySerializer()
      : super('CreateVpnConnectionResult');

  @override
  Iterable<Type> get types => const [
        CreateVpnConnectionResult,
        _$CreateVpnConnectionResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateVpnConnectionResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateVpnConnectionResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'vpnConnection':
          if (value != null) {
            result.vpnConnection.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.VpnConnection),
            ) as _i2.VpnConnection));
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
    final payload = (object as CreateVpnConnectionResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'CreateVpnConnectionResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.vpnConnection != null) {
      result
        ..add(const _i3.XmlElementName('VpnConnection'))
        ..add(serializers.serialize(
          payload.vpnConnection!,
          specifiedType: const FullType(_i2.VpnConnection),
        ));
    }
    return result;
  }
}
