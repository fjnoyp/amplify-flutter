// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.unmonitor_instances_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'unmonitor_instances_request.g.dart';

abstract class UnmonitorInstancesRequest
    with
        _i1.HttpInput<UnmonitorInstancesRequest>,
        _i2.AWSEquatable<UnmonitorInstancesRequest>
    implements
        Built<UnmonitorInstancesRequest, UnmonitorInstancesRequestBuilder> {
  factory UnmonitorInstancesRequest({
    required List<String> instanceIds,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$UnmonitorInstancesRequest._(
      instanceIds: _i3.BuiltList(instanceIds),
      dryRun: dryRun,
    );
  }

  factory UnmonitorInstancesRequest.build(
          [void Function(UnmonitorInstancesRequestBuilder) updates]) =
      _$UnmonitorInstancesRequest;

  const UnmonitorInstancesRequest._();

  factory UnmonitorInstancesRequest.fromRequest(
    UnmonitorInstancesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    UnmonitorInstancesRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UnmonitorInstancesRequestBuilder b) {
    b.dryRun = false;
  }

  /// The IDs of the instances.
  _i3.BuiltList<String> get instanceIds;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  UnmonitorInstancesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        instanceIds,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UnmonitorInstancesRequest');
    helper.add(
      'instanceIds',
      instanceIds,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class UnmonitorInstancesRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<UnmonitorInstancesRequest> {
  const UnmonitorInstancesRequestEc2QuerySerializer()
      : super('UnmonitorInstancesRequest');

  @override
  Iterable<Type> get types => const [
        UnmonitorInstancesRequest,
        _$UnmonitorInstancesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  UnmonitorInstancesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UnmonitorInstancesRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'InstanceId':
          result.instanceIds.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'InstanceId',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
          break;
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
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
    final payload = (object as UnmonitorInstancesRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'UnmonitorInstancesRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('InstanceId'))
      ..add(const _i1.XmlBuiltListSerializer(
        memberName: 'InstanceId',
        indexer: _i1.XmlIndexer.ec2QueryList,
      ).serialize(
        serializers,
        payload.instanceIds,
        specifiedType: const FullType.nullable(
          _i3.BuiltList,
          [FullType(String)],
        ),
      ));
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
