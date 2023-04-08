// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.launch_template_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_launch_template_specification.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_overrides.dart'
    as _i3;

part 'launch_template_config.g.dart';

/// Describes a launch template and overrides.
abstract class LaunchTemplateConfig
    with _i1.AWSEquatable<LaunchTemplateConfig>
    implements Built<LaunchTemplateConfig, LaunchTemplateConfigBuilder> {
  /// Describes a launch template and overrides.
  factory LaunchTemplateConfig({
    _i2.FleetLaunchTemplateSpecification? launchTemplateSpecification,
    List<_i3.LaunchTemplateOverrides>? overrides,
  }) {
    return _$LaunchTemplateConfig._(
      launchTemplateSpecification: launchTemplateSpecification,
      overrides: overrides == null ? null : _i4.BuiltList(overrides),
    );
  }

  /// Describes a launch template and overrides.
  factory LaunchTemplateConfig.build(
          [void Function(LaunchTemplateConfigBuilder) updates]) =
      _$LaunchTemplateConfig;

  const LaunchTemplateConfig._();

  static const List<_i5.SmithySerializer> serializers = [
    LaunchTemplateConfigEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LaunchTemplateConfigBuilder b) {}

  /// The launch template.
  _i2.FleetLaunchTemplateSpecification? get launchTemplateSpecification;

  /// Any parameters that you specify override the same parameters in the launch template.
  _i4.BuiltList<_i3.LaunchTemplateOverrides>? get overrides;
  @override
  List<Object?> get props => [
        launchTemplateSpecification,
        overrides,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('LaunchTemplateConfig');
    helper.add(
      'launchTemplateSpecification',
      launchTemplateSpecification,
    );
    helper.add(
      'overrides',
      overrides,
    );
    return helper.toString();
  }
}

class LaunchTemplateConfigEc2QuerySerializer
    extends _i5.StructuredSmithySerializer<LaunchTemplateConfig> {
  const LaunchTemplateConfigEc2QuerySerializer()
      : super('LaunchTemplateConfig');

  @override
  Iterable<Type> get types => const [
        LaunchTemplateConfig,
        _$LaunchTemplateConfig,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplateConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchTemplateConfigBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'launchTemplateSpecification':
          if (value != null) {
            result.launchTemplateSpecification.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i2.FleetLaunchTemplateSpecification),
            ) as _i2.FleetLaunchTemplateSpecification));
          }
          break;
        case 'overrides':
          if (value != null) {
            result.overrides.replace((const _i5.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i5.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.LaunchTemplateOverrides)],
              ),
            ) as _i4.BuiltList<_i3.LaunchTemplateOverrides>));
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
    final payload = (object as LaunchTemplateConfig);
    final result = <Object?>[
      const _i5.XmlElementName(
        'LaunchTemplateConfigResponse',
        _i5.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.launchTemplateSpecification != null) {
      result
        ..add(const _i5.XmlElementName('LaunchTemplateSpecification'))
        ..add(serializers.serialize(
          payload.launchTemplateSpecification!,
          specifiedType: const FullType(_i2.FleetLaunchTemplateSpecification),
        ));
    }
    if (payload.overrides != null) {
      result
        ..add(const _i5.XmlElementName('Overrides'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.overrides!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.LaunchTemplateOverrides)],
          ),
        ));
    }
    return result;
  }
}
