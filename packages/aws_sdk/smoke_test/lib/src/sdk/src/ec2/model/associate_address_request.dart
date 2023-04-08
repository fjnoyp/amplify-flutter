// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.associate_address_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'associate_address_request.g.dart';

abstract class AssociateAddressRequest
    with
        _i1.HttpInput<AssociateAddressRequest>,
        _i2.AWSEquatable<AssociateAddressRequest>
    implements Built<AssociateAddressRequest, AssociateAddressRequestBuilder> {
  factory AssociateAddressRequest({
    String? allocationId,
    String? instanceId,
    String? publicIp,
    bool? allowReassociation,
    bool? dryRun,
    String? networkInterfaceId,
    String? privateIpAddress,
  }) {
    allowReassociation ??= false;
    dryRun ??= false;
    return _$AssociateAddressRequest._(
      allocationId: allocationId,
      instanceId: instanceId,
      publicIp: publicIp,
      allowReassociation: allowReassociation,
      dryRun: dryRun,
      networkInterfaceId: networkInterfaceId,
      privateIpAddress: privateIpAddress,
    );
  }

  factory AssociateAddressRequest.build(
          [void Function(AssociateAddressRequestBuilder) updates]) =
      _$AssociateAddressRequest;

  const AssociateAddressRequest._();

  factory AssociateAddressRequest.fromRequest(
    AssociateAddressRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    AssociateAddressRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AssociateAddressRequestBuilder b) {
    b.allowReassociation = false;
    b.dryRun = false;
  }

  /// \[EC2-VPC\] The allocation ID. This is required for EC2-VPC.
  String? get allocationId;

  /// The ID of the instance. The instance must have exactly one attached network interface. For EC2-VPC, you can specify either the instance ID or the network interface ID, but not both. For EC2-Classic, you must specify an instance ID and the instance must be in the running state.
  String? get instanceId;

  /// \[EC2-Classic\] The Elastic IP address to associate with the instance. This is required for EC2-Classic.
  String? get publicIp;

  /// \[EC2-VPC\] For a VPC in an EC2-Classic account, specify true to allow an Elastic IP address that is already associated with an instance or network interface to be reassociated with the specified instance or network interface. Otherwise, the operation fails. In a VPC in an EC2-VPC-only account, reassociation is automatic, therefore you can specify false to ensure the operation fails if the Elastic IP address is already associated with another resource.
  bool get allowReassociation;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// \[EC2-VPC\] The ID of the network interface. If the instance has more than one network interface, you must specify a network interface ID.
  ///
  /// For EC2-VPC, you can specify either the instance ID or the network interface ID, but not both.
  String? get networkInterfaceId;

  /// \[EC2-VPC\] The primary or secondary private IP address to associate with the Elastic IP address. If no private IP address is specified, the Elastic IP address is associated with the primary private IP address.
  String? get privateIpAddress;
  @override
  AssociateAddressRequest getPayload() => this;
  @override
  List<Object?> get props => [
        allocationId,
        instanceId,
        publicIp,
        allowReassociation,
        dryRun,
        networkInterfaceId,
        privateIpAddress,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AssociateAddressRequest');
    helper.add(
      'allocationId',
      allocationId,
    );
    helper.add(
      'instanceId',
      instanceId,
    );
    helper.add(
      'publicIp',
      publicIp,
    );
    helper.add(
      'allowReassociation',
      allowReassociation,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'networkInterfaceId',
      networkInterfaceId,
    );
    helper.add(
      'privateIpAddress',
      privateIpAddress,
    );
    return helper.toString();
  }
}

class AssociateAddressRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<AssociateAddressRequest> {
  const AssociateAddressRequestEc2QuerySerializer()
      : super('AssociateAddressRequest');

  @override
  Iterable<Type> get types => const [
        AssociateAddressRequest,
        _$AssociateAddressRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AssociateAddressRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssociateAddressRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'AllocationId':
          if (value != null) {
            result.allocationId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'InstanceId':
          if (value != null) {
            result.instanceId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'PublicIp':
          if (value != null) {
            result.publicIp = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'allowReassociation':
          result.allowReassociation = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'networkInterfaceId':
          if (value != null) {
            result.networkInterfaceId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'privateIpAddress':
          if (value != null) {
            result.privateIpAddress = (serializers.deserialize(
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
    final payload = (object as AssociateAddressRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'AssociateAddressRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.allocationId != null) {
      result
        ..add(const _i1.XmlElementName('AllocationId'))
        ..add(serializers.serialize(
          payload.allocationId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.instanceId != null) {
      result
        ..add(const _i1.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          payload.instanceId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.publicIp != null) {
      result
        ..add(const _i1.XmlElementName('PublicIp'))
        ..add(serializers.serialize(
          payload.publicIp!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('AllowReassociation'))
      ..add(serializers.serialize(
        payload.allowReassociation,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    if (payload.networkInterfaceId != null) {
      result
        ..add(const _i1.XmlElementName('NetworkInterfaceId'))
        ..add(serializers.serialize(
          payload.networkInterfaceId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.privateIpAddress != null) {
      result
        ..add(const _i1.XmlElementName('PrivateIpAddress'))
        ..add(serializers.serialize(
          payload.privateIpAddress!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
