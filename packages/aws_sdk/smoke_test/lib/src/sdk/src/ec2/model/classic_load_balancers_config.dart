// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.classic_load_balancers_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/classic_load_balancer.dart'
    as _i2;

part 'classic_load_balancers_config.g.dart';

/// Describes the Classic Load Balancers to attach to a Spot Fleet. Spot Fleet registers the running Spot Instances with these Classic Load Balancers.
abstract class ClassicLoadBalancersConfig
    with _i1.AWSEquatable<ClassicLoadBalancersConfig>
    implements
        Built<ClassicLoadBalancersConfig, ClassicLoadBalancersConfigBuilder> {
  /// Describes the Classic Load Balancers to attach to a Spot Fleet. Spot Fleet registers the running Spot Instances with these Classic Load Balancers.
  factory ClassicLoadBalancersConfig(
      {List<_i2.ClassicLoadBalancer>? classicLoadBalancers}) {
    return _$ClassicLoadBalancersConfig._(
        classicLoadBalancers: classicLoadBalancers == null
            ? null
            : _i3.BuiltList(classicLoadBalancers));
  }

  /// Describes the Classic Load Balancers to attach to a Spot Fleet. Spot Fleet registers the running Spot Instances with these Classic Load Balancers.
  factory ClassicLoadBalancersConfig.build(
          [void Function(ClassicLoadBalancersConfigBuilder) updates]) =
      _$ClassicLoadBalancersConfig;

  const ClassicLoadBalancersConfig._();

  static const List<_i4.SmithySerializer> serializers = [
    ClassicLoadBalancersConfigEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ClassicLoadBalancersConfigBuilder b) {}

  /// One or more Classic Load Balancers.
  _i3.BuiltList<_i2.ClassicLoadBalancer>? get classicLoadBalancers;
  @override
  List<Object?> get props => [classicLoadBalancers];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ClassicLoadBalancersConfig');
    helper.add(
      'classicLoadBalancers',
      classicLoadBalancers,
    );
    return helper.toString();
  }
}

class ClassicLoadBalancersConfigEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<ClassicLoadBalancersConfig> {
  const ClassicLoadBalancersConfigEc2QuerySerializer()
      : super('ClassicLoadBalancersConfig');

  @override
  Iterable<Type> get types => const [
        ClassicLoadBalancersConfig,
        _$ClassicLoadBalancersConfig,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ClassicLoadBalancersConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClassicLoadBalancersConfigBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'classicLoadBalancers':
          if (value != null) {
            result.classicLoadBalancers
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.ClassicLoadBalancer)],
              ),
            ) as _i3.BuiltList<_i2.ClassicLoadBalancer>));
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
    final payload = (object as ClassicLoadBalancersConfig);
    final result = <Object?>[
      const _i4.XmlElementName(
        'ClassicLoadBalancersConfigResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.classicLoadBalancers != null) {
      result
        ..add(const _i4.XmlElementName('ClassicLoadBalancers'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.classicLoadBalancers!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.ClassicLoadBalancer)],
          ),
        ));
    }
    return result;
  }
}
