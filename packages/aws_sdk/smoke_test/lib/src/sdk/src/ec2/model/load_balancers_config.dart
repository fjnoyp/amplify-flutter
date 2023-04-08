// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.load_balancers_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/classic_load_balancers_config.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/target_groups_config.dart'
    as _i3;

part 'load_balancers_config.g.dart';

/// Describes the Classic Load Balancers and target groups to attach to a Spot Fleet request.
abstract class LoadBalancersConfig
    with _i1.AWSEquatable<LoadBalancersConfig>
    implements Built<LoadBalancersConfig, LoadBalancersConfigBuilder> {
  /// Describes the Classic Load Balancers and target groups to attach to a Spot Fleet request.
  factory LoadBalancersConfig({
    _i2.ClassicLoadBalancersConfig? classicLoadBalancersConfig,
    _i3.TargetGroupsConfig? targetGroupsConfig,
  }) {
    return _$LoadBalancersConfig._(
      classicLoadBalancersConfig: classicLoadBalancersConfig,
      targetGroupsConfig: targetGroupsConfig,
    );
  }

  /// Describes the Classic Load Balancers and target groups to attach to a Spot Fleet request.
  factory LoadBalancersConfig.build(
          [void Function(LoadBalancersConfigBuilder) updates]) =
      _$LoadBalancersConfig;

  const LoadBalancersConfig._();

  static const List<_i4.SmithySerializer> serializers = [
    LoadBalancersConfigEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LoadBalancersConfigBuilder b) {}

  /// The Classic Load Balancers.
  _i2.ClassicLoadBalancersConfig? get classicLoadBalancersConfig;

  /// The target groups.
  _i3.TargetGroupsConfig? get targetGroupsConfig;
  @override
  List<Object?> get props => [
        classicLoadBalancersConfig,
        targetGroupsConfig,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('LoadBalancersConfig');
    helper.add(
      'classicLoadBalancersConfig',
      classicLoadBalancersConfig,
    );
    helper.add(
      'targetGroupsConfig',
      targetGroupsConfig,
    );
    return helper.toString();
  }
}

class LoadBalancersConfigEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<LoadBalancersConfig> {
  const LoadBalancersConfigEc2QuerySerializer() : super('LoadBalancersConfig');

  @override
  Iterable<Type> get types => const [
        LoadBalancersConfig,
        _$LoadBalancersConfig,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LoadBalancersConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LoadBalancersConfigBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'classicLoadBalancersConfig':
          if (value != null) {
            result.classicLoadBalancersConfig.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ClassicLoadBalancersConfig),
            ) as _i2.ClassicLoadBalancersConfig));
          }
          break;
        case 'targetGroupsConfig':
          if (value != null) {
            result.targetGroupsConfig.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.TargetGroupsConfig),
            ) as _i3.TargetGroupsConfig));
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
    final payload = (object as LoadBalancersConfig);
    final result = <Object?>[
      const _i4.XmlElementName(
        'LoadBalancersConfigResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.classicLoadBalancersConfig != null) {
      result
        ..add(const _i4.XmlElementName('ClassicLoadBalancersConfig'))
        ..add(serializers.serialize(
          payload.classicLoadBalancersConfig!,
          specifiedType: const FullType(_i2.ClassicLoadBalancersConfig),
        ));
    }
    if (payload.targetGroupsConfig != null) {
      result
        ..add(const _i4.XmlElementName('TargetGroupsConfig'))
        ..add(serializers.serialize(
          payload.targetGroupsConfig!,
          specifiedType: const FullType(_i3.TargetGroupsConfig),
        ));
    }
    return result;
  }
}
