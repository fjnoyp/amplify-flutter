// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_volume_permission; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/permission_group.dart' as _i2;

part 'create_volume_permission.g.dart';

/// Describes the user or group to be added or removed from the list of create volume permissions for a volume.
abstract class CreateVolumePermission
    with _i1.AWSEquatable<CreateVolumePermission>
    implements Built<CreateVolumePermission, CreateVolumePermissionBuilder> {
  /// Describes the user or group to be added or removed from the list of create volume permissions for a volume.
  factory CreateVolumePermission({
    _i2.PermissionGroup? group,
    String? userId,
  }) {
    return _$CreateVolumePermission._(
      group: group,
      userId: userId,
    );
  }

  /// Describes the user or group to be added or removed from the list of create volume permissions for a volume.
  factory CreateVolumePermission.build(
          [void Function(CreateVolumePermissionBuilder) updates]) =
      _$CreateVolumePermission;

  const CreateVolumePermission._();

  static const List<_i3.SmithySerializer> serializers = [
    CreateVolumePermissionEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateVolumePermissionBuilder b) {}

  /// The group to be added or removed. The possible value is `all`.
  _i2.PermissionGroup? get group;

  /// The ID of the Amazon Web Services account to be added or removed.
  String? get userId;
  @override
  List<Object?> get props => [
        group,
        userId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateVolumePermission');
    helper.add(
      'group',
      group,
    );
    helper.add(
      'userId',
      userId,
    );
    return helper.toString();
  }
}

class CreateVolumePermissionEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<CreateVolumePermission> {
  const CreateVolumePermissionEc2QuerySerializer()
      : super('CreateVolumePermission');

  @override
  Iterable<Type> get types => const [
        CreateVolumePermission,
        _$CreateVolumePermission,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateVolumePermission deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateVolumePermissionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'group':
          if (value != null) {
            result.group = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.PermissionGroup),
            ) as _i2.PermissionGroup);
          }
          break;
        case 'userId':
          if (value != null) {
            result.userId = (serializers.deserialize(
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
    final payload = (object as CreateVolumePermission);
    final result = <Object?>[
      const _i3.XmlElementName(
        'CreateVolumePermissionResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.group != null) {
      result
        ..add(const _i3.XmlElementName('Group'))
        ..add(serializers.serialize(
          payload.group!,
          specifiedType: const FullType.nullable(_i2.PermissionGroup),
        ));
    }
    if (payload.userId != null) {
      result
        ..add(const _i3.XmlElementName('UserId'))
        ..add(serializers.serialize(
          payload.userId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
