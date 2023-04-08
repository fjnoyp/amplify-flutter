// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.instance_state_change; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_state.dart' as _i2;

part 'instance_state_change.g.dart';

/// Describes an instance state change.
abstract class InstanceStateChange
    with _i1.AWSEquatable<InstanceStateChange>
    implements Built<InstanceStateChange, InstanceStateChangeBuilder> {
  /// Describes an instance state change.
  factory InstanceStateChange({
    _i2.InstanceState? currentState,
    String? instanceId,
    _i2.InstanceState? previousState,
  }) {
    return _$InstanceStateChange._(
      currentState: currentState,
      instanceId: instanceId,
      previousState: previousState,
    );
  }

  /// Describes an instance state change.
  factory InstanceStateChange.build(
          [void Function(InstanceStateChangeBuilder) updates]) =
      _$InstanceStateChange;

  const InstanceStateChange._();

  static const List<_i3.SmithySerializer> serializers = [
    InstanceStateChangeEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InstanceStateChangeBuilder b) {}

  /// The current state of the instance.
  _i2.InstanceState? get currentState;

  /// The ID of the instance.
  String? get instanceId;

  /// The previous state of the instance.
  _i2.InstanceState? get previousState;
  @override
  List<Object?> get props => [
        currentState,
        instanceId,
        previousState,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InstanceStateChange');
    helper.add(
      'currentState',
      currentState,
    );
    helper.add(
      'instanceId',
      instanceId,
    );
    helper.add(
      'previousState',
      previousState,
    );
    return helper.toString();
  }
}

class InstanceStateChangeEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<InstanceStateChange> {
  const InstanceStateChangeEc2QuerySerializer() : super('InstanceStateChange');

  @override
  Iterable<Type> get types => const [
        InstanceStateChange,
        _$InstanceStateChange,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceStateChange deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceStateChangeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'currentState':
          if (value != null) {
            result.currentState.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.InstanceState),
            ) as _i2.InstanceState));
          }
          break;
        case 'instanceId':
          if (value != null) {
            result.instanceId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'previousState':
          if (value != null) {
            result.previousState.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.InstanceState),
            ) as _i2.InstanceState));
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
    final payload = (object as InstanceStateChange);
    final result = <Object?>[
      const _i3.XmlElementName(
        'InstanceStateChangeResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.currentState != null) {
      result
        ..add(const _i3.XmlElementName('CurrentState'))
        ..add(serializers.serialize(
          payload.currentState!,
          specifiedType: const FullType(_i2.InstanceState),
        ));
    }
    if (payload.instanceId != null) {
      result
        ..add(const _i3.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          payload.instanceId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.previousState != null) {
      result
        ..add(const _i3.XmlElementName('PreviousState'))
        ..add(serializers.serialize(
          payload.previousState!,
          specifiedType: const FullType(_i2.InstanceState),
        ));
    }
    return result;
  }
}
