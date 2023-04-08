// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.analysis_load_balancer_target; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/analysis_component.dart'
    as _i2;

part 'analysis_load_balancer_target.g.dart';

/// Describes a load balancer target.
abstract class AnalysisLoadBalancerTarget
    with _i1.AWSEquatable<AnalysisLoadBalancerTarget>
    implements
        Built<AnalysisLoadBalancerTarget, AnalysisLoadBalancerTargetBuilder> {
  /// Describes a load balancer target.
  factory AnalysisLoadBalancerTarget({
    String? address,
    String? availabilityZone,
    _i2.AnalysisComponent? instance,
    int? port,
  }) {
    port ??= 0;
    return _$AnalysisLoadBalancerTarget._(
      address: address,
      availabilityZone: availabilityZone,
      instance: instance,
      port: port,
    );
  }

  /// Describes a load balancer target.
  factory AnalysisLoadBalancerTarget.build(
          [void Function(AnalysisLoadBalancerTargetBuilder) updates]) =
      _$AnalysisLoadBalancerTarget;

  const AnalysisLoadBalancerTarget._();

  static const List<_i3.SmithySerializer> serializers = [
    AnalysisLoadBalancerTargetEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AnalysisLoadBalancerTargetBuilder b) {
    b.port = 0;
  }

  /// The IP address.
  String? get address;

  /// The Availability Zone.
  String? get availabilityZone;

  /// Information about the instance.
  _i2.AnalysisComponent? get instance;

  /// The port on which the target is listening.
  int get port;
  @override
  List<Object?> get props => [
        address,
        availabilityZone,
        instance,
        port,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AnalysisLoadBalancerTarget');
    helper.add(
      'address',
      address,
    );
    helper.add(
      'availabilityZone',
      availabilityZone,
    );
    helper.add(
      'instance',
      instance,
    );
    helper.add(
      'port',
      port,
    );
    return helper.toString();
  }
}

class AnalysisLoadBalancerTargetEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<AnalysisLoadBalancerTarget> {
  const AnalysisLoadBalancerTargetEc2QuerySerializer()
      : super('AnalysisLoadBalancerTarget');

  @override
  Iterable<Type> get types => const [
        AnalysisLoadBalancerTarget,
        _$AnalysisLoadBalancerTarget,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AnalysisLoadBalancerTarget deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalysisLoadBalancerTargetBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'address':
          if (value != null) {
            result.address = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'availabilityZone':
          if (value != null) {
            result.availabilityZone = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'instance':
          if (value != null) {
            result.instance.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.AnalysisComponent),
            ) as _i2.AnalysisComponent));
          }
          break;
        case 'port':
          result.port = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
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
    final payload = (object as AnalysisLoadBalancerTarget);
    final result = <Object?>[
      const _i3.XmlElementName(
        'AnalysisLoadBalancerTargetResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.address != null) {
      result
        ..add(const _i3.XmlElementName('Address'))
        ..add(serializers.serialize(
          payload.address!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.availabilityZone != null) {
      result
        ..add(const _i3.XmlElementName('AvailabilityZone'))
        ..add(serializers.serialize(
          payload.availabilityZone!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.instance != null) {
      result
        ..add(const _i3.XmlElementName('Instance'))
        ..add(serializers.serialize(
          payload.instance!,
          specifiedType: const FullType(_i2.AnalysisComponent),
        ));
    }
    result
      ..add(const _i3.XmlElementName('Port'))
      ..add(serializers.serialize(
        payload.port,
        specifiedType: const FullType(int),
      ));
    return result;
  }
}
