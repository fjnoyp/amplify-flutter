// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.traffic_mirror_session; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i2;

part 'traffic_mirror_session.g.dart';

/// Describes a Traffic Mirror session.
abstract class TrafficMirrorSession
    with _i1.AWSEquatable<TrafficMirrorSession>
    implements Built<TrafficMirrorSession, TrafficMirrorSessionBuilder> {
  /// Describes a Traffic Mirror session.
  factory TrafficMirrorSession({
    String? trafficMirrorSessionId,
    String? trafficMirrorTargetId,
    String? trafficMirrorFilterId,
    String? networkInterfaceId,
    String? ownerId,
    int? packetLength,
    int? sessionNumber,
    int? virtualNetworkId,
    String? description,
    List<_i2.Tag>? tags,
  }) {
    packetLength ??= 0;
    sessionNumber ??= 0;
    virtualNetworkId ??= 0;
    return _$TrafficMirrorSession._(
      trafficMirrorSessionId: trafficMirrorSessionId,
      trafficMirrorTargetId: trafficMirrorTargetId,
      trafficMirrorFilterId: trafficMirrorFilterId,
      networkInterfaceId: networkInterfaceId,
      ownerId: ownerId,
      packetLength: packetLength,
      sessionNumber: sessionNumber,
      virtualNetworkId: virtualNetworkId,
      description: description,
      tags: tags == null ? null : _i3.BuiltList(tags),
    );
  }

  /// Describes a Traffic Mirror session.
  factory TrafficMirrorSession.build(
          [void Function(TrafficMirrorSessionBuilder) updates]) =
      _$TrafficMirrorSession;

  const TrafficMirrorSession._();

  static const List<_i4.SmithySerializer> serializers = [
    TrafficMirrorSessionEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TrafficMirrorSessionBuilder b) {
    b.packetLength = 0;
    b.sessionNumber = 0;
    b.virtualNetworkId = 0;
  }

  /// The ID for the Traffic Mirror session.
  String? get trafficMirrorSessionId;

  /// The ID of the Traffic Mirror target.
  String? get trafficMirrorTargetId;

  /// The ID of the Traffic Mirror filter.
  String? get trafficMirrorFilterId;

  /// The ID of the Traffic Mirror session's network interface.
  String? get networkInterfaceId;

  /// The ID of the account that owns the Traffic Mirror session.
  String? get ownerId;

  /// The number of bytes in each packet to mirror. These are the bytes after the VXLAN header. To mirror a subset, set this to the length (in bytes) to mirror. For example, if you set this value to 100, then the first 100 bytes that meet the filter criteria are copied to the target. Do not specify this parameter when you want to mirror the entire packet
  int get packetLength;

  /// The session number determines the order in which sessions are evaluated when an interface is used by multiple sessions. The first session with a matching filter is the one that mirrors the packets.
  ///
  /// Valid values are 1-32766.
  int get sessionNumber;

  /// The virtual network ID associated with the Traffic Mirror session.
  int get virtualNetworkId;

  /// The description of the Traffic Mirror session.
  String? get description;

  /// The tags assigned to the Traffic Mirror session.
  _i3.BuiltList<_i2.Tag>? get tags;
  @override
  List<Object?> get props => [
        trafficMirrorSessionId,
        trafficMirrorTargetId,
        trafficMirrorFilterId,
        networkInterfaceId,
        ownerId,
        packetLength,
        sessionNumber,
        virtualNetworkId,
        description,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TrafficMirrorSession');
    helper.add(
      'trafficMirrorSessionId',
      trafficMirrorSessionId,
    );
    helper.add(
      'trafficMirrorTargetId',
      trafficMirrorTargetId,
    );
    helper.add(
      'trafficMirrorFilterId',
      trafficMirrorFilterId,
    );
    helper.add(
      'networkInterfaceId',
      networkInterfaceId,
    );
    helper.add(
      'ownerId',
      ownerId,
    );
    helper.add(
      'packetLength',
      packetLength,
    );
    helper.add(
      'sessionNumber',
      sessionNumber,
    );
    helper.add(
      'virtualNetworkId',
      virtualNetworkId,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class TrafficMirrorSessionEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<TrafficMirrorSession> {
  const TrafficMirrorSessionEc2QuerySerializer()
      : super('TrafficMirrorSession');

  @override
  Iterable<Type> get types => const [
        TrafficMirrorSession,
        _$TrafficMirrorSession,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TrafficMirrorSession deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TrafficMirrorSessionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'trafficMirrorSessionId':
          if (value != null) {
            result.trafficMirrorSessionId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'trafficMirrorTargetId':
          if (value != null) {
            result.trafficMirrorTargetId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'trafficMirrorFilterId':
          if (value != null) {
            result.trafficMirrorFilterId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'networkInterfaceId':
          if (value != null) {
            result.networkInterfaceId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ownerId':
          if (value != null) {
            result.ownerId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'packetLength':
          result.packetLength = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'sessionNumber':
          result.sessionNumber = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'virtualNetworkId':
          result.virtualNetworkId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'description':
          if (value != null) {
            result.description = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'tagSet':
          if (value != null) {
            result.tags.replace((const _i4.XmlBuiltListSerializer(
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
    final payload = (object as TrafficMirrorSession);
    final result = <Object?>[
      const _i4.XmlElementName(
        'TrafficMirrorSessionResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.trafficMirrorSessionId != null) {
      result
        ..add(const _i4.XmlElementName('TrafficMirrorSessionId'))
        ..add(serializers.serialize(
          payload.trafficMirrorSessionId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.trafficMirrorTargetId != null) {
      result
        ..add(const _i4.XmlElementName('TrafficMirrorTargetId'))
        ..add(serializers.serialize(
          payload.trafficMirrorTargetId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.trafficMirrorFilterId != null) {
      result
        ..add(const _i4.XmlElementName('TrafficMirrorFilterId'))
        ..add(serializers.serialize(
          payload.trafficMirrorFilterId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.networkInterfaceId != null) {
      result
        ..add(const _i4.XmlElementName('NetworkInterfaceId'))
        ..add(serializers.serialize(
          payload.networkInterfaceId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.ownerId != null) {
      result
        ..add(const _i4.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          payload.ownerId!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i4.XmlElementName('PacketLength'))
      ..add(serializers.serialize(
        payload.packetLength,
        specifiedType: const FullType(int),
      ));
    result
      ..add(const _i4.XmlElementName('SessionNumber'))
      ..add(serializers.serialize(
        payload.sessionNumber,
        specifiedType: const FullType(int),
      ));
    result
      ..add(const _i4.XmlElementName('VirtualNetworkId'))
      ..add(serializers.serialize(
        payload.virtualNetworkId,
        specifiedType: const FullType(int),
      ));
    if (payload.description != null) {
      result
        ..add(const _i4.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.tags != null) {
      result
        ..add(const _i4.XmlElementName('TagSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tags!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.Tag)],
          ),
        ));
    }
    return result;
  }
}
