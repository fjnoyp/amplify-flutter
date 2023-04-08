// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.instance_event_window_disassociation_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i2;

part 'instance_event_window_disassociation_request.g.dart';

/// The targets to disassociate from the specified event window.
abstract class InstanceEventWindowDisassociationRequest
    with
        _i1.AWSEquatable<InstanceEventWindowDisassociationRequest>
    implements
        Built<InstanceEventWindowDisassociationRequest,
            InstanceEventWindowDisassociationRequestBuilder> {
  /// The targets to disassociate from the specified event window.
  factory InstanceEventWindowDisassociationRequest({
    List<String>? instanceIds,
    List<_i2.Tag>? instanceTags,
    List<String>? dedicatedHostIds,
  }) {
    return _$InstanceEventWindowDisassociationRequest._(
      instanceIds: instanceIds == null ? null : _i3.BuiltList(instanceIds),
      instanceTags: instanceTags == null ? null : _i3.BuiltList(instanceTags),
      dedicatedHostIds:
          dedicatedHostIds == null ? null : _i3.BuiltList(dedicatedHostIds),
    );
  }

  /// The targets to disassociate from the specified event window.
  factory InstanceEventWindowDisassociationRequest.build(
      [void Function(InstanceEventWindowDisassociationRequestBuilder)
          updates]) = _$InstanceEventWindowDisassociationRequest;

  const InstanceEventWindowDisassociationRequest._();

  static const List<_i4.SmithySerializer> serializers = [
    InstanceEventWindowDisassociationRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InstanceEventWindowDisassociationRequestBuilder b) {}

  /// The IDs of the instances to disassociate from the event window.
  _i3.BuiltList<String>? get instanceIds;

  /// The instance tags to disassociate from the event window. Any instances associated with the tags will be disassociated from the event window.
  _i3.BuiltList<_i2.Tag>? get instanceTags;

  /// The IDs of the Dedicated Hosts to disassociate from the event window.
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
        newBuiltValueToStringHelper('InstanceEventWindowDisassociationRequest');
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

class InstanceEventWindowDisassociationRequestEc2QuerySerializer extends _i4
    .StructuredSmithySerializer<InstanceEventWindowDisassociationRequest> {
  const InstanceEventWindowDisassociationRequestEc2QuerySerializer()
      : super('InstanceEventWindowDisassociationRequest');

  @override
  Iterable<Type> get types => const [
        InstanceEventWindowDisassociationRequest,
        _$InstanceEventWindowDisassociationRequest,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceEventWindowDisassociationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceEventWindowDisassociationRequestBuilder();
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
    final payload = (object as InstanceEventWindowDisassociationRequest);
    final result = <Object?>[
      const _i4.XmlElementName(
        'InstanceEventWindowDisassociationRequestResponse',
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
