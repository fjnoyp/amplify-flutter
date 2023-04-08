// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.classic_load_balancer; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'classic_load_balancer.g.dart';

/// Describes a Classic Load Balancer.
abstract class ClassicLoadBalancer
    with _i1.AWSEquatable<ClassicLoadBalancer>
    implements Built<ClassicLoadBalancer, ClassicLoadBalancerBuilder> {
  /// Describes a Classic Load Balancer.
  factory ClassicLoadBalancer({String? name}) {
    return _$ClassicLoadBalancer._(name: name);
  }

  /// Describes a Classic Load Balancer.
  factory ClassicLoadBalancer.build(
          [void Function(ClassicLoadBalancerBuilder) updates]) =
      _$ClassicLoadBalancer;

  const ClassicLoadBalancer._();

  static const List<_i2.SmithySerializer> serializers = [
    ClassicLoadBalancerEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ClassicLoadBalancerBuilder b) {}

  /// The name of the load balancer.
  String? get name;
  @override
  List<Object?> get props => [name];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ClassicLoadBalancer');
    helper.add(
      'name',
      name,
    );
    return helper.toString();
  }
}

class ClassicLoadBalancerEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ClassicLoadBalancer> {
  const ClassicLoadBalancerEc2QuerySerializer() : super('ClassicLoadBalancer');

  @override
  Iterable<Type> get types => const [
        ClassicLoadBalancer,
        _$ClassicLoadBalancer,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ClassicLoadBalancer deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClassicLoadBalancerBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'name':
          if (value != null) {
            result.name = (serializers.deserialize(
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
    final payload = (object as ClassicLoadBalancer);
    final result = <Object?>[
      const _i2.XmlElementName(
        'ClassicLoadBalancerResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.name != null) {
      result
        ..add(const _i2.XmlElementName('Name'))
        ..add(serializers.serialize(
          payload.name!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
