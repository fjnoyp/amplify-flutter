// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.get_vpn_connection_device_sample_configuration_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'get_vpn_connection_device_sample_configuration_result.g.dart';

abstract class GetVpnConnectionDeviceSampleConfigurationResult
    with
        _i1.AWSEquatable<GetVpnConnectionDeviceSampleConfigurationResult>
    implements
        Built<GetVpnConnectionDeviceSampleConfigurationResult,
            GetVpnConnectionDeviceSampleConfigurationResultBuilder> {
  factory GetVpnConnectionDeviceSampleConfigurationResult(
      {String? vpnConnectionDeviceSampleConfiguration}) {
    return _$GetVpnConnectionDeviceSampleConfigurationResult._(
        vpnConnectionDeviceSampleConfiguration:
            vpnConnectionDeviceSampleConfiguration);
  }

  factory GetVpnConnectionDeviceSampleConfigurationResult.build(
      [void Function(GetVpnConnectionDeviceSampleConfigurationResultBuilder)
          updates]) = _$GetVpnConnectionDeviceSampleConfigurationResult;

  const GetVpnConnectionDeviceSampleConfigurationResult._();

  /// Constructs a [GetVpnConnectionDeviceSampleConfigurationResult] from a [payload] and [response].
  factory GetVpnConnectionDeviceSampleConfigurationResult.fromResponse(
    GetVpnConnectionDeviceSampleConfigurationResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    GetVpnConnectionDeviceSampleConfigurationResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetVpnConnectionDeviceSampleConfigurationResultBuilder b) {}

  /// Sample configuration file for the specified customer gateway device.
  String? get vpnConnectionDeviceSampleConfiguration;
  @override
  List<Object?> get props => [vpnConnectionDeviceSampleConfiguration];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GetVpnConnectionDeviceSampleConfigurationResult');
    helper.add(
      'vpnConnectionDeviceSampleConfiguration',
      '***SENSITIVE***',
    );
    return helper.toString();
  }
}

class GetVpnConnectionDeviceSampleConfigurationResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<
        GetVpnConnectionDeviceSampleConfigurationResult> {
  const GetVpnConnectionDeviceSampleConfigurationResultEc2QuerySerializer()
      : super('GetVpnConnectionDeviceSampleConfigurationResult');

  @override
  Iterable<Type> get types => const [
        GetVpnConnectionDeviceSampleConfigurationResult,
        _$GetVpnConnectionDeviceSampleConfigurationResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetVpnConnectionDeviceSampleConfigurationResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetVpnConnectionDeviceSampleConfigurationResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'vpnConnectionDeviceSampleConfiguration':
          if (value != null) {
            result.vpnConnectionDeviceSampleConfiguration =
                (serializers.deserialize(
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
    final payload = (object as GetVpnConnectionDeviceSampleConfigurationResult);
    final result = <Object?>[
      const _i2.XmlElementName(
        'GetVpnConnectionDeviceSampleConfigurationResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.vpnConnectionDeviceSampleConfiguration != null) {
      result
        ..add(
            const _i2.XmlElementName('VpnConnectionDeviceSampleConfiguration'))
        ..add(serializers.serialize(
          payload.vpnConnectionDeviceSampleConfiguration!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
