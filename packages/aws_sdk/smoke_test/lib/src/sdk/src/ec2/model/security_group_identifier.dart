// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.security_group_identifier; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'security_group_identifier.g.dart';

/// Describes a security group.
abstract class SecurityGroupIdentifier
    with _i1.AWSEquatable<SecurityGroupIdentifier>
    implements Built<SecurityGroupIdentifier, SecurityGroupIdentifierBuilder> {
  /// Describes a security group.
  factory SecurityGroupIdentifier({
    String? groupId,
    String? groupName,
  }) {
    return _$SecurityGroupIdentifier._(
      groupId: groupId,
      groupName: groupName,
    );
  }

  /// Describes a security group.
  factory SecurityGroupIdentifier.build(
          [void Function(SecurityGroupIdentifierBuilder) updates]) =
      _$SecurityGroupIdentifier;

  const SecurityGroupIdentifier._();

  static const List<_i2.SmithySerializer> serializers = [
    SecurityGroupIdentifierEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SecurityGroupIdentifierBuilder b) {}

  /// The ID of the security group.
  String? get groupId;

  /// The name of the security group.
  String? get groupName;
  @override
  List<Object?> get props => [
        groupId,
        groupName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SecurityGroupIdentifier');
    helper.add(
      'groupId',
      groupId,
    );
    helper.add(
      'groupName',
      groupName,
    );
    return helper.toString();
  }
}

class SecurityGroupIdentifierEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<SecurityGroupIdentifier> {
  const SecurityGroupIdentifierEc2QuerySerializer()
      : super('SecurityGroupIdentifier');

  @override
  Iterable<Type> get types => const [
        SecurityGroupIdentifier,
        _$SecurityGroupIdentifier,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SecurityGroupIdentifier deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SecurityGroupIdentifierBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'groupId':
          if (value != null) {
            result.groupId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'groupName':
          if (value != null) {
            result.groupName = (serializers.deserialize(
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
    final payload = (object as SecurityGroupIdentifier);
    final result = <Object?>[
      const _i2.XmlElementName(
        'SecurityGroupIdentifierResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.groupId != null) {
      result
        ..add(const _i2.XmlElementName('GroupId'))
        ..add(serializers.serialize(
          payload.groupId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.groupName != null) {
      result
        ..add(const _i2.XmlElementName('GroupName'))
        ..add(serializers.serialize(
          payload.groupName!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
