// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.modify_instance_maintenance_options_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_auto_recovery_state.dart'
    as _i3;

part 'modify_instance_maintenance_options_request.g.dart';

abstract class ModifyInstanceMaintenanceOptionsRequest
    with
        _i1.HttpInput<ModifyInstanceMaintenanceOptionsRequest>,
        _i2.AWSEquatable<ModifyInstanceMaintenanceOptionsRequest>
    implements
        Built<ModifyInstanceMaintenanceOptionsRequest,
            ModifyInstanceMaintenanceOptionsRequestBuilder> {
  factory ModifyInstanceMaintenanceOptionsRequest({
    required String instanceId,
    _i3.InstanceAutoRecoveryState? autoRecovery,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$ModifyInstanceMaintenanceOptionsRequest._(
      instanceId: instanceId,
      autoRecovery: autoRecovery,
      dryRun: dryRun,
    );
  }

  factory ModifyInstanceMaintenanceOptionsRequest.build(
      [void Function(ModifyInstanceMaintenanceOptionsRequestBuilder)
          updates]) = _$ModifyInstanceMaintenanceOptionsRequest;

  const ModifyInstanceMaintenanceOptionsRequest._();

  factory ModifyInstanceMaintenanceOptionsRequest.fromRequest(
    ModifyInstanceMaintenanceOptionsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ModifyInstanceMaintenanceOptionsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyInstanceMaintenanceOptionsRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the instance.
  String get instanceId;

  /// Disables the automatic recovery behavior of your instance or sets it to default.
  _i3.InstanceAutoRecoveryState? get autoRecovery;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  ModifyInstanceMaintenanceOptionsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        instanceId,
        autoRecovery,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyInstanceMaintenanceOptionsRequest');
    helper.add(
      'instanceId',
      instanceId,
    );
    helper.add(
      'autoRecovery',
      autoRecovery,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class ModifyInstanceMaintenanceOptionsRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<ModifyInstanceMaintenanceOptionsRequest> {
  const ModifyInstanceMaintenanceOptionsRequestEc2QuerySerializer()
      : super('ModifyInstanceMaintenanceOptionsRequest');

  @override
  Iterable<Type> get types => const [
        ModifyInstanceMaintenanceOptionsRequest,
        _$ModifyInstanceMaintenanceOptionsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyInstanceMaintenanceOptionsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyInstanceMaintenanceOptionsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'InstanceId':
          result.instanceId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'AutoRecovery':
          if (value != null) {
            result.autoRecovery = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.InstanceAutoRecoveryState),
            ) as _i3.InstanceAutoRecoveryState);
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
    final payload = (object as ModifyInstanceMaintenanceOptionsRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ModifyInstanceMaintenanceOptionsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('InstanceId'))
      ..add(serializers.serialize(
        payload.instanceId,
        specifiedType: const FullType(String),
      ));
    if (payload.autoRecovery != null) {
      result
        ..add(const _i1.XmlElementName('AutoRecovery'))
        ..add(serializers.serialize(
          payload.autoRecovery!,
          specifiedType: const FullType.nullable(_i3.InstanceAutoRecoveryState),
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
