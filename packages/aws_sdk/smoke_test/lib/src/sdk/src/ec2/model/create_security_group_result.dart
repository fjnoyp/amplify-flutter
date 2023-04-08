// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_security_group_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i2;

part 'create_security_group_result.g.dart';

abstract class CreateSecurityGroupResult
    with _i1.AWSEquatable<CreateSecurityGroupResult>
    implements
        Built<CreateSecurityGroupResult, CreateSecurityGroupResultBuilder> {
  factory CreateSecurityGroupResult({
    String? groupId,
    List<_i2.Tag>? tags,
  }) {
    return _$CreateSecurityGroupResult._(
      groupId: groupId,
      tags: tags == null ? null : _i3.BuiltList(tags),
    );
  }

  factory CreateSecurityGroupResult.build(
          [void Function(CreateSecurityGroupResultBuilder) updates]) =
      _$CreateSecurityGroupResult;

  const CreateSecurityGroupResult._();

  /// Constructs a [CreateSecurityGroupResult] from a [payload] and [response].
  factory CreateSecurityGroupResult.fromResponse(
    CreateSecurityGroupResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    CreateSecurityGroupResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateSecurityGroupResultBuilder b) {}

  /// The ID of the security group.
  String? get groupId;

  /// The tags assigned to the security group.
  _i3.BuiltList<_i2.Tag>? get tags;
  @override
  List<Object?> get props => [
        groupId,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateSecurityGroupResult');
    helper.add(
      'groupId',
      groupId,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class CreateSecurityGroupResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<CreateSecurityGroupResult> {
  const CreateSecurityGroupResultEc2QuerySerializer()
      : super('CreateSecurityGroupResult');

  @override
  Iterable<Type> get types => const [
        CreateSecurityGroupResult,
        _$CreateSecurityGroupResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateSecurityGroupResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateSecurityGroupResultBuilder();
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
        case 'tagSet':
          if (value != null) {
            result.tags.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.Tag)],
              ),
            ) as _i3.BuiltList<_i2.Tag>));
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
    final payload = (object as CreateSecurityGroupResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'CreateSecurityGroupResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.groupId != null) {
      result
        ..add(const _i4.XmlElementName('GroupId'))
        ..add(serializers.serialize(
          payload.groupId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.tags != null) {
      result
        ..add(const _i4.XmlElementName('TagSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tags!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.Tag)],
          ),
        ));
    }
    return result;
  }
}
