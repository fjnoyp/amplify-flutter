// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.launch_template; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i3;

part 'launch_template.g.dart';

/// Describes a launch template.
abstract class LaunchTemplate
    with _i1.AWSEquatable<LaunchTemplate>
    implements Built<LaunchTemplate, LaunchTemplateBuilder> {
  /// Describes a launch template.
  factory LaunchTemplate({
    String? launchTemplateId,
    String? launchTemplateName,
    DateTime? createTime,
    String? createdBy,
    _i2.Int64? defaultVersionNumber,
    _i2.Int64? latestVersionNumber,
    List<_i3.Tag>? tags,
  }) {
    defaultVersionNumber ??= _i2.Int64.ZERO;
    latestVersionNumber ??= _i2.Int64.ZERO;
    return _$LaunchTemplate._(
      launchTemplateId: launchTemplateId,
      launchTemplateName: launchTemplateName,
      createTime: createTime,
      createdBy: createdBy,
      defaultVersionNumber: defaultVersionNumber,
      latestVersionNumber: latestVersionNumber,
      tags: tags == null ? null : _i4.BuiltList(tags),
    );
  }

  /// Describes a launch template.
  factory LaunchTemplate.build([void Function(LaunchTemplateBuilder) updates]) =
      _$LaunchTemplate;

  const LaunchTemplate._();

  static const List<_i5.SmithySerializer> serializers = [
    LaunchTemplateEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LaunchTemplateBuilder b) {
    b.defaultVersionNumber = _i2.Int64.ZERO;
    b.latestVersionNumber = _i2.Int64.ZERO;
  }

  /// The ID of the launch template.
  String? get launchTemplateId;

  /// The name of the launch template.
  String? get launchTemplateName;

  /// The time launch template was created.
  DateTime? get createTime;

  /// The principal that created the launch template.
  String? get createdBy;

  /// The version number of the default version of the launch template.
  _i2.Int64 get defaultVersionNumber;

  /// The version number of the latest version of the launch template.
  _i2.Int64 get latestVersionNumber;

  /// The tags for the launch template.
  _i4.BuiltList<_i3.Tag>? get tags;
  @override
  List<Object?> get props => [
        launchTemplateId,
        launchTemplateName,
        createTime,
        createdBy,
        defaultVersionNumber,
        latestVersionNumber,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('LaunchTemplate');
    helper.add(
      'launchTemplateId',
      launchTemplateId,
    );
    helper.add(
      'launchTemplateName',
      launchTemplateName,
    );
    helper.add(
      'createTime',
      createTime,
    );
    helper.add(
      'createdBy',
      createdBy,
    );
    helper.add(
      'defaultVersionNumber',
      defaultVersionNumber,
    );
    helper.add(
      'latestVersionNumber',
      latestVersionNumber,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class LaunchTemplateEc2QuerySerializer
    extends _i5.StructuredSmithySerializer<LaunchTemplate> {
  const LaunchTemplateEc2QuerySerializer() : super('LaunchTemplate');

  @override
  Iterable<Type> get types => const [
        LaunchTemplate,
        _$LaunchTemplate,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplate deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchTemplateBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'launchTemplateId':
          if (value != null) {
            result.launchTemplateId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'launchTemplateName':
          if (value != null) {
            result.launchTemplateName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'createTime':
          if (value != null) {
            result.createTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'createdBy':
          if (value != null) {
            result.createdBy = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'defaultVersionNumber':
          result.defaultVersionNumber = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
          break;
        case 'latestVersionNumber':
          result.latestVersionNumber = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
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
    final payload = (object as LaunchTemplate);
    final result = <Object?>[
      const _i5.XmlElementName(
        'LaunchTemplateResponse',
        _i5.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.launchTemplateId != null) {
      result
        ..add(const _i5.XmlElementName('LaunchTemplateId'))
        ..add(serializers.serialize(
          payload.launchTemplateId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.launchTemplateName != null) {
      result
        ..add(const _i5.XmlElementName('LaunchTemplateName'))
        ..add(serializers.serialize(
          payload.launchTemplateName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.createTime != null) {
      result
        ..add(const _i5.XmlElementName('CreateTime'))
        ..add(serializers.serialize(
          payload.createTime!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.createdBy != null) {
      result
        ..add(const _i5.XmlElementName('CreatedBy'))
        ..add(serializers.serialize(
          payload.createdBy!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i5.XmlElementName('DefaultVersionNumber'))
      ..add(serializers.serialize(
        payload.defaultVersionNumber,
        specifiedType: const FullType(_i2.Int64),
      ));
    result
      ..add(const _i5.XmlElementName('LatestVersionNumber'))
      ..add(serializers.serialize(
        payload.latestVersionNumber,
        specifiedType: const FullType(_i2.Int64),
      ));
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
    return result;
  }
}
