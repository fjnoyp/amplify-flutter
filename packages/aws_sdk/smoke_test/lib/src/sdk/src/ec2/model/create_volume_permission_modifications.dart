// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_volume_permission_modifications; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/create_volume_permission.dart'
    as _i2;

part 'create_volume_permission_modifications.g.dart';

/// Describes modifications to the list of create volume permissions for a volume.
abstract class CreateVolumePermissionModifications
    with
        _i1.AWSEquatable<CreateVolumePermissionModifications>
    implements
        Built<CreateVolumePermissionModifications,
            CreateVolumePermissionModificationsBuilder> {
  /// Describes modifications to the list of create volume permissions for a volume.
  factory CreateVolumePermissionModifications({
    List<_i2.CreateVolumePermission>? add,
    List<_i2.CreateVolumePermission>? remove,
  }) {
    return _$CreateVolumePermissionModifications._(
      add: add == null ? null : _i3.BuiltList(add),
      remove: remove == null ? null : _i3.BuiltList(remove),
    );
  }

  /// Describes modifications to the list of create volume permissions for a volume.
  factory CreateVolumePermissionModifications.build(
          [void Function(CreateVolumePermissionModificationsBuilder) updates]) =
      _$CreateVolumePermissionModifications;

  const CreateVolumePermissionModifications._();

  static const List<_i4.SmithySerializer> serializers = [
    CreateVolumePermissionModificationsEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateVolumePermissionModificationsBuilder b) {}

  /// Adds the specified Amazon Web Services account ID or group to the list.
  _i3.BuiltList<_i2.CreateVolumePermission>? get add;

  /// Removes the specified Amazon Web Services account ID or group from the list.
  _i3.BuiltList<_i2.CreateVolumePermission>? get remove;
  @override
  List<Object?> get props => [
        add,
        remove,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateVolumePermissionModifications');
    helper.add(
      'add',
      add,
    );
    helper.add(
      'remove',
      remove,
    );
    return helper.toString();
  }
}

class CreateVolumePermissionModificationsEc2QuerySerializer extends _i4
    .StructuredSmithySerializer<CreateVolumePermissionModifications> {
  const CreateVolumePermissionModificationsEc2QuerySerializer()
      : super('CreateVolumePermissionModifications');

  @override
  Iterable<Type> get types => const [
        CreateVolumePermissionModifications,
        _$CreateVolumePermissionModifications,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateVolumePermissionModifications deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateVolumePermissionModificationsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Add':
          if (value != null) {
            result.add.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.CreateVolumePermission)],
              ),
            ) as _i3.BuiltList<_i2.CreateVolumePermission>));
          }
          break;
        case 'Remove':
          if (value != null) {
            result.remove.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.CreateVolumePermission)],
              ),
            ) as _i3.BuiltList<_i2.CreateVolumePermission>));
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
    final payload = (object as CreateVolumePermissionModifications);
    final result = <Object?>[
      const _i4.XmlElementName(
        'CreateVolumePermissionModificationsResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.add != null) {
      result
        ..add(const _i4.XmlElementName('Add'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.add!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.CreateVolumePermission)],
          ),
        ));
    }
    if (payload.remove != null) {
      result
        ..add(const _i4.XmlElementName('Remove'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.remove!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.CreateVolumePermission)],
          ),
        ));
    }
    return result;
  }
}
