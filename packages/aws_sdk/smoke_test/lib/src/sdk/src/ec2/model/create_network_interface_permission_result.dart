// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_network_interface_permission_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_permission.dart'
    as _i2;

part 'create_network_interface_permission_result.g.dart';

/// Contains the output of CreateNetworkInterfacePermission.
abstract class CreateNetworkInterfacePermissionResult
    with
        _i1.AWSEquatable<CreateNetworkInterfacePermissionResult>
    implements
        Built<CreateNetworkInterfacePermissionResult,
            CreateNetworkInterfacePermissionResultBuilder> {
  /// Contains the output of CreateNetworkInterfacePermission.
  factory CreateNetworkInterfacePermissionResult(
      {_i2.NetworkInterfacePermission? interfacePermission}) {
    return _$CreateNetworkInterfacePermissionResult._(
        interfacePermission: interfacePermission);
  }

  /// Contains the output of CreateNetworkInterfacePermission.
  factory CreateNetworkInterfacePermissionResult.build(
      [void Function(CreateNetworkInterfacePermissionResultBuilder)
          updates]) = _$CreateNetworkInterfacePermissionResult;

  const CreateNetworkInterfacePermissionResult._();

  /// Constructs a [CreateNetworkInterfacePermissionResult] from a [payload] and [response].
  factory CreateNetworkInterfacePermissionResult.fromResponse(
    CreateNetworkInterfacePermissionResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    CreateNetworkInterfacePermissionResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateNetworkInterfacePermissionResultBuilder b) {}

  /// Information about the permission for the network interface.
  _i2.NetworkInterfacePermission? get interfacePermission;
  @override
  List<Object?> get props => [interfacePermission];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateNetworkInterfacePermissionResult');
    helper.add(
      'interfacePermission',
      interfacePermission,
    );
    return helper.toString();
  }
}

class CreateNetworkInterfacePermissionResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<CreateNetworkInterfacePermissionResult> {
  const CreateNetworkInterfacePermissionResultEc2QuerySerializer()
      : super('CreateNetworkInterfacePermissionResult');

  @override
  Iterable<Type> get types => const [
        CreateNetworkInterfacePermissionResult,
        _$CreateNetworkInterfacePermissionResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateNetworkInterfacePermissionResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateNetworkInterfacePermissionResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'interfacePermission':
          if (value != null) {
            result.interfacePermission.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.NetworkInterfacePermission),
            ) as _i2.NetworkInterfacePermission));
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
    final payload = (object as CreateNetworkInterfacePermissionResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'CreateNetworkInterfacePermissionResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.interfacePermission != null) {
      result
        ..add(const _i3.XmlElementName('InterfacePermission'))
        ..add(serializers.serialize(
          payload.interfacePermission!,
          specifiedType: const FullType(_i2.NetworkInterfacePermission),
        ));
    }
    return result;
  }
}
