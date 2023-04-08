// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.instance_event_window_association_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i2;

part 'instance_event_window_association_request.g.dart';

/// One or more targets associated with the specified event window. Only one _type_ of target (instance ID, instance tag, or Dedicated Host ID) can be associated with an event window.
abstract class InstanceEventWindowAssociationRequest
    with
        _i1.AWSEquatable<InstanceEventWindowAssociationRequest>
    implements
        Built<InstanceEventWindowAssociationRequest,
            InstanceEventWindowAssociationRequestBuilder> {
  /// One or more targets associated with the specified event window. Only one _type_ of target (instance ID, instance tag, or Dedicated Host ID) can be associated with an event window.
  factory InstanceEventWindowAssociationRequest({
    List<String>? instanceIds,
    List<_i2.Tag>? instanceTags,
    List<String>? dedicatedHostIds,
  }) {
    return _$InstanceEventWindowAssociationRequest._(
      instanceIds: instanceIds == null ? null : _i3.BuiltList(instanceIds),
      instanceTags: instanceTags == null ? null : _i3.BuiltList(instanceTags),
      dedicatedHostIds:
          dedicatedHostIds == null ? null : _i3.BuiltList(dedicatedHostIds),
    );
  }

  /// One or more targets associated with the specified event window. Only one _type_ of target (instance ID, instance tag, or Dedicated Host ID) can be associated with an event window.
  factory InstanceEventWindowAssociationRequest.build(
      [void Function(InstanceEventWindowAssociationRequestBuilder)
          updates]) = _$InstanceEventWindowAssociationRequest;

  const InstanceEventWindowAssociationRequest._();

  static const List<_i4.SmithySerializer> serializers = [
    InstanceEventWindowAssociationRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InstanceEventWindowAssociationRequestBuilder b) {}

  /// The IDs of the instances to associate with the event window. If the instance is on a Dedicated Host, you can't specify the Instance ID parameter; you must use the Dedicated Host ID parameter.
  _i3.BuiltList<String>? get instanceIds;

  /// The instance tags to associate with the event window. Any instances associated with the tags will be associated with the event window.
  _i3.BuiltList<_i2.Tag>? get instanceTags;

  /// The IDs of the Dedicated Hosts to associate with the event window.
  _i3.BuiltList<String>? get dedicatedHostIds;
  @override
  List<Object?> get props => [
        instanceIds,
        instanceTags,
        dedicatedHostIds,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('InstanceEventWindowAssociationRequest');
    helper.add(
      'instanceIds',
      instanceIds,
    );
    helper.add(
      'instanceTags',
      instanceTags,
    );
    helper.add(
      'dedicatedHostIds',
      dedicatedHostIds,
    );
    return helper.toString();
  }
}

class InstanceEventWindowAssociationRequestEc2QuerySerializer extends _i4
    .StructuredSmithySerializer<InstanceEventWindowAssociationRequest> {
  const InstanceEventWindowAssociationRequestEc2QuerySerializer()
      : super('InstanceEventWindowAssociationRequest');

  @override
  Iterable<Type> get types => const [
        InstanceEventWindowAssociationRequest,
        _$InstanceEventWindowAssociationRequest,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceEventWindowAssociationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceEventWindowAssociationRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'InstanceId':
          if (value != null) {
            result.instanceIds.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(String)],
              ),
            ) as _i3.BuiltList<String>));
          }
          break;
        case 'InstanceTag':
          if (value != null) {
            result.instanceTags.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.Tag)],
              ),
            ) as _i3.BuiltList<_i2.Tag>));
          }
          break;
        case 'DedicatedHostId':
          if (value != null) {
            result.dedicatedHostIds.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(String)],
              ),
            ) as _i3.BuiltList<String>));
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
    final payload = (object as InstanceEventWindowAssociationRequest);
    final result = <Object?>[
      const _i4.XmlElementName(
        'InstanceEventWindowAssociationRequestResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.instanceIds != null) {
      result
        ..add(const _i4.XmlElementName('InstanceId'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.instanceIds!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.instanceTags != null) {
      result
        ..add(const _i4.XmlElementName('InstanceTag'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.instanceTags!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.Tag)],
          ),
        ));
    }
    if (payload.dedicatedHostIds != null) {
      result
        ..add(const _i4.XmlElementName('DedicatedHostId'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.dedicatedHostIds!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result;
  }
}
