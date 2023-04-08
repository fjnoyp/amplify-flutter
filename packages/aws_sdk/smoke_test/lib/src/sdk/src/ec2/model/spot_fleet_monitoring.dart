// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.spot_fleet_monitoring; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'spot_fleet_monitoring.g.dart';

/// Describes whether monitoring is enabled.
abstract class SpotFleetMonitoring
    with _i1.AWSEquatable<SpotFleetMonitoring>
    implements Built<SpotFleetMonitoring, SpotFleetMonitoringBuilder> {
  /// Describes whether monitoring is enabled.
  factory SpotFleetMonitoring({bool? enabled}) {
    enabled ??= false;
    return _$SpotFleetMonitoring._(enabled: enabled);
  }

  /// Describes whether monitoring is enabled.
  factory SpotFleetMonitoring.build(
          [void Function(SpotFleetMonitoringBuilder) updates]) =
      _$SpotFleetMonitoring;

  const SpotFleetMonitoring._();

  static const List<_i2.SmithySerializer> serializers = [
    SpotFleetMonitoringEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SpotFleetMonitoringBuilder b) {
    b.enabled = false;
  }

  /// Enables monitoring for the instance.
  ///
  /// Default: `false`
  bool get enabled;
  @override
  List<Object?> get props => [enabled];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SpotFleetMonitoring');
    helper.add(
      'enabled',
      enabled,
    );
    return helper.toString();
  }
}

class SpotFleetMonitoringEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<SpotFleetMonitoring> {
  const SpotFleetMonitoringEc2QuerySerializer() : super('SpotFleetMonitoring');

  @override
  Iterable<Type> get types => const [
        SpotFleetMonitoring,
        _$SpotFleetMonitoring,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SpotFleetMonitoring deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SpotFleetMonitoringBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'enabled':
          result.enabled = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
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
    final payload = (object as SpotFleetMonitoring);
    final result = <Object?>[
      const _i2.XmlElementName(
        'SpotFleetMonitoringResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i2.XmlElementName('Enabled'))
      ..add(serializers.serialize(
        payload.enabled,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
