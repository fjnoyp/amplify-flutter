// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.stop_instances_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_state_change.dart'
    as _i2;

part 'stop_instances_result.g.dart';

abstract class StopInstancesResult
    with _i1.AWSEquatable<StopInstancesResult>
    implements Built<StopInstancesResult, StopInstancesResultBuilder> {
  factory StopInstancesResult(
      {List<_i2.InstanceStateChange>? stoppingInstances}) {
    return _$StopInstancesResult._(
        stoppingInstances: stoppingInstances == null
            ? null
            : _i3.BuiltList(stoppingInstances));
  }

  factory StopInstancesResult.build(
          [void Function(StopInstancesResultBuilder) updates]) =
      _$StopInstancesResult;

  const StopInstancesResult._();

  /// Constructs a [StopInstancesResult] from a [payload] and [response].
  factory StopInstancesResult.fromResponse(
    StopInstancesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    StopInstancesResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StopInstancesResultBuilder b) {}

  /// Information about the stopped instances.
  _i3.BuiltList<_i2.InstanceStateChange>? get stoppingInstances;
  @override
  List<Object?> get props => [stoppingInstances];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('StopInstancesResult');
    helper.add(
      'stoppingInstances',
      stoppingInstances,
    );
    return helper.toString();
  }
}

class StopInstancesResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<StopInstancesResult> {
  const StopInstancesResultEc2QuerySerializer() : super('StopInstancesResult');

  @override
  Iterable<Type> get types => const [
        StopInstancesResult,
        _$StopInstancesResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  StopInstancesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StopInstancesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'instancesSet':
          if (value != null) {
            result.stoppingInstances.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.InstanceStateChange)],
              ),
            ) as _i3.BuiltList<_i2.InstanceStateChange>));
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
    final payload = (object as StopInstancesResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'StopInstancesResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.stoppingInstances != null) {
      result
        ..add(const _i4.XmlElementName('InstancesSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.stoppingInstances!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.InstanceStateChange)],
          ),
        ));
    }
    return result;
  }
}
