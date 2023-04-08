// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.terminate_instances_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_state_change.dart'
    as _i2;

part 'terminate_instances_result.g.dart';

abstract class TerminateInstancesResult
    with _i1.AWSEquatable<TerminateInstancesResult>
    implements
        Built<TerminateInstancesResult, TerminateInstancesResultBuilder> {
  factory TerminateInstancesResult(
      {List<_i2.InstanceStateChange>? terminatingInstances}) {
    return _$TerminateInstancesResult._(
        terminatingInstances: terminatingInstances == null
            ? null
            : _i3.BuiltList(terminatingInstances));
  }

  factory TerminateInstancesResult.build(
          [void Function(TerminateInstancesResultBuilder) updates]) =
      _$TerminateInstancesResult;

  const TerminateInstancesResult._();

  /// Constructs a [TerminateInstancesResult] from a [payload] and [response].
  factory TerminateInstancesResult.fromResponse(
    TerminateInstancesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    TerminateInstancesResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TerminateInstancesResultBuilder b) {}

  /// Information about the terminated instances.
  _i3.BuiltList<_i2.InstanceStateChange>? get terminatingInstances;
  @override
  List<Object?> get props => [terminatingInstances];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TerminateInstancesResult');
    helper.add(
      'terminatingInstances',
      terminatingInstances,
    );
    return helper.toString();
  }
}

class TerminateInstancesResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<TerminateInstancesResult> {
  const TerminateInstancesResultEc2QuerySerializer()
      : super('TerminateInstancesResult');

  @override
  Iterable<Type> get types => const [
        TerminateInstancesResult,
        _$TerminateInstancesResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TerminateInstancesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TerminateInstancesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'instancesSet':
          if (value != null) {
            result.terminatingInstances
                .replace((const _i4.XmlBuiltListSerializer(
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
    final payload = (object as TerminateInstancesResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'TerminateInstancesResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.terminatingInstances != null) {
      result
        ..add(const _i4.XmlElementName('InstancesSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.terminatingInstances!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.InstanceStateChange)],
          ),
        ));
    }
    return result;
  }
}
