// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.stop_instances_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'stop_instances_request.g.dart';

abstract class StopInstancesRequest
    with
        _i1.HttpInput<StopInstancesRequest>,
        _i2.AWSEquatable<StopInstancesRequest>
    implements Built<StopInstancesRequest, StopInstancesRequestBuilder> {
  factory StopInstancesRequest({
    required List<String> instanceIds,
    bool? hibernate,
    bool? dryRun,
    bool? force,
  }) {
    hibernate ??= false;
    dryRun ??= false;
    force ??= false;
    return _$StopInstancesRequest._(
      instanceIds: _i3.BuiltList(instanceIds),
      hibernate: hibernate,
      dryRun: dryRun,
      force: force,
    );
  }

  factory StopInstancesRequest.build(
          [void Function(StopInstancesRequestBuilder) updates]) =
      _$StopInstancesRequest;

  const StopInstancesRequest._();

  factory StopInstancesRequest.fromRequest(
    StopInstancesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    StopInstancesRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StopInstancesRequestBuilder b) {
    b.hibernate = false;
    b.dryRun = false;
    b.force = false;
  }

  /// The IDs of the instances.
  _i3.BuiltList<String> get instanceIds;

  /// Hibernates the instance if the instance was enabled for hibernation at launch. If the instance cannot hibernate successfully, a normal shutdown occurs. For more information, see [Hibernate your instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html) in the _Amazon EC2 User Guide_.
  ///
  /// Default: `false`
  bool get hibernate;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// Forces the instances to stop. The instances do not have an opportunity to flush file system caches or file system metadata. If you use this option, you must perform file system check and repair procedures. This option is not recommended for Windows instances.
  ///
  /// Default: `false`
  bool get force;
  @override
  StopInstancesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        instanceIds,
        hibernate,
        dryRun,
        force,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('StopInstancesRequest');
    helper.add(
      'instanceIds',
      instanceIds,
    );
    helper.add(
      'hibernate',
      hibernate,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'force',
      force,
    );
    return helper.toString();
  }
}

class StopInstancesRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<StopInstancesRequest> {
  const StopInstancesRequestEc2QuerySerializer()
      : super('StopInstancesRequest');

  @override
  Iterable<Type> get types => const [
        StopInstancesRequest,
        _$StopInstancesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  StopInstancesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StopInstancesRequestBuilder();
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
        case 'Hibernate':
          result.hibernate = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'force':
          result.force = (serializers.deserialize(
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
    final payload = (object as StopInstancesRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'StopInstancesRequestResponse',
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
      ..add(const _i1.XmlElementName('Hibernate'))
      ..add(serializers.serialize(
        payload.hibernate,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i1.XmlElementName('Force'))
      ..add(serializers.serialize(
        payload.force,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
