// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.start_instances_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_state_change.dart'
    as _i2;

part 'start_instances_result.g.dart';

abstract class StartInstancesResult
    with _i1.AWSEquatable<StartInstancesResult>
    implements Built<StartInstancesResult, StartInstancesResultBuilder> {
  factory StartInstancesResult(
      {List<_i2.InstanceStateChange>? startingInstances}) {
    return _$StartInstancesResult._(
        startingInstances: startingInstances == null
            ? null
            : _i3.BuiltList(startingInstances));
  }

  factory StartInstancesResult.build(
          [void Function(StartInstancesResultBuilder) updates]) =
      _$StartInstancesResult;

  const StartInstancesResult._();

  /// Constructs a [StartInstancesResult] from a [payload] and [response].
  factory StartInstancesResult.fromResponse(
    StartInstancesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    StartInstancesResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StartInstancesResultBuilder b) {}

  /// Information about the started instances.
  _i3.BuiltList<_i2.InstanceStateChange>? get startingInstances;
  @override
  List<Object?> get props => [startingInstances];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('StartInstancesResult');
    helper.add(
      'startingInstances',
      startingInstances,
    );
    return helper.toString();
  }
}

class StartInstancesResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<StartInstancesResult> {
  const StartInstancesResultEc2QuerySerializer()
      : super('StartInstancesResult');

  @override
  Iterable<Type> get types => const [
        StartInstancesResult,
        _$StartInstancesResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  StartInstancesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StartInstancesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'instancesSet':
          if (value != null) {
            result.startingInstances.replace((const _i4.XmlBuiltListSerializer(
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
    final payload = (object as StartInstancesResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'StartInstancesResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.startingInstances != null) {
      result
        ..add(const _i4.XmlElementName('InstancesSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.startingInstances!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.InstanceStateChange)],
          ),
        ));
    }
    return result;
  }
}
