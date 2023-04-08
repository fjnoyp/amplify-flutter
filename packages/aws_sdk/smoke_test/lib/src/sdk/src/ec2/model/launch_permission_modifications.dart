// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.launch_permission_modifications; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_permission.dart' as _i2;

part 'launch_permission_modifications.g.dart';

/// Describes a launch permission modification.
abstract class LaunchPermissionModifications
    with
        _i1.AWSEquatable<LaunchPermissionModifications>
    implements
        Built<LaunchPermissionModifications,
            LaunchPermissionModificationsBuilder> {
  /// Describes a launch permission modification.
  factory LaunchPermissionModifications({
    List<_i2.LaunchPermission>? add,
    List<_i2.LaunchPermission>? remove,
  }) {
    return _$LaunchPermissionModifications._(
      add: add == null ? null : _i3.BuiltList(add),
      remove: remove == null ? null : _i3.BuiltList(remove),
    );
  }

  /// Describes a launch permission modification.
  factory LaunchPermissionModifications.build(
          [void Function(LaunchPermissionModificationsBuilder) updates]) =
      _$LaunchPermissionModifications;

  const LaunchPermissionModifications._();

  static const List<_i4.SmithySerializer> serializers = [
    LaunchPermissionModificationsEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LaunchPermissionModificationsBuilder b) {}

  /// The Amazon Web Services account ID, organization ARN, or OU ARN to add to the list of launch permissions for the AMI.
  _i3.BuiltList<_i2.LaunchPermission>? get add;

  /// The Amazon Web Services account ID, organization ARN, or OU ARN to remove from the list of launch permissions for the AMI.
  _i3.BuiltList<_i2.LaunchPermission>? get remove;
  @override
  List<Object?> get props => [
        add,
        remove,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('LaunchPermissionModifications');
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

class LaunchPermissionModificationsEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<LaunchPermissionModifications> {
  const LaunchPermissionModificationsEc2QuerySerializer()
      : super('LaunchPermissionModifications');

  @override
  Iterable<Type> get types => const [
        LaunchPermissionModifications,
        _$LaunchPermissionModifications,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchPermissionModifications deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchPermissionModificationsBuilder();
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
                [FullType(_i2.LaunchPermission)],
              ),
            ) as _i3.BuiltList<_i2.LaunchPermission>));
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
                [FullType(_i2.LaunchPermission)],
              ),
            ) as _i3.BuiltList<_i2.LaunchPermission>));
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
    final payload = (object as LaunchPermissionModifications);
    final result = <Object?>[
      const _i4.XmlElementName(
        'LaunchPermissionModificationsResponse',
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
            [FullType(_i2.LaunchPermission)],
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
            [FullType(_i2.LaunchPermission)],
          ),
        ));
    }
    return result;
  }
}
