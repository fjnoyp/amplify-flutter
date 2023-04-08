// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.reboot_instances_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'reboot_instances_request.g.dart';

abstract class RebootInstancesRequest
    with
        _i1.HttpInput<RebootInstancesRequest>,
        _i2.AWSEquatable<RebootInstancesRequest>
    implements Built<RebootInstancesRequest, RebootInstancesRequestBuilder> {
  factory RebootInstancesRequest({
    required List<String> instanceIds,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$RebootInstancesRequest._(
      instanceIds: _i3.BuiltList(instanceIds),
      dryRun: dryRun,
    );
  }

  factory RebootInstancesRequest.build(
          [void Function(RebootInstancesRequestBuilder) updates]) =
      _$RebootInstancesRequest;

  const RebootInstancesRequest._();

  factory RebootInstancesRequest.fromRequest(
    RebootInstancesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    RebootInstancesRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RebootInstancesRequestBuilder b) {
    b.dryRun = false;
  }

  /// The instance IDs.
  _i3.BuiltList<String> get instanceIds;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  RebootInstancesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        instanceIds,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RebootInstancesRequest');
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

class RebootInstancesRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<RebootInstancesRequest> {
  const RebootInstancesRequestEc2QuerySerializer()
      : super('RebootInstancesRequest');

  @override
  Iterable<Type> get types => const [
        RebootInstancesRequest,
        _$RebootInstancesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RebootInstancesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RebootInstancesRequestBuilder();
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
    final payload = (object as RebootInstancesRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'RebootInstancesRequestResponse',
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
