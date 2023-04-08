// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.allocate_ipam_pool_cidr_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'allocate_ipam_pool_cidr_request.g.dart';

abstract class AllocateIpamPoolCidrRequest
    with
        _i1.HttpInput<AllocateIpamPoolCidrRequest>,
        _i2.AWSEquatable<AllocateIpamPoolCidrRequest>
    implements
        Built<AllocateIpamPoolCidrRequest, AllocateIpamPoolCidrRequestBuilder> {
  factory AllocateIpamPoolCidrRequest({
    bool? dryRun,
    required String ipamPoolId,
    String? cidr,
    int? netmaskLength,
    String? clientToken,
    String? description,
    bool? previewNextCidr,
    List<String>? disallowedCidrs,
  }) {
    dryRun ??= false;
    netmaskLength ??= 0;
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      clientToken ??= '00000000-0000-4000-8000-000000000000';
    } else {
      clientToken ??= _i2.uuid(secure: true);
    }
    previewNextCidr ??= false;
    return _$AllocateIpamPoolCidrRequest._(
      dryRun: dryRun,
      ipamPoolId: ipamPoolId,
      cidr: cidr,
      netmaskLength: netmaskLength,
      clientToken: clientToken,
      description: description,
      previewNextCidr: previewNextCidr,
      disallowedCidrs:
          disallowedCidrs == null ? null : _i3.BuiltList(disallowedCidrs),
    );
  }

  factory AllocateIpamPoolCidrRequest.build(
          [void Function(AllocateIpamPoolCidrRequestBuilder) updates]) =
      _$AllocateIpamPoolCidrRequest;

  const AllocateIpamPoolCidrRequest._();

  factory AllocateIpamPoolCidrRequest.fromRequest(
    AllocateIpamPoolCidrRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    AllocateIpamPoolCidrRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AllocateIpamPoolCidrRequestBuilder b) {
    b.dryRun = false;
    b.netmaskLength = 0;
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      b.clientToken = '00000000-0000-4000-8000-000000000000';
    } else {
      b.clientToken = _i2.uuid(secure: true);
    }
    b.previewNextCidr = false;
  }

  /// A check for whether you have the required permissions for the action without actually making the request and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the IPAM pool from which you would like to allocate a CIDR.
  String get ipamPoolId;

  /// The CIDR you would like to allocate from the IPAM pool. Note the following:
  ///
  /// *   If there is no DefaultNetmaskLength allocation rule set on the pool, you must specify either the NetmaskLength or the CIDR.
  ///
  /// *   If the DefaultNetmaskLength allocation rule is set on the pool, you can specify either the NetmaskLength or the CIDR and the DefaultNetmaskLength allocation rule will be ignored.
  ///
  ///
  /// Possible values: Any available IPv4 or IPv6 CIDR.
  String? get cidr;

  /// The netmask length of the CIDR you would like to allocate from the IPAM pool. Note the following:
  ///
  /// *   If there is no DefaultNetmaskLength allocation rule set on the pool, you must specify either the NetmaskLength or the CIDR.
  ///
  /// *   If the DefaultNetmaskLength allocation rule is set on the pool, you can specify either the NetmaskLength or the CIDR and the DefaultNetmaskLength allocation rule will be ignored.
  ///
  ///
  /// Possible netmask lengths for IPv4 addresses are 0 - 32. Possible netmask lengths for IPv6 addresses are 0 - 128.
  int get netmaskLength;

  /// A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [Ensuring Idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;

  /// A description for the allocation.
  String? get description;

  /// A preview of the next available CIDR in a pool.
  bool get previewNextCidr;

  /// Exclude a particular CIDR range from being returned by the pool. Disallowed CIDRs are only allowed if using netmask length for allocation.
  _i3.BuiltList<String>? get disallowedCidrs;
  @override
  AllocateIpamPoolCidrRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        ipamPoolId,
        cidr,
        netmaskLength,
        clientToken,
        description,
        previewNextCidr,
        disallowedCidrs,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AllocateIpamPoolCidrRequest');
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
      'netmaskLength',
      netmaskLength,
    );
    helper.add(
      'clientToken',
      clientToken,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'previewNextCidr',
      previewNextCidr,
    );
    helper.add(
      'disallowedCidrs',
      disallowedCidrs,
    );
    return helper.toString();
  }
}

class AllocateIpamPoolCidrRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<AllocateIpamPoolCidrRequest> {
  const AllocateIpamPoolCidrRequestEc2QuerySerializer()
      : super('AllocateIpamPoolCidrRequest');

  @override
  Iterable<Type> get types => const [
        AllocateIpamPoolCidrRequest,
        _$AllocateIpamPoolCidrRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AllocateIpamPoolCidrRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AllocateIpamPoolCidrRequestBuilder();
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
        case 'NetmaskLength':
          result.netmaskLength = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'ClientToken':
          if (value != null) {
            result.clientToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Description':
          if (value != null) {
            result.description = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'PreviewNextCidr':
          result.previewNextCidr = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'DisallowedCidr':
          if (value != null) {
            result.disallowedCidrs.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(String)],
              ),
            ) as _i3.BuiltList<String>));
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
    final payload = (object as AllocateIpamPoolCidrRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'AllocateIpamPoolCidrRequestResponse',
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
    result
      ..add(const _i1.XmlElementName('NetmaskLength'))
      ..add(serializers.serialize(
        payload.netmaskLength,
        specifiedType: const FullType(int),
      ));
    if (payload.clientToken != null) {
      result
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          payload.clientToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.description != null) {
      result
        ..add(const _i1.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('PreviewNextCidr'))
      ..add(serializers.serialize(
        payload.previewNextCidr,
        specifiedType: const FullType(bool),
      ));
    if (payload.disallowedCidrs != null) {
      result
        ..add(const _i1.XmlElementName('DisallowedCidr'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.disallowedCidrs!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result;
  }
}
