// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.prefix_list_association; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'prefix_list_association.g.dart';

/// Describes the resource with which a prefix list is associated.
abstract class PrefixListAssociation
    with _i1.AWSEquatable<PrefixListAssociation>
    implements Built<PrefixListAssociation, PrefixListAssociationBuilder> {
  /// Describes the resource with which a prefix list is associated.
  factory PrefixListAssociation({
    String? resourceId,
    String? resourceOwner,
  }) {
    return _$PrefixListAssociation._(
      resourceId: resourceId,
      resourceOwner: resourceOwner,
    );
  }

  /// Describes the resource with which a prefix list is associated.
  factory PrefixListAssociation.build(
          [void Function(PrefixListAssociationBuilder) updates]) =
      _$PrefixListAssociation;

  const PrefixListAssociation._();

  static const List<_i2.SmithySerializer> serializers = [
    PrefixListAssociationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PrefixListAssociationBuilder b) {}

  /// The ID of the resource.
  String? get resourceId;

  /// The owner of the resource.
  String? get resourceOwner;
  @override
  List<Object?> get props => [
        resourceId,
        resourceOwner,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PrefixListAssociation');
    helper.add(
      'resourceId',
      resourceId,
    );
    helper.add(
      'resourceOwner',
      resourceOwner,
    );
    return helper.toString();
  }
}

class PrefixListAssociationEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<PrefixListAssociation> {
  const PrefixListAssociationEc2QuerySerializer()
      : super('PrefixListAssociation');

  @override
  Iterable<Type> get types => const [
        PrefixListAssociation,
        _$PrefixListAssociation,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  PrefixListAssociation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PrefixListAssociationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'resourceId':
          if (value != null) {
            result.resourceId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'resourceOwner':
          if (value != null) {
            result.resourceOwner = (serializers.deserialize(
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
    final payload = (object as PrefixListAssociation);
    final result = <Object?>[
      const _i2.XmlElementName(
        'PrefixListAssociationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.resourceId != null) {
      result
        ..add(const _i2.XmlElementName('ResourceId'))
        ..add(serializers.serialize(
          payload.resourceId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.resourceOwner != null) {
      result
        ..add(const _i2.XmlElementName('ResourceOwner'))
        ..add(serializers.serialize(
          payload.resourceOwner!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
