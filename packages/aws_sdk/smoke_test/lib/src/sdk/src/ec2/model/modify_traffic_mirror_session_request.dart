// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.modify_traffic_mirror_session_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_mirror_session_field.dart'
    as _i3;

part 'modify_traffic_mirror_session_request.g.dart';

abstract class ModifyTrafficMirrorSessionRequest
    with
        _i1.HttpInput<ModifyTrafficMirrorSessionRequest>,
        _i2.AWSEquatable<ModifyTrafficMirrorSessionRequest>
    implements
        Built<ModifyTrafficMirrorSessionRequest,
            ModifyTrafficMirrorSessionRequestBuilder> {
  factory ModifyTrafficMirrorSessionRequest({
    required String trafficMirrorSessionId,
    String? trafficMirrorTargetId,
    String? trafficMirrorFilterId,
    int? packetLength,
    int? sessionNumber,
    int? virtualNetworkId,
    String? description,
    List<_i3.TrafficMirrorSessionField>? removeFields,
    bool? dryRun,
  }) {
    packetLength ??= 0;
    sessionNumber ??= 0;
    virtualNetworkId ??= 0;
    dryRun ??= false;
    return _$ModifyTrafficMirrorSessionRequest._(
      trafficMirrorSessionId: trafficMirrorSessionId,
      trafficMirrorTargetId: trafficMirrorTargetId,
      trafficMirrorFilterId: trafficMirrorFilterId,
      packetLength: packetLength,
      sessionNumber: sessionNumber,
      virtualNetworkId: virtualNetworkId,
      description: description,
      removeFields: removeFields == null ? null : _i4.BuiltList(removeFields),
      dryRun: dryRun,
    );
  }

  factory ModifyTrafficMirrorSessionRequest.build(
          [void Function(ModifyTrafficMirrorSessionRequestBuilder) updates]) =
      _$ModifyTrafficMirrorSessionRequest;

  const ModifyTrafficMirrorSessionRequest._();

  factory ModifyTrafficMirrorSessionRequest.fromRequest(
    ModifyTrafficMirrorSessionRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ModifyTrafficMirrorSessionRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyTrafficMirrorSessionRequestBuilder b) {
    b.packetLength = 0;
    b.sessionNumber = 0;
    b.virtualNetworkId = 0;
    b.dryRun = false;
  }

  /// The ID of the Traffic Mirror session.
  String get trafficMirrorSessionId;

  /// The Traffic Mirror target. The target must be in the same VPC as the source, or have a VPC peering connection with the source.
  String? get trafficMirrorTargetId;

  /// The ID of the Traffic Mirror filter.
  String? get trafficMirrorFilterId;

  /// The number of bytes in each packet to mirror. These are bytes after the VXLAN header. To mirror a subset, set this to the length (in bytes) to mirror. For example, if you set this value to 100, then the first 100 bytes that meet the filter criteria are copied to the target. Do not specify this parameter when you want to mirror the entire packet.
  int get packetLength;

  /// The session number determines the order in which sessions are evaluated when an interface is used by multiple sessions. The first session with a matching filter is the one that mirrors the packets.
  ///
  /// Valid values are 1-32766.
  int get sessionNumber;

  /// The virtual network ID of the Traffic Mirror session.
  int get virtualNetworkId;

  /// The description to assign to the Traffic Mirror session.
  String? get description;

  /// The properties that you want to remove from the Traffic Mirror session.
  ///
  /// When you remove a property from a Traffic Mirror session, the property is set to the default.
  _i4.BuiltList<_i3.TrafficMirrorSessionField>? get removeFields;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  ModifyTrafficMirrorSessionRequest getPayload() => this;
  @override
  List<Object?> get props => [
        trafficMirrorSessionId,
        trafficMirrorTargetId,
        trafficMirrorFilterId,
        packetLength,
        sessionNumber,
        virtualNetworkId,
        description,
        removeFields,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyTrafficMirrorSessionRequest');
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
      'removeFields',
      removeFields,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class ModifyTrafficMirrorSessionRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ModifyTrafficMirrorSessionRequest> {
  const ModifyTrafficMirrorSessionRequestEc2QuerySerializer()
      : super('ModifyTrafficMirrorSessionRequest');

  @override
  Iterable<Type> get types => const [
        ModifyTrafficMirrorSessionRequest,
        _$ModifyTrafficMirrorSessionRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyTrafficMirrorSessionRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyTrafficMirrorSessionRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'TrafficMirrorSessionId':
          result.trafficMirrorSessionId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'TrafficMirrorTargetId':
          if (value != null) {
            result.trafficMirrorTargetId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'TrafficMirrorFilterId':
          if (value != null) {
            result.trafficMirrorFilterId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'PacketLength':
          result.packetLength = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'SessionNumber':
          result.sessionNumber = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'VirtualNetworkId':
          result.virtualNetworkId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'Description':
          if (value != null) {
            result.description = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'RemoveField':
          if (value != null) {
            result.removeFields.replace((const _i1.XmlBuiltListSerializer(
                    indexer: _i1.XmlIndexer.ec2QueryList)
                .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.TrafficMirrorSessionField)],
              ),
            ) as _i4.BuiltList<_i3.TrafficMirrorSessionField>));
          }
          break;
        case 'DryRun':
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
    final payload = (object as ModifyTrafficMirrorSessionRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ModifyTrafficMirrorSessionRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('TrafficMirrorSessionId'))
      ..add(serializers.serialize(
        payload.trafficMirrorSessionId,
        specifiedType: const FullType(String),
      ));
    if (payload.trafficMirrorTargetId != null) {
      result
        ..add(const _i1.XmlElementName('TrafficMirrorTargetId'))
        ..add(serializers.serialize(
          payload.trafficMirrorTargetId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.trafficMirrorFilterId != null) {
      result
        ..add(const _i1.XmlElementName('TrafficMirrorFilterId'))
        ..add(serializers.serialize(
          payload.trafficMirrorFilterId!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('PacketLength'))
      ..add(serializers.serialize(
        payload.packetLength,
        specifiedType: const FullType(int),
      ));
    result
      ..add(const _i1.XmlElementName('SessionNumber'))
      ..add(serializers.serialize(
        payload.sessionNumber,
        specifiedType: const FullType(int),
      ));
    result
      ..add(const _i1.XmlElementName('VirtualNetworkId'))
      ..add(serializers.serialize(
        payload.virtualNetworkId,
        specifiedType: const FullType(int),
      ));
    if (payload.description != null) {
      result
        ..add(const _i1.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.removeFields != null) {
      result
        ..add(const _i1.XmlElementName('RemoveField'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.ec2QueryList)
            .serialize(
          serializers,
          payload.removeFields!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.TrafficMirrorSessionField)],
          ),
        ));
    }
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
