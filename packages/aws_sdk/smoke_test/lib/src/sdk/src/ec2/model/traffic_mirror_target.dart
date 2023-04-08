// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.traffic_mirror_target; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_mirror_target_type.dart'
    as _i2;

part 'traffic_mirror_target.g.dart';

/// Describes a Traffic Mirror target.
abstract class TrafficMirrorTarget
    with _i1.AWSEquatable<TrafficMirrorTarget>
    implements Built<TrafficMirrorTarget, TrafficMirrorTargetBuilder> {
  /// Describes a Traffic Mirror target.
  factory TrafficMirrorTarget({
    String? trafficMirrorTargetId,
    String? networkInterfaceId,
    String? networkLoadBalancerArn,
    _i2.TrafficMirrorTargetType? type,
    String? description,
    String? ownerId,
    List<_i3.Tag>? tags,
    String? gatewayLoadBalancerEndpointId,
  }) {
    return _$TrafficMirrorTarget._(
      trafficMirrorTargetId: trafficMirrorTargetId,
      networkInterfaceId: networkInterfaceId,
      networkLoadBalancerArn: networkLoadBalancerArn,
      type: type,
      description: description,
      ownerId: ownerId,
      tags: tags == null ? null : _i4.BuiltList(tags),
      gatewayLoadBalancerEndpointId: gatewayLoadBalancerEndpointId,
    );
  }

  /// Describes a Traffic Mirror target.
  factory TrafficMirrorTarget.build(
          [void Function(TrafficMirrorTargetBuilder) updates]) =
      _$TrafficMirrorTarget;

  const TrafficMirrorTarget._();

  static const List<_i5.SmithySerializer> serializers = [
    TrafficMirrorTargetEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TrafficMirrorTargetBuilder b) {}

  /// The ID of the Traffic Mirror target.
  String? get trafficMirrorTargetId;

  /// The network interface ID that is attached to the target.
  String? get networkInterfaceId;

  /// The Amazon Resource Name (ARN) of the Network Load Balancer.
  String? get networkLoadBalancerArn;

  /// The type of Traffic Mirror target.
  _i2.TrafficMirrorTargetType? get type;

  /// Information about the Traffic Mirror target.
  String? get description;

  /// The ID of the account that owns the Traffic Mirror target.
  String? get ownerId;

  /// The tags assigned to the Traffic Mirror target.
  _i4.BuiltList<_i3.Tag>? get tags;

  /// The ID of the Gateway Load Balancer endpoint.
  String? get gatewayLoadBalancerEndpointId;
  @override
  List<Object?> get props => [
        trafficMirrorTargetId,
        networkInterfaceId,
        networkLoadBalancerArn,
        type,
        description,
        ownerId,
        tags,
        gatewayLoadBalancerEndpointId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TrafficMirrorTarget');
    helper.add(
      'trafficMirrorTargetId',
      trafficMirrorTargetId,
    );
    helper.add(
      'networkInterfaceId',
      networkInterfaceId,
    );
    helper.add(
      'networkLoadBalancerArn',
      networkLoadBalancerArn,
    );
    helper.add(
      'type',
      type,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'ownerId',
      ownerId,
    );
    helper.add(
      'tags',
      tags,
    );
    helper.add(
      'gatewayLoadBalancerEndpointId',
      gatewayLoadBalancerEndpointId,
    );
    return helper.toString();
  }
}

class TrafficMirrorTargetEc2QuerySerializer
    extends _i5.StructuredSmithySerializer<TrafficMirrorTarget> {
  const TrafficMirrorTargetEc2QuerySerializer() : super('TrafficMirrorTarget');

  @override
  Iterable<Type> get types => const [
        TrafficMirrorTarget,
        _$TrafficMirrorTarget,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TrafficMirrorTarget deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TrafficMirrorTargetBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'trafficMirrorTargetId':
          if (value != null) {
            result.trafficMirrorTargetId = (serializers.deserialize(
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
        case 'networkLoadBalancerArn':
          if (value != null) {
            result.networkLoadBalancerArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'type':
          if (value != null) {
            result.type = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.TrafficMirrorTargetType),
            ) as _i2.TrafficMirrorTargetType);
          }
          break;
        case 'description':
          if (value != null) {
            result.description = (serializers.deserialize(
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
        case 'tagSet':
          if (value != null) {
            result.tags.replace((const _i5.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i5.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.Tag)],
              ),
            ) as _i4.BuiltList<_i3.Tag>));
          }
          break;
        case 'gatewayLoadBalancerEndpointId':
          if (value != null) {
            result.gatewayLoadBalancerEndpointId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as TrafficMirrorTarget);
    final result = <Object?>[
      const _i5.XmlElementName(
        'TrafficMirrorTargetResponse',
        _i5.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.trafficMirrorTargetId != null) {
      result
        ..add(const _i5.XmlElementName('TrafficMirrorTargetId'))
        ..add(serializers.serialize(
          payload.trafficMirrorTargetId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.networkInterfaceId != null) {
      result
        ..add(const _i5.XmlElementName('NetworkInterfaceId'))
        ..add(serializers.serialize(
          payload.networkInterfaceId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.networkLoadBalancerArn != null) {
      result
        ..add(const _i5.XmlElementName('NetworkLoadBalancerArn'))
        ..add(serializers.serialize(
          payload.networkLoadBalancerArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.type != null) {
      result
        ..add(const _i5.XmlElementName('Type'))
        ..add(serializers.serialize(
          payload.type!,
          specifiedType: const FullType.nullable(_i2.TrafficMirrorTargetType),
        ));
    }
    if (payload.description != null) {
      result
        ..add(const _i5.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.ownerId != null) {
      result
        ..add(const _i5.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          payload.ownerId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.tags != null) {
      result
        ..add(const _i5.XmlElementName('TagSet'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tags!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.Tag)],
          ),
        ));
    }
    if (payload.gatewayLoadBalancerEndpointId != null) {
      result
        ..add(const _i5.XmlElementName('GatewayLoadBalancerEndpointId'))
        ..add(serializers.serialize(
          payload.gatewayLoadBalancerEndpointId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
