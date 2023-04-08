// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.launch_template_instance_maintenance_options_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_auto_recovery_state.dart'
    as _i2;

part 'launch_template_instance_maintenance_options_request.g.dart';

/// The maintenance options of your instance.
abstract class LaunchTemplateInstanceMaintenanceOptionsRequest
    with
        _i1.AWSEquatable<LaunchTemplateInstanceMaintenanceOptionsRequest>
    implements
        Built<LaunchTemplateInstanceMaintenanceOptionsRequest,
            LaunchTemplateInstanceMaintenanceOptionsRequestBuilder> {
  /// The maintenance options of your instance.
  factory LaunchTemplateInstanceMaintenanceOptionsRequest(
      {_i2.LaunchTemplateAutoRecoveryState? autoRecovery}) {
    return _$LaunchTemplateInstanceMaintenanceOptionsRequest._(
        autoRecovery: autoRecovery);
  }

  /// The maintenance options of your instance.
  factory LaunchTemplateInstanceMaintenanceOptionsRequest.build(
      [void Function(LaunchTemplateInstanceMaintenanceOptionsRequestBuilder)
          updates]) = _$LaunchTemplateInstanceMaintenanceOptionsRequest;

  const LaunchTemplateInstanceMaintenanceOptionsRequest._();

  static const List<_i3.SmithySerializer> serializers = [
    LaunchTemplateInstanceMaintenanceOptionsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LaunchTemplateInstanceMaintenanceOptionsRequestBuilder b) {}

  /// Disables the automatic recovery behavior of your instance or sets it to default. For more information, see [Simplified automatic recovery](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-recover.html#instance-configuration-recovery).
  _i2.LaunchTemplateAutoRecoveryState? get autoRecovery;
  @override
  List<Object?> get props => [autoRecovery];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'LaunchTemplateInstanceMaintenanceOptionsRequest');
    helper.add(
      'autoRecovery',
      autoRecovery,
    );
    return helper.toString();
  }
}

class LaunchTemplateInstanceMaintenanceOptionsRequestEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<
        LaunchTemplateInstanceMaintenanceOptionsRequest> {
  const LaunchTemplateInstanceMaintenanceOptionsRequestEc2QuerySerializer()
      : super('LaunchTemplateInstanceMaintenanceOptionsRequest');

  @override
  Iterable<Type> get types => const [
        LaunchTemplateInstanceMaintenanceOptionsRequest,
        _$LaunchTemplateInstanceMaintenanceOptionsRequest,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplateInstanceMaintenanceOptionsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchTemplateInstanceMaintenanceOptionsRequestBuilder();
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
              specifiedType:
                  const FullType(_i2.LaunchTemplateAutoRecoveryState),
            ) as _i2.LaunchTemplateAutoRecoveryState);
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
    final payload = (object as LaunchTemplateInstanceMaintenanceOptionsRequest);
    final result = <Object?>[
      const _i3.XmlElementName(
        'LaunchTemplateInstanceMaintenanceOptionsRequestResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.autoRecovery != null) {
      result
        ..add(const _i3.XmlElementName('AutoRecovery'))
        ..add(serializers.serialize(
          payload.autoRecovery!,
          specifiedType:
              const FullType.nullable(_i2.LaunchTemplateAutoRecoveryState),
        ));
    }
    return result;
  }
}
