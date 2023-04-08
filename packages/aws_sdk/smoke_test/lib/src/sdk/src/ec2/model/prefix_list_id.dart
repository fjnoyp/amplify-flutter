// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.prefix_list_id; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'prefix_list_id.g.dart';

/// Describes a prefix list ID.
abstract class PrefixListId
    with _i1.AWSEquatable<PrefixListId>
    implements Built<PrefixListId, PrefixListIdBuilder> {
  /// Describes a prefix list ID.
  factory PrefixListId({
    String? description,
    String? prefixListId,
  }) {
    return _$PrefixListId._(
      description: description,
      prefixListId: prefixListId,
    );
  }

  /// Describes a prefix list ID.
  factory PrefixListId.build([void Function(PrefixListIdBuilder) updates]) =
      _$PrefixListId;

  const PrefixListId._();

  static const List<_i2.SmithySerializer> serializers = [
    PrefixListIdEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PrefixListIdBuilder b) {}

  /// A description for the security group rule that references this prefix list ID.
  ///
  /// Constraints: Up to 255 characters in length. Allowed characters are a-z, A-Z, 0-9, spaces, and ._-:/()#,@\[\]+=;{}!$*
  String? get description;

  /// The ID of the prefix.
  String? get prefixListId;
  @override
  List<Object?> get props => [
        description,
        prefixListId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PrefixListId');
    helper.add(
      'description',
      description,
    );
    helper.add(
      'prefixListId',
      prefixListId,
    );
    return helper.toString();
  }
}

class PrefixListIdEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<PrefixListId> {
  const PrefixListIdEc2QuerySerializer() : super('PrefixListId');

  @override
  Iterable<Type> get types => const [
        PrefixListId,
        _$PrefixListId,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  PrefixListId deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PrefixListIdBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'description':
          if (value != null) {
            result.description = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'prefixListId':
          if (value != null) {
            result.prefixListId = (serializers.deserialize(
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
    final payload = (object as PrefixListId);
    final result = <Object?>[
      const _i2.XmlElementName(
        'PrefixListIdResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.description != null) {
      result
        ..add(const _i2.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.prefixListId != null) {
      result
        ..add(const _i2.XmlElementName('PrefixListId'))
        ..add(serializers.serialize(
          payload.prefixListId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
