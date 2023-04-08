// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.instance_maintenance_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_auto_recovery_state.dart'
    as _i2;

part 'instance_maintenance_options.g.dart';

/// The maintenance options for the instance.
abstract class InstanceMaintenanceOptions
    with _i1.AWSEquatable<InstanceMaintenanceOptions>
    implements
        Built<InstanceMaintenanceOptions, InstanceMaintenanceOptionsBuilder> {
  /// The maintenance options for the instance.
  factory InstanceMaintenanceOptions(
      {_i2.InstanceAutoRecoveryState? autoRecovery}) {
    return _$InstanceMaintenanceOptions._(autoRecovery: autoRecovery);
  }

  /// The maintenance options for the instance.
  factory InstanceMaintenanceOptions.build(
          [void Function(InstanceMaintenanceOptionsBuilder) updates]) =
      _$InstanceMaintenanceOptions;

  const InstanceMaintenanceOptions._();

  static const List<_i3.SmithySerializer> serializers = [
    InstanceMaintenanceOptionsEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InstanceMaintenanceOptionsBuilder b) {}

  /// Provides information on the current automatic recovery behavior of your instance.
  _i2.InstanceAutoRecoveryState? get autoRecovery;
  @override
  List<Object?> get props => [autoRecovery];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InstanceMaintenanceOptions');
    helper.add(
      'autoRecovery',
      autoRecovery,
    );
    return helper.toString();
  }
}

class InstanceMaintenanceOptionsEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<InstanceMaintenanceOptions> {
  const InstanceMaintenanceOptionsEc2QuerySerializer()
      : super('InstanceMaintenanceOptions');

  @override
  Iterable<Type> get types => const [
        InstanceMaintenanceOptions,
        _$InstanceMaintenanceOptions,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceMaintenanceOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceMaintenanceOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'autoRecovery':
          if (value != null) {
            result.autoRecovery = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.InstanceAutoRecoveryState),
            ) as _i2.InstanceAutoRecoveryState);
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
    final payload = (object as InstanceMaintenanceOptions);
    final result = <Object?>[
      const _i3.XmlElementName(
        'InstanceMaintenanceOptionsResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.autoRecovery != null) {
      result
        ..add(const _i3.XmlElementName('AutoRecovery'))
        ..add(serializers.serialize(
          payload.autoRecovery!,
          specifiedType: const FullType.nullable(_i2.InstanceAutoRecoveryState),
        ));
    }
    return result;
  }
}
