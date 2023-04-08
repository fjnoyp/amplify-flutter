// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.traffic_mirror_filter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_mirror_filter_rule.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_mirror_network_service.dart'
    as _i3;

part 'traffic_mirror_filter.g.dart';

/// Describes the Traffic Mirror filter.
abstract class TrafficMirrorFilter
    with _i1.AWSEquatable<TrafficMirrorFilter>
    implements Built<TrafficMirrorFilter, TrafficMirrorFilterBuilder> {
  /// Describes the Traffic Mirror filter.
  factory TrafficMirrorFilter({
    String? trafficMirrorFilterId,
    List<_i2.TrafficMirrorFilterRule>? ingressFilterRules,
    List<_i2.TrafficMirrorFilterRule>? egressFilterRules,
    List<_i3.TrafficMirrorNetworkService>? networkServices,
    String? description,
    List<_i4.Tag>? tags,
  }) {
    return _$TrafficMirrorFilter._(
      trafficMirrorFilterId: trafficMirrorFilterId,
      ingressFilterRules:
          ingressFilterRules == null ? null : _i5.BuiltList(ingressFilterRules),
      egressFilterRules:
          egressFilterRules == null ? null : _i5.BuiltList(egressFilterRules),
      networkServices:
          networkServices == null ? null : _i5.BuiltList(networkServices),
      description: description,
      tags: tags == null ? null : _i5.BuiltList(tags),
    );
  }

  /// Describes the Traffic Mirror filter.
  factory TrafficMirrorFilter.build(
          [void Function(TrafficMirrorFilterBuilder) updates]) =
      _$TrafficMirrorFilter;

  const TrafficMirrorFilter._();

  static const List<_i6.SmithySerializer> serializers = [
    TrafficMirrorFilterEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TrafficMirrorFilterBuilder b) {}

  /// The ID of the Traffic Mirror filter.
  String? get trafficMirrorFilterId;

  /// Information about the ingress rules that are associated with the Traffic Mirror filter.
  _i5.BuiltList<_i2.TrafficMirrorFilterRule>? get ingressFilterRules;

  /// Information about the egress rules that are associated with the Traffic Mirror filter.
  _i5.BuiltList<_i2.TrafficMirrorFilterRule>? get egressFilterRules;

  /// The network service traffic that is associated with the Traffic Mirror filter.
  _i5.BuiltList<_i3.TrafficMirrorNetworkService>? get networkServices;

  /// The description of the Traffic Mirror filter.
  String? get description;

  /// The tags assigned to the Traffic Mirror filter.
  _i5.BuiltList<_i4.Tag>? get tags;
  @override
  List<Object?> get props => [
        trafficMirrorFilterId,
        ingressFilterRules,
        egressFilterRules,
        networkServices,
        description,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TrafficMirrorFilter');
    helper.add(
      'trafficMirrorFilterId',
      trafficMirrorFilterId,
    );
    helper.add(
      'ingressFilterRules',
      ingressFilterRules,
    );
    helper.add(
      'egressFilterRules',
      egressFilterRules,
    );
    helper.add(
      'networkServices',
      networkServices,
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

class TrafficMirrorFilterEc2QuerySerializer
    extends _i6.StructuredSmithySerializer<TrafficMirrorFilter> {
  const TrafficMirrorFilterEc2QuerySerializer() : super('TrafficMirrorFilter');

  @override
  Iterable<Type> get types => const [
        TrafficMirrorFilter,
        _$TrafficMirrorFilter,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TrafficMirrorFilter deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TrafficMirrorFilterBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'trafficMirrorFilterId':
          if (value != null) {
            result.trafficMirrorFilterId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ingressFilterRuleSet':
          if (value != null) {
            result.ingressFilterRules.replace((const _i6.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i6.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(_i2.TrafficMirrorFilterRule)],
              ),
            ) as _i5.BuiltList<_i2.TrafficMirrorFilterRule>));
          }
          break;
        case 'egressFilterRuleSet':
          if (value != null) {
            result.egressFilterRules.replace((const _i6.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i6.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(_i2.TrafficMirrorFilterRule)],
              ),
            ) as _i5.BuiltList<_i2.TrafficMirrorFilterRule>));
          }
          break;
        case 'networkServiceSet':
          if (value != null) {
            result.networkServices.replace((const _i6.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i6.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(_i3.TrafficMirrorNetworkService)],
              ),
            ) as _i5.BuiltList<_i3.TrafficMirrorNetworkService>));
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
        case 'tagSet':
          if (value != null) {
            result.tags.replace((const _i6.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i6.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(_i4.Tag)],
              ),
            ) as _i5.BuiltList<_i4.Tag>));
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
    final payload = (object as TrafficMirrorFilter);
    final result = <Object?>[
      const _i6.XmlElementName(
        'TrafficMirrorFilterResponse',
        _i6.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.trafficMirrorFilterId != null) {
      result
        ..add(const _i6.XmlElementName('TrafficMirrorFilterId'))
        ..add(serializers.serialize(
          payload.trafficMirrorFilterId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.ingressFilterRules != null) {
      result
        ..add(const _i6.XmlElementName('IngressFilterRuleSet'))
        ..add(const _i6.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i6.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.ingressFilterRules!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i2.TrafficMirrorFilterRule)],
          ),
        ));
    }
    if (payload.egressFilterRules != null) {
      result
        ..add(const _i6.XmlElementName('EgressFilterRuleSet'))
        ..add(const _i6.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i6.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.egressFilterRules!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i2.TrafficMirrorFilterRule)],
          ),
        ));
    }
    if (payload.networkServices != null) {
      result
        ..add(const _i6.XmlElementName('NetworkServiceSet'))
        ..add(const _i6.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i6.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.networkServices!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i3.TrafficMirrorNetworkService)],
          ),
        ));
    }
    if (payload.description != null) {
      result
        ..add(const _i6.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.tags != null) {
      result
        ..add(const _i6.XmlElementName('TagSet'))
        ..add(const _i6.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i6.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tags!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i4.Tag)],
          ),
        ));
    }
    return result;
  }
}
