// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.instance_monitoring; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/monitoring.dart' as _i2;

part 'instance_monitoring.g.dart';

/// Describes the monitoring of an instance.
abstract class InstanceMonitoring
    with _i1.AWSEquatable<InstanceMonitoring>
    implements Built<InstanceMonitoring, InstanceMonitoringBuilder> {
  /// Describes the monitoring of an instance.
  factory InstanceMonitoring({
    String? instanceId,
    _i2.Monitoring? monitoring,
  }) {
    return _$InstanceMonitoring._(
      instanceId: instanceId,
      monitoring: monitoring,
    );
  }

  /// Describes the monitoring of an instance.
  factory InstanceMonitoring.build(
          [void Function(InstanceMonitoringBuilder) updates]) =
      _$InstanceMonitoring;

  const InstanceMonitoring._();

  static const List<_i3.SmithySerializer> serializers = [
    InstanceMonitoringEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InstanceMonitoringBuilder b) {}

  /// The ID of the instance.
  String? get instanceId;

  /// The monitoring for the instance.
  _i2.Monitoring? get monitoring;
  @override
  List<Object?> get props => [
        instanceId,
        monitoring,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InstanceMonitoring');
    helper.add(
      'instanceId',
      instanceId,
    );
    helper.add(
      'monitoring',
      monitoring,
    );
    return helper.toString();
  }
}

class InstanceMonitoringEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<InstanceMonitoring> {
  const InstanceMonitoringEc2QuerySerializer() : super('InstanceMonitoring');

  @override
  Iterable<Type> get types => const [
        InstanceMonitoring,
        _$InstanceMonitoring,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceMonitoring deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceMonitoringBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'instanceId':
          if (value != null) {
            result.instanceId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'monitoring':
          if (value != null) {
            result.monitoring.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.Monitoring),
            ) as _i2.Monitoring));
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
    final payload = (object as InstanceMonitoring);
    final result = <Object?>[
      const _i3.XmlElementName(
        'InstanceMonitoringResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.instanceId != null) {
      result
        ..add(const _i3.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          payload.instanceId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.monitoring != null) {
      result
        ..add(const _i3.XmlElementName('Monitoring'))
        ..add(serializers.serialize(
          payload.monitoring!,
          specifiedType: const FullType(_i2.Monitoring),
        ));
    }
    return result;
  }
}
