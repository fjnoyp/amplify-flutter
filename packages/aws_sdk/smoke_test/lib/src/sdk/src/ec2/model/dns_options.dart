// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.dns_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/dns_record_ip_type.dart'
    as _i2;

part 'dns_options.g.dart';

/// Describes the DNS options for an endpoint.
abstract class DnsOptions
    with _i1.AWSEquatable<DnsOptions>
    implements Built<DnsOptions, DnsOptionsBuilder> {
  /// Describes the DNS options for an endpoint.
  factory DnsOptions({_i2.DnsRecordIpType? dnsRecordIpType}) {
    return _$DnsOptions._(dnsRecordIpType: dnsRecordIpType);
  }

  /// Describes the DNS options for an endpoint.
  factory DnsOptions.build([void Function(DnsOptionsBuilder) updates]) =
      _$DnsOptions;

  const DnsOptions._();

  static const List<_i3.SmithySerializer> serializers = [
    DnsOptionsEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DnsOptionsBuilder b) {}

  /// The DNS records created for the endpoint.
  _i2.DnsRecordIpType? get dnsRecordIpType;
  @override
  List<Object?> get props => [dnsRecordIpType];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DnsOptions');
    helper.add(
      'dnsRecordIpType',
      dnsRecordIpType,
    );
    return helper.toString();
  }
}

class DnsOptionsEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DnsOptions> {
  const DnsOptionsEc2QuerySerializer() : super('DnsOptions');

  @override
  Iterable<Type> get types => const [
        DnsOptions,
        _$DnsOptions,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DnsOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DnsOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'dnsRecordIpType':
          if (value != null) {
            result.dnsRecordIpType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.DnsRecordIpType),
            ) as _i2.DnsRecordIpType);
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
    final payload = (object as DnsOptions);
    final result = <Object?>[
      const _i3.XmlElementName(
        'DnsOptionsResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.dnsRecordIpType != null) {
      result
        ..add(const _i3.XmlElementName('DnsRecordIpType'))
        ..add(serializers.serialize(
          payload.dnsRecordIpType!,
          specifiedType: const FullType.nullable(_i2.DnsRecordIpType),
        ));
    }
    return result;
  }
}
