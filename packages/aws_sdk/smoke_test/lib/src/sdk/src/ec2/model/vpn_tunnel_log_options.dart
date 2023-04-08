// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.vpn_tunnel_log_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/cloud_watch_log_options.dart'
    as _i2;

part 'vpn_tunnel_log_options.g.dart';

/// Options for logging VPN tunnel activity.
abstract class VpnTunnelLogOptions
    with _i1.AWSEquatable<VpnTunnelLogOptions>
    implements Built<VpnTunnelLogOptions, VpnTunnelLogOptionsBuilder> {
  /// Options for logging VPN tunnel activity.
  factory VpnTunnelLogOptions(
      {_i2.CloudWatchLogOptions? cloudWatchLogOptions}) {
    return _$VpnTunnelLogOptions._(cloudWatchLogOptions: cloudWatchLogOptions);
  }

  /// Options for logging VPN tunnel activity.
  factory VpnTunnelLogOptions.build(
          [void Function(VpnTunnelLogOptionsBuilder) updates]) =
      _$VpnTunnelLogOptions;

  const VpnTunnelLogOptions._();

  static const List<_i3.SmithySerializer> serializers = [
    VpnTunnelLogOptionsEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(VpnTunnelLogOptionsBuilder b) {}

  /// Options for sending VPN tunnel logs to CloudWatch.
  _i2.CloudWatchLogOptions? get cloudWatchLogOptions;
  @override
  List<Object?> get props => [cloudWatchLogOptions];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('VpnTunnelLogOptions');
    helper.add(
      'cloudWatchLogOptions',
      cloudWatchLogOptions,
    );
    return helper.toString();
  }
}

class VpnTunnelLogOptionsEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<VpnTunnelLogOptions> {
  const VpnTunnelLogOptionsEc2QuerySerializer() : super('VpnTunnelLogOptions');

  @override
  Iterable<Type> get types => const [
        VpnTunnelLogOptions,
        _$VpnTunnelLogOptions,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VpnTunnelLogOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VpnTunnelLogOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'cloudWatchLogOptions':
          if (value != null) {
            result.cloudWatchLogOptions.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.CloudWatchLogOptions),
            ) as _i2.CloudWatchLogOptions));
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
    final payload = (object as VpnTunnelLogOptions);
    final result = <Object?>[
      const _i3.XmlElementName(
        'VpnTunnelLogOptionsResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.cloudWatchLogOptions != null) {
      result
        ..add(const _i3.XmlElementName('CloudWatchLogOptions'))
        ..add(serializers.serialize(
          payload.cloudWatchLogOptions!,
          specifiedType: const FullType(_i2.CloudWatchLogOptions),
        ));
    }
    return result;
  }
}
