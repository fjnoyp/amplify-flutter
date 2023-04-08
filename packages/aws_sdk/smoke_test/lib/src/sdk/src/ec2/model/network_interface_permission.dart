// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.network_interface_permission; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/interface_permission_type.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_permission_state.dart'
    as _i3;

part 'network_interface_permission.g.dart';

/// Describes a permission for a network interface.
abstract class NetworkInterfacePermission
    with _i1.AWSEquatable<NetworkInterfacePermission>
    implements
        Built<NetworkInterfacePermission, NetworkInterfacePermissionBuilder> {
  /// Describes a permission for a network interface.
  factory NetworkInterfacePermission({
    String? networkInterfacePermissionId,
    String? networkInterfaceId,
    String? awsAccountId,
    String? awsService,
    _i2.InterfacePermissionType? permission,
    _i3.NetworkInterfacePermissionState? permissionState,
  }) {
    return _$NetworkInterfacePermission._(
      networkInterfacePermissionId: networkInterfacePermissionId,
      networkInterfaceId: networkInterfaceId,
      awsAccountId: awsAccountId,
      awsService: awsService,
      permission: permission,
      permissionState: permissionState,
    );
  }

  /// Describes a permission for a network interface.
  factory NetworkInterfacePermission.build(
          [void Function(NetworkInterfacePermissionBuilder) updates]) =
      _$NetworkInterfacePermission;

  const NetworkInterfacePermission._();

  static const List<_i4.SmithySerializer> serializers = [
    NetworkInterfacePermissionEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NetworkInterfacePermissionBuilder b) {}

  /// The ID of the network interface permission.
  String? get networkInterfacePermissionId;

  /// The ID of the network interface.
  String? get networkInterfaceId;

  /// The Amazon Web Services account ID.
  String? get awsAccountId;

  /// The Amazon Web Service.
  String? get awsService;

  /// The type of permission.
  _i2.InterfacePermissionType? get permission;

  /// Information about the state of the permission.
  _i3.NetworkInterfacePermissionState? get permissionState;
  @override
  List<Object?> get props => [
        networkInterfacePermissionId,
        networkInterfaceId,
        awsAccountId,
        awsService,
        permission,
        permissionState,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NetworkInterfacePermission');
    helper.add(
      'networkInterfacePermissionId',
      networkInterfacePermissionId,
    );
    helper.add(
      'networkInterfaceId',
      networkInterfaceId,
    );
    helper.add(
      'awsAccountId',
      awsAccountId,
    );
    helper.add(
      'awsService',
      awsService,
    );
    helper.add(
      'permission',
      permission,
    );
    helper.add(
      'permissionState',
      permissionState,
    );
    return helper.toString();
  }
}

class NetworkInterfacePermissionEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<NetworkInterfacePermission> {
  const NetworkInterfacePermissionEc2QuerySerializer()
      : super('NetworkInterfacePermission');

  @override
  Iterable<Type> get types => const [
        NetworkInterfacePermission,
        _$NetworkInterfacePermission,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  NetworkInterfacePermission deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NetworkInterfacePermissionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'networkInterfacePermissionId':
          if (value != null) {
            result.networkInterfacePermissionId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'networkInterfaceId':
          if (value != null) {
            result.networkInterfaceId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'awsAccountId':
          if (value != null) {
            result.awsAccountId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'awsService':
          if (value != null) {
            result.awsService = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'permission':
          if (value != null) {
            result.permission = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.InterfacePermissionType),
            ) as _i2.InterfacePermissionType);
          }
          break;
        case 'permissionState':
          if (value != null) {
            result.permissionState.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i3.NetworkInterfacePermissionState),
            ) as _i3.NetworkInterfacePermissionState));
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
    final payload = (object as NetworkInterfacePermission);
    final result = <Object?>[
      const _i4.XmlElementName(
        'NetworkInterfacePermissionResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.networkInterfacePermissionId != null) {
      result
        ..add(const _i4.XmlElementName('NetworkInterfacePermissionId'))
        ..add(serializers.serialize(
          payload.networkInterfacePermissionId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.networkInterfaceId != null) {
      result
        ..add(const _i4.XmlElementName('NetworkInterfaceId'))
        ..add(serializers.serialize(
          payload.networkInterfaceId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.awsAccountId != null) {
      result
        ..add(const _i4.XmlElementName('AwsAccountId'))
        ..add(serializers.serialize(
          payload.awsAccountId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.awsService != null) {
      result
        ..add(const _i4.XmlElementName('AwsService'))
        ..add(serializers.serialize(
          payload.awsService!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.permission != null) {
      result
        ..add(const _i4.XmlElementName('Permission'))
        ..add(serializers.serialize(
          payload.permission!,
          specifiedType: const FullType.nullable(_i2.InterfacePermissionType),
        ));
    }
    if (payload.permissionState != null) {
      result
        ..add(const _i4.XmlElementName('PermissionState'))
        ..add(serializers.serialize(
          payload.permissionState!,
          specifiedType: const FullType(_i3.NetworkInterfacePermissionState),
        ));
    }
    return result;
  }
}
