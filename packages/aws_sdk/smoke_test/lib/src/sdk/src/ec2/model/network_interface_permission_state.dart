// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.network_interface_permission_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_permission_state_code.dart'
    as _i2;

part 'network_interface_permission_state.g.dart';

/// Describes the state of a network interface permission.
abstract class NetworkInterfacePermissionState
    with
        _i1.AWSEquatable<NetworkInterfacePermissionState>
    implements
        Built<NetworkInterfacePermissionState,
            NetworkInterfacePermissionStateBuilder> {
  /// Describes the state of a network interface permission.
  factory NetworkInterfacePermissionState({
    _i2.NetworkInterfacePermissionStateCode? state,
    String? statusMessage,
  }) {
    return _$NetworkInterfacePermissionState._(
      state: state,
      statusMessage: statusMessage,
    );
  }

  /// Describes the state of a network interface permission.
  factory NetworkInterfacePermissionState.build(
          [void Function(NetworkInterfacePermissionStateBuilder) updates]) =
      _$NetworkInterfacePermissionState;

  const NetworkInterfacePermissionState._();

  static const List<_i3.SmithySerializer> serializers = [
    NetworkInterfacePermissionStateEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NetworkInterfacePermissionStateBuilder b) {}

  /// The state of the permission.
  _i2.NetworkInterfacePermissionStateCode? get state;

  /// A status message, if applicable.
  String? get statusMessage;
  @override
  List<Object?> get props => [
        state,
        statusMessage,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('NetworkInterfacePermissionState');
    helper.add(
      'state',
      state,
    );
    helper.add(
      'statusMessage',
      statusMessage,
    );
    return helper.toString();
  }
}

class NetworkInterfacePermissionStateEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<NetworkInterfacePermissionState> {
  const NetworkInterfacePermissionStateEc2QuerySerializer()
      : super('NetworkInterfacePermissionState');

  @override
  Iterable<Type> get types => const [
        NetworkInterfacePermissionState,
        _$NetworkInterfacePermissionState,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  NetworkInterfacePermissionState deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NetworkInterfacePermissionStateBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'state':
          if (value != null) {
            result.state = (serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i2.NetworkInterfacePermissionStateCode),
            ) as _i2.NetworkInterfacePermissionStateCode);
          }
          break;
        case 'statusMessage':
          if (value != null) {
            result.statusMessage = (serializers.deserialize(
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
    final payload = (object as NetworkInterfacePermissionState);
    final result = <Object?>[
      const _i3.XmlElementName(
        'NetworkInterfacePermissionStateResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.state != null) {
      result
        ..add(const _i3.XmlElementName('State'))
        ..add(serializers.serialize(
          payload.state!,
          specifiedType:
              const FullType.nullable(_i2.NetworkInterfacePermissionStateCode),
        ));
    }
    if (payload.statusMessage != null) {
      result
        ..add(const _i3.XmlElementName('StatusMessage'))
        ..add(serializers.serialize(
          payload.statusMessage!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
