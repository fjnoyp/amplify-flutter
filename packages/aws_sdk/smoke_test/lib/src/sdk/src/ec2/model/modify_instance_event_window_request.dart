// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.modify_instance_event_window_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_event_window_time_range_request.dart'
    as _i3;

part 'modify_instance_event_window_request.g.dart';

abstract class ModifyInstanceEventWindowRequest
    with
        _i1.HttpInput<ModifyInstanceEventWindowRequest>,
        _i2.AWSEquatable<ModifyInstanceEventWindowRequest>
    implements
        Built<ModifyInstanceEventWindowRequest,
            ModifyInstanceEventWindowRequestBuilder> {
  factory ModifyInstanceEventWindowRequest({
    bool? dryRun,
    String? name,
    required String instanceEventWindowId,
    List<_i3.InstanceEventWindowTimeRangeRequest>? timeRanges,
    String? cronExpression,
  }) {
    dryRun ??= false;
    return _$ModifyInstanceEventWindowRequest._(
      dryRun: dryRun,
      name: name,
      instanceEventWindowId: instanceEventWindowId,
      timeRanges: timeRanges == null ? null : _i4.BuiltList(timeRanges),
      cronExpression: cronExpression,
    );
  }

  factory ModifyInstanceEventWindowRequest.build(
          [void Function(ModifyInstanceEventWindowRequestBuilder) updates]) =
      _$ModifyInstanceEventWindowRequest;

  const ModifyInstanceEventWindowRequest._();

  factory ModifyInstanceEventWindowRequest.fromRequest(
    ModifyInstanceEventWindowRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ModifyInstanceEventWindowRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyInstanceEventWindowRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The name of the event window.
  String? get name;

  /// The ID of the event window.
  String get instanceEventWindowId;

  /// The time ranges of the event window.
  _i4.BuiltList<_i3.InstanceEventWindowTimeRangeRequest>? get timeRanges;

  /// The cron expression of the event window, for example, `* 0-4,20-23 * * 1,5`.
  ///
  /// Constraints:
  ///
  /// *   Only hour and day of the week values are supported.
  ///
  /// *   For day of the week values, you can specify either integers `0` through `6`, or alternative single values `SUN` through `SAT`.
  ///
  /// *   The minute, month, and year must be specified by `*`.
  ///
  /// *   The hour value must be one or a multiple range, for example, `0-4` or `0-4,20-23`.
  ///
  /// *   Each hour range must be >= 2 hours, for example, `0-2` or `20-23`.
  ///
  /// *   The event window must be >= 4 hours. The combined total time ranges in the event window must be >= 4 hours.
  ///
  ///
  /// For more information about cron expressions, see [cron](https://en.wikipedia.org/wiki/Cron) on the _Wikipedia website_.
  String? get cronExpression;
  @override
  ModifyInstanceEventWindowRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        name,
        instanceEventWindowId,
        timeRanges,
        cronExpression,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyInstanceEventWindowRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'name',
      name,
    );
    helper.add(
      'instanceEventWindowId',
      instanceEventWindowId,
    );
    helper.add(
      'timeRanges',
      timeRanges,
    );
    helper.add(
      'cronExpression',
      cronExpression,
    );
    return helper.toString();
  }
}

class ModifyInstanceEventWindowRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ModifyInstanceEventWindowRequest> {
  const ModifyInstanceEventWindowRequestEc2QuerySerializer()
      : super('ModifyInstanceEventWindowRequest');

  @override
  Iterable<Type> get types => const [
        ModifyInstanceEventWindowRequest,
        _$ModifyInstanceEventWindowRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyInstanceEventWindowRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyInstanceEventWindowRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'Name':
          if (value != null) {
            result.name = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'InstanceEventWindowId':
          result.instanceEventWindowId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'TimeRange':
          if (value != null) {
            result.timeRanges.replace((const _i1.XmlBuiltListSerializer(
                    indexer: _i1.XmlIndexer.ec2QueryList)
                .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.InstanceEventWindowTimeRangeRequest)],
              ),
            ) as _i4.BuiltList<_i3.InstanceEventWindowTimeRangeRequest>));
          }
          break;
        case 'CronExpression':
          if (value != null) {
            result.cronExpression = (serializers.deserialize(
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
    final payload = (object as ModifyInstanceEventWindowRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ModifyInstanceEventWindowRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    if (payload.name != null) {
      result
        ..add(const _i1.XmlElementName('Name'))
        ..add(serializers.serialize(
          payload.name!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('InstanceEventWindowId'))
      ..add(serializers.serialize(
        payload.instanceEventWindowId,
        specifiedType: const FullType(String),
      ));
    if (payload.timeRanges != null) {
      result
        ..add(const _i1.XmlElementName('TimeRange'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.ec2QueryList)
            .serialize(
          serializers,
          payload.timeRanges!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.InstanceEventWindowTimeRangeRequest)],
          ),
        ));
    }
    if (payload.cronExpression != null) {
      result
        ..add(const _i1.XmlElementName('CronExpression'))
        ..add(serializers.serialize(
          payload.cronExpression!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
