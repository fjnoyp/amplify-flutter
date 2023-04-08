// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.instance_maintenance_options_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_auto_recovery_state.dart'
    as _i2;

part 'instance_maintenance_options_request.g.dart';

/// The maintenance options for the instance.
abstract class InstanceMaintenanceOptionsRequest
    with
        _i1.AWSEquatable<InstanceMaintenanceOptionsRequest>
    implements
        Built<InstanceMaintenanceOptionsRequest,
            InstanceMaintenanceOptionsRequestBuilder> {
  /// The maintenance options for the instance.
  factory InstanceMaintenanceOptionsRequest(
      {_i2.InstanceAutoRecoveryState? autoRecovery}) {
    return _$InstanceMaintenanceOptionsRequest._(autoRecovery: autoRecovery);
  }

  /// The maintenance options for the instance.
  factory InstanceMaintenanceOptionsRequest.build(
          [void Function(InstanceMaintenanceOptionsRequestBuilder) updates]) =
      _$InstanceMaintenanceOptionsRequest;

  const InstanceMaintenanceOptionsRequest._();

  static const List<_i3.SmithySerializer> serializers = [
    InstanceMaintenanceOptionsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InstanceMaintenanceOptionsRequestBuilder b) {}

  /// Disables the automatic recovery behavior of your instance or sets it to default. For more information, see [Simplified automatic recovery](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-recover.html#instance-configuration-recovery).
  _i2.InstanceAutoRecoveryState? get autoRecovery;
  @override
  List<Object?> get props => [autoRecovery];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('InstanceMaintenanceOptionsRequest');
    helper.add(
      'autoRecovery',
      autoRecovery,
    );
    return helper.toString();
  }
}

class InstanceMaintenanceOptionsRequestEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<InstanceMaintenanceOptionsRequest> {
  const InstanceMaintenanceOptionsRequestEc2QuerySerializer()
      : super('InstanceMaintenanceOptionsRequest');

  @override
  Iterable<Type> get types => const [
        InstanceMaintenanceOptionsRequest,
        _$InstanceMaintenanceOptionsRequest,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  InstanceMaintenanceOptionsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InstanceMaintenanceOptionsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'AutoRecovery':
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
    final payload = (object as InstanceMaintenanceOptionsRequest);
    final result = <Object?>[
      const _i3.XmlElementName(
        'InstanceMaintenanceOptionsRequestResponse',
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
