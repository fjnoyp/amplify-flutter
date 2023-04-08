// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.monitor_instances_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_monitoring.dart'
    as _i2;

part 'monitor_instances_result.g.dart';

abstract class MonitorInstancesResult
    with _i1.AWSEquatable<MonitorInstancesResult>
    implements Built<MonitorInstancesResult, MonitorInstancesResultBuilder> {
  factory MonitorInstancesResult(
      {List<_i2.InstanceMonitoring>? instanceMonitorings}) {
    return _$MonitorInstancesResult._(
        instanceMonitorings: instanceMonitorings == null
            ? null
            : _i3.BuiltList(instanceMonitorings));
  }

  factory MonitorInstancesResult.build(
          [void Function(MonitorInstancesResultBuilder) updates]) =
      _$MonitorInstancesResult;

  const MonitorInstancesResult._();

  /// Constructs a [MonitorInstancesResult] from a [payload] and [response].
  factory MonitorInstancesResult.fromResponse(
    MonitorInstancesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    MonitorInstancesResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MonitorInstancesResultBuilder b) {}

  /// The monitoring information.
  _i3.BuiltList<_i2.InstanceMonitoring>? get instanceMonitorings;
  @override
  List<Object?> get props => [instanceMonitorings];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MonitorInstancesResult');
    helper.add(
      'instanceMonitorings',
      instanceMonitorings,
    );
    return helper.toString();
  }
}

class MonitorInstancesResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<MonitorInstancesResult> {
  const MonitorInstancesResultEc2QuerySerializer()
      : super('MonitorInstancesResult');

  @override
  Iterable<Type> get types => const [
        MonitorInstancesResult,
        _$MonitorInstancesResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  MonitorInstancesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MonitorInstancesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'instancesSet':
          if (value != null) {
            result.instanceMonitorings
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.InstanceMonitoring)],
              ),
            ) as _i3.BuiltList<_i2.InstanceMonitoring>));
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
    final payload = (object as MonitorInstancesResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'MonitorInstancesResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.instanceMonitorings != null) {
      result
        ..add(const _i4.XmlElementName('InstancesSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.instanceMonitorings!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.InstanceMonitoring)],
          ),
        ));
    }
    return result;
  }
}
