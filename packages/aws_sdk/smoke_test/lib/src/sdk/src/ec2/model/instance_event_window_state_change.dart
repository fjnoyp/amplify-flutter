// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.instance_event_window_state_change; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_event_window_state.dart'
    as _i2;

part 'instance_event_window_state_change.g.dart';

/// The state of the event window.
abstract class InstanceEventWindowStateChange
    with
        _i1.AWSEquatable<InstanceEventWindowStateChange>
    implements
        Built<InstanceEventWindowStateChange,
            InstanceEventWindowStateChangeBuilder> {
  /// The state of the event window.
  factory InstanceEventWindowStateChange({
    String? instanceEventWindowId,
    _i2.InstanceEventWindowState? state,
  }) {
    return _$InstanceEventWindowStateChange._(
      instanceEventWindowId: instanceEventWindowId,
      state: state,
    );
  }

  /// The state of the event window.
  factory InstanceEventWindowStateChange.build(
          [void Function(InstanceEventWindowStateChangeBuilder) updates]) =
      _$InstanceEventWindowStateChange;

  const InstanceEventWindowStateChange._();

  static const List<_i3.SmithySerializer> serializers = [
    InstanceEventWindowStateChangeEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InstanceEventWindowStateChangeBuilder b) {}

  /// The ID of the event window.
  String? get instanceEventWindowId;

  /// The current state of the event window.
  _i2.InstanceEventWindowState? get state;
  @override
  List<Object?> get props => [
        instanceEventWindowId,
        state,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('InstanceEventWindowStateChange');
    helper.add(
      'instanceEventWindowId',
      instanceEventWindowId,
    );
    helper.add(
      'state',
      state,
    );
    return helper.toString();
  }
}

class InstanceEventWindowStateChangeEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<InstanceEventWindowStateChange> {
  const InstanceEventWindowStateChangeEc2QuerySerializer()
      : super('InstanceEventWindowStateChange');

  @override
  Iterable<Type> get types => const [
        InstanceEventWindowStateChange,
        _$InstanceEventWindowStateChange,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceEventWindowStateChange deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceEventWindowStateChangeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'instanceEventWindowId':
          if (value != null) {
            result.instanceEventWindowId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'state':
          if (value != null) {
            result.state = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.InstanceEventWindowState),
            ) as _i2.InstanceEventWindowState);
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
    final payload = (object as InstanceEventWindowStateChange);
    final result = <Object?>[
      const _i3.XmlElementName(
        'InstanceEventWindowStateChangeResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.instanceEventWindowId != null) {
      result
        ..add(const _i3.XmlElementName('InstanceEventWindowId'))
        ..add(serializers.serialize(
          payload.instanceEventWindowId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.state != null) {
      result
        ..add(const _i3.XmlElementName('State'))
        ..add(serializers.serialize(
          payload.state!,
          specifiedType: const FullType.nullable(_i2.InstanceEventWindowState),
        ));
    }
    return result;
  }
}
