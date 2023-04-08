// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.add_prefix_list_entry; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'add_prefix_list_entry.g.dart';

/// An entry for a prefix list.
abstract class AddPrefixListEntry
    with _i1.AWSEquatable<AddPrefixListEntry>
    implements Built<AddPrefixListEntry, AddPrefixListEntryBuilder> {
  /// An entry for a prefix list.
  factory AddPrefixListEntry({
    required String cidr,
    String? description,
  }) {
    return _$AddPrefixListEntry._(
      cidr: cidr,
      description: description,
    );
  }

  /// An entry for a prefix list.
  factory AddPrefixListEntry.build(
          [void Function(AddPrefixListEntryBuilder) updates]) =
      _$AddPrefixListEntry;

  const AddPrefixListEntry._();

  static const List<_i2.SmithySerializer> serializers = [
    AddPrefixListEntryEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AddPrefixListEntryBuilder b) {}

  /// The CIDR block.
  String get cidr;

  /// A description for the entry.
  ///
  /// Constraints: Up to 255 characters in length.
  String? get description;
  @override
  List<Object?> get props => [
        cidr,
        description,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AddPrefixListEntry');
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

class AddPrefixListEntryEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<AddPrefixListEntry> {
  const AddPrefixListEntryEc2QuerySerializer() : super('AddPrefixListEntry');

  @override
  Iterable<Type> get types => const [
        AddPrefixListEntry,
        _$AddPrefixListEntry,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AddPrefixListEntry deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AddPrefixListEntryBuilder();
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
        case 'Description':
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
    final payload = (object as AddPrefixListEntry);
    final result = <Object?>[
      const _i2.XmlElementName(
        'AddPrefixListEntryResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i2.XmlElementName('Cidr'))
      ..add(serializers.serialize(
        payload.cidr,
        specifiedType: const FullType(String),
      ));
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
