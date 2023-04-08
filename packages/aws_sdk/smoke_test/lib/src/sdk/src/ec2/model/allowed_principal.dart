// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.allowed_principal; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/principal_type.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i3;

part 'allowed_principal.g.dart';

/// Describes a principal.
abstract class AllowedPrincipal
    with _i1.AWSEquatable<AllowedPrincipal>
    implements Built<AllowedPrincipal, AllowedPrincipalBuilder> {
  /// Describes a principal.
  factory AllowedPrincipal({
    _i2.PrincipalType? principalType,
    String? principal,
    String? servicePermissionId,
    List<_i3.Tag>? tags,
    String? serviceId,
  }) {
    return _$AllowedPrincipal._(
      principalType: principalType,
      principal: principal,
      servicePermissionId: servicePermissionId,
      tags: tags == null ? null : _i4.BuiltList(tags),
      serviceId: serviceId,
    );
  }

  /// Describes a principal.
  factory AllowedPrincipal.build(
      [void Function(AllowedPrincipalBuilder) updates]) = _$AllowedPrincipal;

  const AllowedPrincipal._();

  static const List<_i5.SmithySerializer> serializers = [
    AllowedPrincipalEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AllowedPrincipalBuilder b) {}

  /// The type of principal.
  _i2.PrincipalType? get principalType;

  /// The Amazon Resource Name (ARN) of the principal.
  String? get principal;

  /// The ID of the service permission.
  String? get servicePermissionId;

  /// The tags.
  _i4.BuiltList<_i3.Tag>? get tags;

  /// The ID of the service.
  String? get serviceId;
  @override
  List<Object?> get props => [
        principalType,
        principal,
        servicePermissionId,
        tags,
        serviceId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AllowedPrincipal');
    helper.add(
      'principalType',
      principalType,
    );
    helper.add(
      'principal',
      principal,
    );
    helper.add(
      'servicePermissionId',
      servicePermissionId,
    );
    helper.add(
      'tags',
      tags,
    );
    helper.add(
      'serviceId',
      serviceId,
    );
    return helper.toString();
  }
}

class AllowedPrincipalEc2QuerySerializer
    extends _i5.StructuredSmithySerializer<AllowedPrincipal> {
  const AllowedPrincipalEc2QuerySerializer() : super('AllowedPrincipal');

  @override
  Iterable<Type> get types => const [
        AllowedPrincipal,
        _$AllowedPrincipal,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AllowedPrincipal deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AllowedPrincipalBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'principalType':
          if (value != null) {
            result.principalType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.PrincipalType),
            ) as _i2.PrincipalType);
          }
          break;
        case 'principal':
          if (value != null) {
            result.principal = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'servicePermissionId':
          if (value != null) {
            result.servicePermissionId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'tagSet':
          if (value != null) {
            result.tags.replace((const _i5.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i5.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.Tag)],
              ),
            ) as _i4.BuiltList<_i3.Tag>));
          }
          break;
        case 'serviceId':
          if (value != null) {
            result.serviceId = (serializers.deserialize(
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
    final payload = (object as AllowedPrincipal);
    final result = <Object?>[
      const _i5.XmlElementName(
        'AllowedPrincipalResponse',
        _i5.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.principalType != null) {
      result
        ..add(const _i5.XmlElementName('PrincipalType'))
        ..add(serializers.serialize(
          payload.principalType!,
          specifiedType: const FullType.nullable(_i2.PrincipalType),
        ));
    }
    if (payload.principal != null) {
      result
        ..add(const _i5.XmlElementName('Principal'))
        ..add(serializers.serialize(
          payload.principal!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.servicePermissionId != null) {
      result
        ..add(const _i5.XmlElementName('ServicePermissionId'))
        ..add(serializers.serialize(
          payload.servicePermissionId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.tags != null) {
      result
        ..add(const _i5.XmlElementName('TagSet'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tags!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.Tag)],
          ),
        ));
    }
    if (payload.serviceId != null) {
      result
        ..add(const _i5.XmlElementName('ServiceId'))
        ..add(serializers.serialize(
          payload.serviceId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
