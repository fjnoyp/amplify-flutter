// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.prefix_list_entry; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'prefix_list_entry.g.dart';

/// Describes a prefix list entry.
abstract class PrefixListEntry
    with _i1.AWSEquatable<PrefixListEntry>
    implements Built<PrefixListEntry, PrefixListEntryBuilder> {
  /// Describes a prefix list entry.
  factory PrefixListEntry({
    String? cidr,
    String? description,
  }) {
    return _$PrefixListEntry._(
      cidr: cidr,
      description: description,
    );
  }

  /// Describes a prefix list entry.
  factory PrefixListEntry.build(
      [void Function(PrefixListEntryBuilder) updates]) = _$PrefixListEntry;

  const PrefixListEntry._();

  static const List<_i2.SmithySerializer> serializers = [
    PrefixListEntryEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PrefixListEntryBuilder b) {}

  /// The CIDR block.
  String? get cidr;

  /// The description.
  String? get description;
  @override
  List<Object?> get props => [
        cidr,
        description,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PrefixListEntry');
    helper.add(
      'cidr',
      cidr,
    );
    helper.add(
      'description',
      description,
    );
    return helper.toString();
  }
}

class PrefixListEntryEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<PrefixListEntry> {
  const PrefixListEntryEc2QuerySerializer() : super('PrefixListEntry');

  @override
  Iterable<Type> get types => const [
        PrefixListEntry,
        _$PrefixListEntry,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  PrefixListEntry deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PrefixListEntryBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'cidr':
          if (value != null) {
            result.cidr = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'description':
          if (value != null) {
            result.description = (serializers.deserialize(
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
    final payload = (object as PrefixListEntry);
    final result = <Object?>[
      const _i2.XmlElementName(
        'PrefixListEntryResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.cidr != null) {
      result
        ..add(const _i2.XmlElementName('Cidr'))
        ..add(serializers.serialize(
          payload.cidr!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.description != null) {
      result
        ..add(const _i2.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
