// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.remove_prefix_list_entry; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'remove_prefix_list_entry.g.dart';

/// An entry for a prefix list.
abstract class RemovePrefixListEntry
    with _i1.AWSEquatable<RemovePrefixListEntry>
    implements Built<RemovePrefixListEntry, RemovePrefixListEntryBuilder> {
  /// An entry for a prefix list.
  factory RemovePrefixListEntry({required String cidr}) {
    return _$RemovePrefixListEntry._(cidr: cidr);
  }

  /// An entry for a prefix list.
  factory RemovePrefixListEntry.build(
          [void Function(RemovePrefixListEntryBuilder) updates]) =
      _$RemovePrefixListEntry;

  const RemovePrefixListEntry._();

  static const List<_i2.SmithySerializer> serializers = [
    RemovePrefixListEntryEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RemovePrefixListEntryBuilder b) {}

  /// The CIDR block.
  String get cidr;
  @override
  List<Object?> get props => [cidr];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RemovePrefixListEntry');
    helper.add(
      'cidr',
      cidr,
    );
    return helper.toString();
  }
}

class RemovePrefixListEntryEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<RemovePrefixListEntry> {
  const RemovePrefixListEntryEc2QuerySerializer()
      : super('RemovePrefixListEntry');

  @override
  Iterable<Type> get types => const [
        RemovePrefixListEntry,
        _$RemovePrefixListEntry,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RemovePrefixListEntry deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RemovePrefixListEntryBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Cidr':
          result.cidr = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as RemovePrefixListEntry);
    final result = <Object?>[
      const _i2.XmlElementName(
        'RemovePrefixListEntryResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i2.XmlElementName('Cidr'))
      ..add(serializers.serialize(
        payload.cidr,
        specifiedType: const FullType(String),
      ));
    return result;
  }
}
