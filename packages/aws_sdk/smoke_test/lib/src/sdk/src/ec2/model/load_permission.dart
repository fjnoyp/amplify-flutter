// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.load_permission; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/permission_group.dart' as _i2;

part 'load_permission.g.dart';

/// Describes a load permission.
abstract class LoadPermission
    with _i1.AWSEquatable<LoadPermission>
    implements Built<LoadPermission, LoadPermissionBuilder> {
  /// Describes a load permission.
  factory LoadPermission({
    String? userId,
    _i2.PermissionGroup? group,
  }) {
    return _$LoadPermission._(
      userId: userId,
      group: group,
    );
  }

  /// Describes a load permission.
  factory LoadPermission.build([void Function(LoadPermissionBuilder) updates]) =
      _$LoadPermission;

  const LoadPermission._();

  static const List<_i3.SmithySerializer> serializers = [
    LoadPermissionEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LoadPermissionBuilder b) {}

  /// The Amazon Web Services account ID.
  String? get userId;

  /// The name of the group.
  _i2.PermissionGroup? get group;
  @override
  List<Object?> get props => [
        userId,
        group,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('LoadPermission');
    helper.add(
      'userId',
      userId,
    );
    helper.add(
      'group',
      group,
    );
    return helper.toString();
  }
}

class LoadPermissionEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<LoadPermission> {
  const LoadPermissionEc2QuerySerializer() : super('LoadPermission');

  @override
  Iterable<Type> get types => const [
        LoadPermission,
        _$LoadPermission,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LoadPermission deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LoadPermissionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'userId':
          if (value != null) {
            result.userId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'group':
          if (value != null) {
            result.group = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.PermissionGroup),
            ) as _i2.PermissionGroup);
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
    final payload = (object as LoadPermission);
    final result = <Object?>[
      const _i3.XmlElementName(
        'LoadPermissionResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.userId != null) {
      result
        ..add(const _i3.XmlElementName('UserId'))
        ..add(serializers.serialize(
          payload.userId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.group != null) {
      result
        ..add(const _i3.XmlElementName('Group'))
        ..add(serializers.serialize(
          payload.group!,
          specifiedType: const FullType.nullable(_i2.PermissionGroup),
        ));
    }
    return result;
  }
}
