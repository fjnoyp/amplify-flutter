// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.provision_ipam_pool_cidr_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_cidr_authorization_context.dart'
    as _i3;

part 'provision_ipam_pool_cidr_request.g.dart';

abstract class ProvisionIpamPoolCidrRequest
    with
        _i1.HttpInput<ProvisionIpamPoolCidrRequest>,
        _i2.AWSEquatable<ProvisionIpamPoolCidrRequest>
    implements
        Built<ProvisionIpamPoolCidrRequest,
            ProvisionIpamPoolCidrRequestBuilder> {
  factory ProvisionIpamPoolCidrRequest({
    bool? dryRun,
    required String ipamPoolId,
    String? cidr,
    _i3.IpamCidrAuthorizationContext? cidrAuthorizationContext,
  }) {
    dryRun ??= false;
    return _$ProvisionIpamPoolCidrRequest._(
      dryRun: dryRun,
      ipamPoolId: ipamPoolId,
      cidr: cidr,
      cidrAuthorizationContext: cidrAuthorizationContext,
    );
  }

  factory ProvisionIpamPoolCidrRequest.build(
          [void Function(ProvisionIpamPoolCidrRequestBuilder) updates]) =
      _$ProvisionIpamPoolCidrRequest;

  const ProvisionIpamPoolCidrRequest._();

  factory ProvisionIpamPoolCidrRequest.fromRequest(
    ProvisionIpamPoolCidrRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ProvisionIpamPoolCidrRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ProvisionIpamPoolCidrRequestBuilder b) {
    b.dryRun = false;
  }

  /// A check for whether you have the required permissions for the action without actually making the request and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the IPAM pool to which you want to assign a CIDR.
  String get ipamPoolId;

  /// The CIDR you want to assign to the IPAM pool.
  String? get cidr;

  /// A signed document that proves that you are authorized to bring a specified IP address range to Amazon using BYOIP. This option applies to public pools only.
  _i3.IpamCidrAuthorizationContext? get cidrAuthorizationContext;
  @override
  ProvisionIpamPoolCidrRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        ipamPoolId,
        cidr,
        cidrAuthorizationContext,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ProvisionIpamPoolCidrRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'ipamPoolId',
      ipamPoolId,
    );
    helper.add(
      'cidr',
      cidr,
    );
    helper.add(
      'cidrAuthorizationContext',
      cidrAuthorizationContext,
    );
    return helper.toString();
  }
}

class ProvisionIpamPoolCidrRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ProvisionIpamPoolCidrRequest> {
  const ProvisionIpamPoolCidrRequestEc2QuerySerializer()
      : super('ProvisionIpamPoolCidrRequest');

  @override
  Iterable<Type> get types => const [
        ProvisionIpamPoolCidrRequest,
        _$ProvisionIpamPoolCidrRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ProvisionIpamPoolCidrRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProvisionIpamPoolCidrRequestBuilder();
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
        case 'IpamPoolId':
          result.ipamPoolId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'Cidr':
          if (value != null) {
            result.cidr = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'CidrAuthorizationContext':
          if (value != null) {
            result.cidrAuthorizationContext.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.IpamCidrAuthorizationContext),
            ) as _i3.IpamCidrAuthorizationContext));
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
    final payload = (object as ProvisionIpamPoolCidrRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ProvisionIpamPoolCidrRequestResponse',
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
      ..add(const _i1.XmlElementName('IpamPoolId'))
      ..add(serializers.serialize(
        payload.ipamPoolId,
        specifiedType: const FullType(String),
      ));
    if (payload.cidr != null) {
      result
        ..add(const _i1.XmlElementName('Cidr'))
        ..add(serializers.serialize(
          payload.cidr!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.cidrAuthorizationContext != null) {
      result
        ..add(const _i1.XmlElementName('CidrAuthorizationContext'))
        ..add(serializers.serialize(
          payload.cidrAuthorizationContext!,
          specifiedType: const FullType(_i3.IpamCidrAuthorizationContext),
        ));
    }
    return result;
  }
}
