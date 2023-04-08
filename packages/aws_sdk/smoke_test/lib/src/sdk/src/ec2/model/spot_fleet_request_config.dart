// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.spot_fleet_request_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i7;
import 'package:smoke_test/src/sdk/src/ec2/model/activity_status.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/batch_state.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/spot_fleet_request_config_data.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i5;

part 'spot_fleet_request_config.g.dart';

/// Describes a Spot Fleet request.
abstract class SpotFleetRequestConfig
    with _i1.AWSEquatable<SpotFleetRequestConfig>
    implements Built<SpotFleetRequestConfig, SpotFleetRequestConfigBuilder> {
  /// Describes a Spot Fleet request.
  factory SpotFleetRequestConfig({
    _i2.ActivityStatus? activityStatus,
    DateTime? createTime,
    _i3.SpotFleetRequestConfigData? spotFleetRequestConfig,
    String? spotFleetRequestId,
    _i4.BatchState? spotFleetRequestState,
    List<_i5.Tag>? tags,
  }) {
    return _$SpotFleetRequestConfig._(
      activityStatus: activityStatus,
      createTime: createTime,
      spotFleetRequestConfig: spotFleetRequestConfig,
      spotFleetRequestId: spotFleetRequestId,
      spotFleetRequestState: spotFleetRequestState,
      tags: tags == null ? null : _i6.BuiltList(tags),
    );
  }

  /// Describes a Spot Fleet request.
  factory SpotFleetRequestConfig.build(
          [void Function(SpotFleetRequestConfigBuilder) updates]) =
      _$SpotFleetRequestConfig;

  const SpotFleetRequestConfig._();

  static const List<_i7.SmithySerializer> serializers = [
    SpotFleetRequestConfigEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SpotFleetRequestConfigBuilder b) {}

  /// The progress of the Spot Fleet request. If there is an error, the status is `error`. After all requests are placed, the status is `pending_fulfillment`. If the size of the fleet is equal to or greater than its target capacity, the status is `fulfilled`. If the size of the fleet is decreased, the status is `pending_termination` while Spot Instances are terminating.
  _i2.ActivityStatus? get activityStatus;

  /// The creation date and time of the request.
  DateTime? get createTime;

  /// The configuration of the Spot Fleet request.
  _i3.SpotFleetRequestConfigData? get spotFleetRequestConfig;

  /// The ID of the Spot Fleet request.
  String? get spotFleetRequestId;

  /// The state of the Spot Fleet request.
  _i4.BatchState? get spotFleetRequestState;

  /// The tags for a Spot Fleet resource.
  _i6.BuiltList<_i5.Tag>? get tags;
  @override
  List<Object?> get props => [
        activityStatus,
        createTime,
        spotFleetRequestConfig,
        spotFleetRequestId,
        spotFleetRequestState,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SpotFleetRequestConfig');
    helper.add(
      'activityStatus',
      activityStatus,
    );
    helper.add(
      'createTime',
      createTime,
    );
    helper.add(
      'spotFleetRequestConfig',
      spotFleetRequestConfig,
    );
    helper.add(
      'spotFleetRequestId',
      spotFleetRequestId,
    );
    helper.add(
      'spotFleetRequestState',
      spotFleetRequestState,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class SpotFleetRequestConfigEc2QuerySerializer
    extends _i7.StructuredSmithySerializer<SpotFleetRequestConfig> {
  const SpotFleetRequestConfigEc2QuerySerializer()
      : super('SpotFleetRequestConfig');

  @override
  Iterable<Type> get types => const [
        SpotFleetRequestConfig,
        _$SpotFleetRequestConfig,
      ];
  @override
  Iterable<_i7.ShapeId> get supportedProtocols => const [
        _i7.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SpotFleetRequestConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SpotFleetRequestConfigBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'activityStatus':
          if (value != null) {
            result.activityStatus = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ActivityStatus),
            ) as _i2.ActivityStatus);
          }
          break;
        case 'createTime':
          if (value != null) {
            result.createTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'spotFleetRequestConfig':
          if (value != null) {
            result.spotFleetRequestConfig.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.SpotFleetRequestConfigData),
            ) as _i3.SpotFleetRequestConfigData));
          }
          break;
        case 'spotFleetRequestId':
          if (value != null) {
            result.spotFleetRequestId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'spotFleetRequestState':
          if (value != null) {
            result.spotFleetRequestState = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.BatchState),
            ) as _i4.BatchState);
          }
          break;
        case 'tagSet':
          if (value != null) {
            result.tags.replace((const _i7.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i7.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(_i5.Tag)],
              ),
            ) as _i6.BuiltList<_i5.Tag>));
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
    final payload = (object as SpotFleetRequestConfig);
    final result = <Object?>[
      const _i7.XmlElementName(
        'SpotFleetRequestConfigResponse',
        _i7.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.activityStatus != null) {
      result
        ..add(const _i7.XmlElementName('ActivityStatus'))
        ..add(serializers.serialize(
          payload.activityStatus!,
          specifiedType: const FullType.nullable(_i2.ActivityStatus),
        ));
    }
    if (payload.createTime != null) {
      result
        ..add(const _i7.XmlElementName('CreateTime'))
        ..add(serializers.serialize(
          payload.createTime!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.spotFleetRequestConfig != null) {
      result
        ..add(const _i7.XmlElementName('SpotFleetRequestConfig'))
        ..add(serializers.serialize(
          payload.spotFleetRequestConfig!,
          specifiedType: const FullType(_i3.SpotFleetRequestConfigData),
        ));
    }
    if (payload.spotFleetRequestId != null) {
      result
        ..add(const _i7.XmlElementName('SpotFleetRequestId'))
        ..add(serializers.serialize(
          payload.spotFleetRequestId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.spotFleetRequestState != null) {
      result
        ..add(const _i7.XmlElementName('SpotFleetRequestState'))
        ..add(serializers.serialize(
          payload.spotFleetRequestState!,
          specifiedType: const FullType.nullable(_i4.BatchState),
        ));
    }
    if (payload.tags != null) {
      result
        ..add(const _i7.XmlElementName('TagSet'))
        ..add(const _i7.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i7.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tags!,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(_i5.Tag)],
          ),
        ));
    }
    return result;
  }
}
