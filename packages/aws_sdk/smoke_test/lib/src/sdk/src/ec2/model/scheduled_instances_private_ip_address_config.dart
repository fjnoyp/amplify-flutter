// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.scheduled_instances_private_ip_address_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'scheduled_instances_private_ip_address_config.g.dart';

/// Describes a private IPv4 address for a Scheduled Instance.
abstract class ScheduledInstancesPrivateIpAddressConfig
    with
        _i1.AWSEquatable<ScheduledInstancesPrivateIpAddressConfig>
    implements
        Built<ScheduledInstancesPrivateIpAddressConfig,
            ScheduledInstancesPrivateIpAddressConfigBuilder> {
  /// Describes a private IPv4 address for a Scheduled Instance.
  factory ScheduledInstancesPrivateIpAddressConfig({
    bool? primary,
    String? privateIpAddress,
  }) {
    primary ??= false;
    return _$ScheduledInstancesPrivateIpAddressConfig._(
      primary: primary,
      privateIpAddress: privateIpAddress,
    );
  }

  /// Describes a private IPv4 address for a Scheduled Instance.
  factory ScheduledInstancesPrivateIpAddressConfig.build(
      [void Function(ScheduledInstancesPrivateIpAddressConfigBuilder)
          updates]) = _$ScheduledInstancesPrivateIpAddressConfig;

  const ScheduledInstancesPrivateIpAddressConfig._();

  static const List<_i2.SmithySerializer> serializers = [
    ScheduledInstancesPrivateIpAddressConfigEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ScheduledInstancesPrivateIpAddressConfigBuilder b) {
    b.primary = false;
  }

  /// Indicates whether this is a primary IPv4 address. Otherwise, this is a secondary IPv4 address.
  bool get primary;

  /// The IPv4 address.
  String? get privateIpAddress;
  @override
  List<Object?> get props => [
        primary,
        privateIpAddress,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ScheduledInstancesPrivateIpAddressConfig');
    helper.add(
      'primary',
      primary,
    );
    helper.add(
      'privateIpAddress',
      privateIpAddress,
    );
    return helper.toString();
  }
}

class ScheduledInstancesPrivateIpAddressConfigEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<ScheduledInstancesPrivateIpAddressConfig> {
  const ScheduledInstancesPrivateIpAddressConfigEc2QuerySerializer()
      : super('ScheduledInstancesPrivateIpAddressConfig');

  @override
  Iterable<Type> get types => const [
        ScheduledInstancesPrivateIpAddressConfig,
        _$ScheduledInstancesPrivateIpAddressConfig,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ScheduledInstancesPrivateIpAddressConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ScheduledInstancesPrivateIpAddressConfigBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Primary':
          result.primary = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'PrivateIpAddress':
          if (value != null) {
            result.privateIpAddress = (serializers.deserialize(
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
    final payload = (object as ScheduledInstancesPrivateIpAddressConfig);
    final result = <Object?>[
      const _i2.XmlElementName(
        'ScheduledInstancesPrivateIpAddressConfigResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i2.XmlElementName('Primary'))
      ..add(serializers.serialize(
        payload.primary,
        specifiedType: const FullType(bool),
      ));
    if (payload.privateIpAddress != null) {
      result
        ..add(const _i2.XmlElementName('PrivateIpAddress'))
        ..add(serializers.serialize(
          payload.privateIpAddress!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
