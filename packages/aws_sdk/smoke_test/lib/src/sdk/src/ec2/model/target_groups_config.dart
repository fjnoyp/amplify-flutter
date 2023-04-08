// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.target_groups_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/target_group.dart' as _i2;

part 'target_groups_config.g.dart';

/// Describes the target groups to attach to a Spot Fleet. Spot Fleet registers the running Spot Instances with these target groups.
abstract class TargetGroupsConfig
    with _i1.AWSEquatable<TargetGroupsConfig>
    implements Built<TargetGroupsConfig, TargetGroupsConfigBuilder> {
  /// Describes the target groups to attach to a Spot Fleet. Spot Fleet registers the running Spot Instances with these target groups.
  factory TargetGroupsConfig({List<_i2.TargetGroup>? targetGroups}) {
    return _$TargetGroupsConfig._(
        targetGroups:
            targetGroups == null ? null : _i3.BuiltList(targetGroups));
  }

  /// Describes the target groups to attach to a Spot Fleet. Spot Fleet registers the running Spot Instances with these target groups.
  factory TargetGroupsConfig.build(
          [void Function(TargetGroupsConfigBuilder) updates]) =
      _$TargetGroupsConfig;

  const TargetGroupsConfig._();

  static const List<_i4.SmithySerializer> serializers = [
    TargetGroupsConfigEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TargetGroupsConfigBuilder b) {}

  /// One or more target groups.
  _i3.BuiltList<_i2.TargetGroup>? get targetGroups;
  @override
  List<Object?> get props => [targetGroups];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TargetGroupsConfig');
    helper.add(
      'targetGroups',
      targetGroups,
    );
    return helper.toString();
  }
}

class TargetGroupsConfigEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<TargetGroupsConfig> {
  const TargetGroupsConfigEc2QuerySerializer() : super('TargetGroupsConfig');

  @override
  Iterable<Type> get types => const [
        TargetGroupsConfig,
        _$TargetGroupsConfig,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TargetGroupsConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TargetGroupsConfigBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'targetGroups':
          if (value != null) {
            result.targetGroups.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.TargetGroup)],
              ),
            ) as _i3.BuiltList<_i2.TargetGroup>));
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
    final payload = (object as TargetGroupsConfig);
    final result = <Object?>[
      const _i4.XmlElementName(
        'TargetGroupsConfigResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.targetGroups != null) {
      result
        ..add(const _i4.XmlElementName('TargetGroups'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.targetGroups!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.TargetGroup)],
          ),
        ));
    }
    return result;
  }
}
