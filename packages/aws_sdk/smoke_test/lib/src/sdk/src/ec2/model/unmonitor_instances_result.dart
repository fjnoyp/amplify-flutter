// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.unmonitor_instances_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_monitoring.dart'
    as _i2;

part 'unmonitor_instances_result.g.dart';

abstract class UnmonitorInstancesResult
    with _i1.AWSEquatable<UnmonitorInstancesResult>
    implements
        Built<UnmonitorInstancesResult, UnmonitorInstancesResultBuilder> {
  factory UnmonitorInstancesResult(
      {List<_i2.InstanceMonitoring>? instanceMonitorings}) {
    return _$UnmonitorInstancesResult._(
        instanceMonitorings: instanceMonitorings == null
            ? null
            : _i3.BuiltList(instanceMonitorings));
  }

  factory UnmonitorInstancesResult.build(
          [void Function(UnmonitorInstancesResultBuilder) updates]) =
      _$UnmonitorInstancesResult;

  const UnmonitorInstancesResult._();

  /// Constructs a [UnmonitorInstancesResult] from a [payload] and [response].
  factory UnmonitorInstancesResult.fromResponse(
    UnmonitorInstancesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    UnmonitorInstancesResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UnmonitorInstancesResultBuilder b) {}

  /// The monitoring information.
  _i3.BuiltList<_i2.InstanceMonitoring>? get instanceMonitorings;
  @override
  List<Object?> get props => [instanceMonitorings];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UnmonitorInstancesResult');
    helper.add(
      'instanceMonitorings',
      instanceMonitorings,
    );
    return helper.toString();
  }
}

class UnmonitorInstancesResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<UnmonitorInstancesResult> {
  const UnmonitorInstancesResultEc2QuerySerializer()
      : super('UnmonitorInstancesResult');

  @override
  Iterable<Type> get types => const [
        UnmonitorInstancesResult,
        _$UnmonitorInstancesResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  UnmonitorInstancesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UnmonitorInstancesResultBuilder();
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
    final payload = (object as UnmonitorInstancesResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'UnmonitorInstancesResultResponse',
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
