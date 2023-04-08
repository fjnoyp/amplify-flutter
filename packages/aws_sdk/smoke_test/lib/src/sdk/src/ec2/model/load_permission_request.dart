// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.load_permission_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/permission_group.dart' as _i2;

part 'load_permission_request.g.dart';

/// Describes a load permission.
abstract class LoadPermissionRequest
    with _i1.AWSEquatable<LoadPermissionRequest>
    implements Built<LoadPermissionRequest, LoadPermissionRequestBuilder> {
  /// Describes a load permission.
  factory LoadPermissionRequest({
    _i2.PermissionGroup? group,
    String? userId,
  }) {
    return _$LoadPermissionRequest._(
      group: group,
      userId: userId,
    );
  }

  /// Describes a load permission.
  factory LoadPermissionRequest.build(
          [void Function(LoadPermissionRequestBuilder) updates]) =
      _$LoadPermissionRequest;

  const LoadPermissionRequest._();

  static const List<_i3.SmithySerializer> serializers = [
    LoadPermissionRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LoadPermissionRequestBuilder b) {}

  /// The name of the group.
  _i2.PermissionGroup? get group;

  /// The Amazon Web Services account ID.
  String? get userId;
  @override
  List<Object?> get props => [
        group,
        userId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('LoadPermissionRequest');
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

class LoadPermissionRequestEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<LoadPermissionRequest> {
  const LoadPermissionRequestEc2QuerySerializer()
      : super('LoadPermissionRequest');

  @override
  Iterable<Type> get types => const [
        LoadPermissionRequest,
        _$LoadPermissionRequest,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LoadPermissionRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LoadPermissionRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Group':
          if (value != null) {
            result.group = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.PermissionGroup),
            ) as _i2.PermissionGroup);
          }
          break;
        case 'UserId':
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
    final payload = (object as LoadPermissionRequest);
    final result = <Object?>[
      const _i3.XmlElementName(
        'LoadPermissionRequestResponse',
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
