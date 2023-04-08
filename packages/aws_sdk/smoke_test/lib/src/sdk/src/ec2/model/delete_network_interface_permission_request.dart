// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_network_interface_permission_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_network_interface_permission_request.g.dart';

/// Contains the parameters for DeleteNetworkInterfacePermission.
abstract class DeleteNetworkInterfacePermissionRequest
    with
        _i1.HttpInput<DeleteNetworkInterfacePermissionRequest>,
        _i2.AWSEquatable<DeleteNetworkInterfacePermissionRequest>
    implements
        Built<DeleteNetworkInterfacePermissionRequest,
            DeleteNetworkInterfacePermissionRequestBuilder> {
  /// Contains the parameters for DeleteNetworkInterfacePermission.
  factory DeleteNetworkInterfacePermissionRequest({
    required String networkInterfacePermissionId,
    bool? force,
    bool? dryRun,
  }) {
    force ??= false;
    dryRun ??= false;
    return _$DeleteNetworkInterfacePermissionRequest._(
      networkInterfacePermissionId: networkInterfacePermissionId,
      force: force,
      dryRun: dryRun,
    );
  }

  /// Contains the parameters for DeleteNetworkInterfacePermission.
  factory DeleteNetworkInterfacePermissionRequest.build(
      [void Function(DeleteNetworkInterfacePermissionRequestBuilder)
          updates]) = _$DeleteNetworkInterfacePermissionRequest;

  const DeleteNetworkInterfacePermissionRequest._();

  factory DeleteNetworkInterfacePermissionRequest.fromRequest(
    DeleteNetworkInterfacePermissionRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DeleteNetworkInterfacePermissionRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteNetworkInterfacePermissionRequestBuilder b) {
    b.force = false;
    b.dryRun = false;
  }

  /// The ID of the network interface permission.
  String get networkInterfacePermissionId;

  /// Specify `true` to remove the permission even if the network interface is attached to an instance.
  bool get force;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DeleteNetworkInterfacePermissionRequest getPayload() => this;
  @override
  List<Object?> get props => [
        networkInterfacePermissionId,
        force,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteNetworkInterfacePermissionRequest');
    helper.add(
      'networkInterfacePermissionId',
      networkInterfacePermissionId,
    );
    helper.add(
      'force',
      force,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class DeleteNetworkInterfacePermissionRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DeleteNetworkInterfacePermissionRequest> {
  const DeleteNetworkInterfacePermissionRequestEc2QuerySerializer()
      : super('DeleteNetworkInterfacePermissionRequest');

  @override
  Iterable<Type> get types => const [
        DeleteNetworkInterfacePermissionRequest,
        _$DeleteNetworkInterfacePermissionRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteNetworkInterfacePermissionRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteNetworkInterfacePermissionRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'NetworkInterfacePermissionId':
          result.networkInterfacePermissionId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'Force':
          result.force = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
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
    final payload = (object as DeleteNetworkInterfacePermissionRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DeleteNetworkInterfacePermissionRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('NetworkInterfacePermissionId'))
      ..add(serializers.serialize(
        payload.networkInterfacePermissionId,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('Force'))
      ..add(serializers.serialize(
        payload.force,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
