// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_ipam_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_ipam_request.g.dart';

abstract class DeleteIpamRequest
    with _i1.HttpInput<DeleteIpamRequest>, _i2.AWSEquatable<DeleteIpamRequest>
    implements Built<DeleteIpamRequest, DeleteIpamRequestBuilder> {
  factory DeleteIpamRequest({
    bool? dryRun,
    required String ipamId,
    bool? cascade,
  }) {
    dryRun ??= false;
    cascade ??= false;
    return _$DeleteIpamRequest._(
      dryRun: dryRun,
      ipamId: ipamId,
      cascade: cascade,
    );
  }

  factory DeleteIpamRequest.build(
      [void Function(DeleteIpamRequestBuilder) updates]) = _$DeleteIpamRequest;

  const DeleteIpamRequest._();

  factory DeleteIpamRequest.fromRequest(
    DeleteIpamRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DeleteIpamRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteIpamRequestBuilder b) {
    b.dryRun = false;
    b.cascade = false;
  }

  /// A check for whether you have the required permissions for the action without actually making the request and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the IPAM to delete.
  String get ipamId;

  /// Enables you to quickly delete an IPAM, private scopes, pools in private scopes, and any allocations in the pools in private scopes. You cannot delete the IPAM with this option if there is a pool in your public scope. If you use this option, IPAM does the following:
  ///
  /// *   Deallocates any CIDRs allocated to VPC resources (such as VPCs) in pools in private scopes.
  ///
  ///     No VPC resources are deleted as a result of enabling this option. The CIDR associated with the resource will no longer be allocated from an IPAM pool, but the CIDR itself will remain unchanged.
  ///
  /// *   Deprovisions all IPv4 CIDRs provisioned to IPAM pools in private scopes.
  ///
  /// *   Deletes all IPAM pools in private scopes.
  ///
  /// *   Deletes all non-default private scopes in the IPAM.
  ///
  /// *   Deletes the default public and private scopes and the IPAM.
  bool get cascade;
  @override
  DeleteIpamRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        ipamId,
        cascade,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteIpamRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'ipamId',
      ipamId,
    );
    helper.add(
      'cascade',
      cascade,
    );
    return helper.toString();
  }
}

class DeleteIpamRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteIpamRequest> {
  const DeleteIpamRequestEc2QuerySerializer() : super('DeleteIpamRequest');

  @override
  Iterable<Type> get types => const [
        DeleteIpamRequest,
        _$DeleteIpamRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteIpamRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteIpamRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'IpamId':
          result.ipamId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'Cascade':
          result.cascade = (serializers.deserialize(
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
    final payload = (object as DeleteIpamRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DeleteIpamRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i1.XmlElementName('IpamId'))
      ..add(serializers.serialize(
        payload.ipamId,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('Cascade'))
      ..add(serializers.serialize(
        payload.cascade,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
