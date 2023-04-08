// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.private_dns_name_configuration; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/dns_name_state.dart' as _i2;

part 'private_dns_name_configuration.g.dart';

/// Information about the private DNS name for the service endpoint.
abstract class PrivateDnsNameConfiguration
    with _i1.AWSEquatable<PrivateDnsNameConfiguration>
    implements
        Built<PrivateDnsNameConfiguration, PrivateDnsNameConfigurationBuilder> {
  /// Information about the private DNS name for the service endpoint.
  factory PrivateDnsNameConfiguration({
    _i2.DnsNameState? state,
    String? type,
    String? value,
    String? name,
  }) {
    return _$PrivateDnsNameConfiguration._(
      state: state,
      type: type,
      value: value,
      name: name,
    );
  }

  /// Information about the private DNS name for the service endpoint.
  factory PrivateDnsNameConfiguration.build(
          [void Function(PrivateDnsNameConfigurationBuilder) updates]) =
      _$PrivateDnsNameConfiguration;

  const PrivateDnsNameConfiguration._();

  static const List<_i3.SmithySerializer> serializers = [
    PrivateDnsNameConfigurationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PrivateDnsNameConfigurationBuilder b) {}

  /// The verification state of the VPC endpoint service.
  ///
  /// >Consumers of the endpoint service can use the private name only when the state is `verified`.
  _i2.DnsNameState? get state;

  /// The endpoint service verification type, for example TXT.
  String? get type;

  /// The value the service provider adds to the private DNS name domain record before verification.
  String? get value;

  /// The name of the record subdomain the service provider needs to create. The service provider adds the `value` text to the `name`.
  String? get name;
  @override
  List<Object?> get props => [
        state,
        type,
        value,
        name,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PrivateDnsNameConfiguration');
    helper.add(
      'state',
      state,
    );
    helper.add(
      'type',
      type,
    );
    helper.add(
      'value',
      value,
    );
    helper.add(
      'name',
      name,
    );
    return helper.toString();
  }
}

class PrivateDnsNameConfigurationEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<PrivateDnsNameConfiguration> {
  const PrivateDnsNameConfigurationEc2QuerySerializer()
      : super('PrivateDnsNameConfiguration');

  @override
  Iterable<Type> get types => const [
        PrivateDnsNameConfiguration,
        _$PrivateDnsNameConfiguration,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  PrivateDnsNameConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PrivateDnsNameConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'state':
          if (value != null) {
            result.state = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.DnsNameState),
            ) as _i2.DnsNameState);
          }
          break;
        case 'type':
          if (value != null) {
            result.type = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'value':
          if (value != null) {
            result.value = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'name':
          if (value != null) {
            result.name = (serializers.deserialize(
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
    final payload = (object as PrivateDnsNameConfiguration);
    final result = <Object?>[
      const _i3.XmlElementName(
        'PrivateDnsNameConfigurationResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.state != null) {
      result
        ..add(const _i3.XmlElementName('State'))
        ..add(serializers.serialize(
          payload.state!,
          specifiedType: const FullType.nullable(_i2.DnsNameState),
        ));
    }
    if (payload.type != null) {
      result
        ..add(const _i3.XmlElementName('Type'))
        ..add(serializers.serialize(
          payload.type!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.value != null) {
      result
        ..add(const _i3.XmlElementName('Value'))
        ..add(serializers.serialize(
          payload.value!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.name != null) {
      result
        ..add(const _i3.XmlElementName('Name'))
        ..add(serializers.serialize(
          payload.name!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
