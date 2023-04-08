// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.vpn_tunnel_log_options_specification; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/cloud_watch_log_options_specification.dart'
    as _i2;

part 'vpn_tunnel_log_options_specification.g.dart';

/// Options for logging VPN tunnel activity.
abstract class VpnTunnelLogOptionsSpecification
    with
        _i1.AWSEquatable<VpnTunnelLogOptionsSpecification>
    implements
        Built<VpnTunnelLogOptionsSpecification,
            VpnTunnelLogOptionsSpecificationBuilder> {
  /// Options for logging VPN tunnel activity.
  factory VpnTunnelLogOptionsSpecification(
      {_i2.CloudWatchLogOptionsSpecification? cloudWatchLogOptions}) {
    return _$VpnTunnelLogOptionsSpecification._(
        cloudWatchLogOptions: cloudWatchLogOptions);
  }

  /// Options for logging VPN tunnel activity.
  factory VpnTunnelLogOptionsSpecification.build(
          [void Function(VpnTunnelLogOptionsSpecificationBuilder) updates]) =
      _$VpnTunnelLogOptionsSpecification;

  const VpnTunnelLogOptionsSpecification._();

  static const List<_i3.SmithySerializer> serializers = [
    VpnTunnelLogOptionsSpecificationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(VpnTunnelLogOptionsSpecificationBuilder b) {}

  /// Options for sending VPN tunnel logs to CloudWatch.
  _i2.CloudWatchLogOptionsSpecification? get cloudWatchLogOptions;
  @override
  List<Object?> get props => [cloudWatchLogOptions];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('VpnTunnelLogOptionsSpecification');
    helper.add(
      'cloudWatchLogOptions',
      cloudWatchLogOptions,
    );
    return helper.toString();
  }
}

class VpnTunnelLogOptionsSpecificationEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<VpnTunnelLogOptionsSpecification> {
  const VpnTunnelLogOptionsSpecificationEc2QuerySerializer()
      : super('VpnTunnelLogOptionsSpecification');

  @override
  Iterable<Type> get types => const [
        VpnTunnelLogOptionsSpecification,
        _$VpnTunnelLogOptionsSpecification,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  VpnTunnelLogOptionsSpecification deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VpnTunnelLogOptionsSpecificationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'CloudWatchLogOptions':
          if (value != null) {
            result.cloudWatchLogOptions.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i2.CloudWatchLogOptionsSpecification),
            ) as _i2.CloudWatchLogOptionsSpecification));
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
    final payload = (object as VpnTunnelLogOptionsSpecification);
    final result = <Object?>[
      const _i3.XmlElementName(
        'VpnTunnelLogOptionsSpecificationResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.cloudWatchLogOptions != null) {
      result
        ..add(const _i3.XmlElementName('CloudWatchLogOptions'))
        ..add(serializers.serialize(
          payload.cloudWatchLogOptions!,
          specifiedType: const FullType(_i2.CloudWatchLogOptionsSpecification),
        ));
    }
    return result;
  }
}
