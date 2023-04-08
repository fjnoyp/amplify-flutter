// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.private_dns_name_options_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/hostname_type.dart' as _i2;

part 'private_dns_name_options_request.g.dart';

/// Describes the options for instance hostnames.
abstract class PrivateDnsNameOptionsRequest
    with
        _i1.AWSEquatable<PrivateDnsNameOptionsRequest>
    implements
        Built<PrivateDnsNameOptionsRequest,
            PrivateDnsNameOptionsRequestBuilder> {
  /// Describes the options for instance hostnames.
  factory PrivateDnsNameOptionsRequest({
    _i2.HostnameType? hostnameType,
    bool? enableResourceNameDnsARecord,
    bool? enableResourceNameDnsAaaaRecord,
  }) {
    enableResourceNameDnsARecord ??= false;
    enableResourceNameDnsAaaaRecord ??= false;
    return _$PrivateDnsNameOptionsRequest._(
      hostnameType: hostnameType,
      enableResourceNameDnsARecord: enableResourceNameDnsARecord,
      enableResourceNameDnsAaaaRecord: enableResourceNameDnsAaaaRecord,
    );
  }

  /// Describes the options for instance hostnames.
  factory PrivateDnsNameOptionsRequest.build(
          [void Function(PrivateDnsNameOptionsRequestBuilder) updates]) =
      _$PrivateDnsNameOptionsRequest;

  const PrivateDnsNameOptionsRequest._();

  static const List<_i3.SmithySerializer> serializers = [
    PrivateDnsNameOptionsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PrivateDnsNameOptionsRequestBuilder b) {
    b.enableResourceNameDnsARecord = false;
    b.enableResourceNameDnsAaaaRecord = false;
  }

  /// The type of hostname for EC2 instances. For IPv4 only subnets, an instance DNS name must be based on the instance IPv4 address. For IPv6 only subnets, an instance DNS name must be based on the instance ID. For dual-stack subnets, you can specify whether DNS names use the instance IPv4 address or the instance ID.
  _i2.HostnameType? get hostnameType;

  /// Indicates whether to respond to DNS queries for instance hostnames with DNS A records.
  bool get enableResourceNameDnsARecord;

  /// Indicates whether to respond to DNS queries for instance hostnames with DNS AAAA records.
  bool get enableResourceNameDnsAaaaRecord;
  @override
  List<Object?> get props => [
        hostnameType,
        enableResourceNameDnsARecord,
        enableResourceNameDnsAaaaRecord,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PrivateDnsNameOptionsRequest');
    helper.add(
      'hostnameType',
      hostnameType,
    );
    helper.add(
      'enableResourceNameDnsARecord',
      enableResourceNameDnsARecord,
    );
    helper.add(
      'enableResourceNameDnsAaaaRecord',
      enableResourceNameDnsAaaaRecord,
    );
    return helper.toString();
  }
}

class PrivateDnsNameOptionsRequestEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<PrivateDnsNameOptionsRequest> {
  const PrivateDnsNameOptionsRequestEc2QuerySerializer()
      : super('PrivateDnsNameOptionsRequest');

  @override
  Iterable<Type> get types => const [
        PrivateDnsNameOptionsRequest,
        _$PrivateDnsNameOptionsRequest,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  PrivateDnsNameOptionsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PrivateDnsNameOptionsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'HostnameType':
          if (value != null) {
            result.hostnameType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.HostnameType),
            ) as _i2.HostnameType);
          }
          break;
        case 'EnableResourceNameDnsARecord':
          result.enableResourceNameDnsARecord = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'EnableResourceNameDnsAAAARecord':
          result.enableResourceNameDnsAaaaRecord = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
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
    final payload = (object as PrivateDnsNameOptionsRequest);
    final result = <Object?>[
      const _i3.XmlElementName(
        'PrivateDnsNameOptionsRequestResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.hostnameType != null) {
      result
        ..add(const _i3.XmlElementName('HostnameType'))
        ..add(serializers.serialize(
          payload.hostnameType!,
          specifiedType: const FullType.nullable(_i2.HostnameType),
        ));
    }
    result
      ..add(const _i3.XmlElementName('EnableResourceNameDnsARecord'))
      ..add(serializers.serialize(
        payload.enableResourceNameDnsARecord,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i3.XmlElementName('EnableResourceNameDnsAAAARecord'))
      ..add(serializers.serialize(
        payload.enableResourceNameDnsAaaaRecord,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
