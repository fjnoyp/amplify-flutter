// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.group_identifier; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'group_identifier.g.dart';

/// Describes a security group.
abstract class GroupIdentifier
    with _i1.AWSEquatable<GroupIdentifier>
    implements Built<GroupIdentifier, GroupIdentifierBuilder> {
  /// Describes a security group.
  factory GroupIdentifier({
    String? groupName,
    String? groupId,
  }) {
    return _$GroupIdentifier._(
      groupName: groupName,
      groupId: groupId,
    );
  }

  /// Describes a security group.
  factory GroupIdentifier.build(
      [void Function(GroupIdentifierBuilder) updates]) = _$GroupIdentifier;

  const GroupIdentifier._();

  static const List<_i2.SmithySerializer> serializers = [
    GroupIdentifierEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GroupIdentifierBuilder b) {}

  /// The name of the security group.
  String? get groupName;

  /// The ID of the security group.
  String? get groupId;
  @override
  List<Object?> get props => [
        groupName,
        groupId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GroupIdentifier');
    helper.add(
      'groupName',
      groupName,
    );
    helper.add(
      'groupId',
      groupId,
    );
    return helper.toString();
  }
}

class GroupIdentifierEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<GroupIdentifier> {
  const GroupIdentifierEc2QuerySerializer() : super('GroupIdentifier');

  @override
  Iterable<Type> get types => const [
        GroupIdentifier,
        _$GroupIdentifier,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GroupIdentifier deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GroupIdentifierBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'groupName':
          if (value != null) {
            result.groupName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'groupId':
          if (value != null) {
            result.groupId = (serializers.deserialize(
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
    final payload = (object as GroupIdentifier);
    final result = <Object?>[
      const _i2.XmlElementName(
        'GroupIdentifierResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.groupName != null) {
      result
        ..add(const _i2.XmlElementName('GroupName'))
        ..add(serializers.serialize(
          payload.groupName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.groupId != null) {
      result
        ..add(const _i2.XmlElementName('GroupId'))
        ..add(serializers.serialize(
          payload.groupId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
