// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.dns_entry; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'dns_entry.g.dart';

/// Describes a DNS entry.
abstract class DnsEntry
    with _i1.AWSEquatable<DnsEntry>
    implements Built<DnsEntry, DnsEntryBuilder> {
  /// Describes a DNS entry.
  factory DnsEntry({
    String? dnsName,
    String? hostedZoneId,
  }) {
    return _$DnsEntry._(
      dnsName: dnsName,
      hostedZoneId: hostedZoneId,
    );
  }

  /// Describes a DNS entry.
  factory DnsEntry.build([void Function(DnsEntryBuilder) updates]) = _$DnsEntry;

  const DnsEntry._();

  static const List<_i2.SmithySerializer> serializers = [
    DnsEntryEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DnsEntryBuilder b) {}

  /// The DNS name.
  String? get dnsName;

  /// The ID of the private hosted zone.
  String? get hostedZoneId;
  @override
  List<Object?> get props => [
        dnsName,
        hostedZoneId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DnsEntry');
    helper.add(
      'dnsName',
      dnsName,
    );
    helper.add(
      'hostedZoneId',
      hostedZoneId,
    );
    return helper.toString();
  }
}

class DnsEntryEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<DnsEntry> {
  const DnsEntryEc2QuerySerializer() : super('DnsEntry');

  @override
  Iterable<Type> get types => const [
        DnsEntry,
        _$DnsEntry,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DnsEntry deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DnsEntryBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'dnsName':
          if (value != null) {
            result.dnsName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'hostedZoneId':
          if (value != null) {
            result.hostedZoneId = (serializers.deserialize(
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
    final payload = (object as DnsEntry);
    final result = <Object?>[
      const _i2.XmlElementName(
        'DnsEntryResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.dnsName != null) {
      result
        ..add(const _i2.XmlElementName('DnsName'))
        ..add(serializers.serialize(
          payload.dnsName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.hostedZoneId != null) {
      result
        ..add(const _i2.XmlElementName('HostedZoneId'))
        ..add(serializers.serialize(
          payload.hostedZoneId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
