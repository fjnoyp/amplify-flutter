// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.provision_public_ipv4_pool_cidr_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/public_ipv4_pool_range.dart'
    as _i2;

part 'provision_public_ipv4_pool_cidr_result.g.dart';

abstract class ProvisionPublicIpv4PoolCidrResult
    with
        _i1.AWSEquatable<ProvisionPublicIpv4PoolCidrResult>
    implements
        Built<ProvisionPublicIpv4PoolCidrResult,
            ProvisionPublicIpv4PoolCidrResultBuilder> {
  factory ProvisionPublicIpv4PoolCidrResult({
    String? poolId,
    _i2.PublicIpv4PoolRange? poolAddressRange,
  }) {
    return _$ProvisionPublicIpv4PoolCidrResult._(
      poolId: poolId,
      poolAddressRange: poolAddressRange,
    );
  }

  factory ProvisionPublicIpv4PoolCidrResult.build(
          [void Function(ProvisionPublicIpv4PoolCidrResultBuilder) updates]) =
      _$ProvisionPublicIpv4PoolCidrResult;

  const ProvisionPublicIpv4PoolCidrResult._();

  /// Constructs a [ProvisionPublicIpv4PoolCidrResult] from a [payload] and [response].
  factory ProvisionPublicIpv4PoolCidrResult.fromResponse(
    ProvisionPublicIpv4PoolCidrResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    ProvisionPublicIpv4PoolCidrResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ProvisionPublicIpv4PoolCidrResultBuilder b) {}

  /// The ID of the pool that you want to provision the CIDR to.
  String? get poolId;

  /// Describes an address range of an IPv4 address pool.
  _i2.PublicIpv4PoolRange? get poolAddressRange;
  @override
  List<Object?> get props => [
        poolId,
        poolAddressRange,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ProvisionPublicIpv4PoolCidrResult');
    helper.add(
      'poolId',
      poolId,
    );
    helper.add(
      'poolAddressRange',
      poolAddressRange,
    );
    return helper.toString();
  }
}

class ProvisionPublicIpv4PoolCidrResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ProvisionPublicIpv4PoolCidrResult> {
  const ProvisionPublicIpv4PoolCidrResultEc2QuerySerializer()
      : super('ProvisionPublicIpv4PoolCidrResult');

  @override
  Iterable<Type> get types => const [
        ProvisionPublicIpv4PoolCidrResult,
        _$ProvisionPublicIpv4PoolCidrResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ProvisionPublicIpv4PoolCidrResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProvisionPublicIpv4PoolCidrResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'poolId':
          if (value != null) {
            result.poolId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'poolAddressRange':
          if (value != null) {
            result.poolAddressRange.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.PublicIpv4PoolRange),
            ) as _i2.PublicIpv4PoolRange));
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
    final payload = (object as ProvisionPublicIpv4PoolCidrResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'ProvisionPublicIpv4PoolCidrResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.poolId != null) {
      result
        ..add(const _i3.XmlElementName('PoolId'))
        ..add(serializers.serialize(
          payload.poolId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.poolAddressRange != null) {
      result
        ..add(const _i3.XmlElementName('PoolAddressRange'))
        ..add(serializers.serialize(
          payload.poolAddressRange!,
          specifiedType: const FullType(_i2.PublicIpv4PoolRange),
        ));
    }
    return result;
  }
}
