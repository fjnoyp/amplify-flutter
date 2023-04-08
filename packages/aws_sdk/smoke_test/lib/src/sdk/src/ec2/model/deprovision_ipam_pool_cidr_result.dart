// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.deprovision_ipam_pool_cidr_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_pool_cidr.dart' as _i2;

part 'deprovision_ipam_pool_cidr_result.g.dart';

abstract class DeprovisionIpamPoolCidrResult
    with
        _i1.AWSEquatable<DeprovisionIpamPoolCidrResult>
    implements
        Built<DeprovisionIpamPoolCidrResult,
            DeprovisionIpamPoolCidrResultBuilder> {
  factory DeprovisionIpamPoolCidrResult({_i2.IpamPoolCidr? ipamPoolCidr}) {
    return _$DeprovisionIpamPoolCidrResult._(ipamPoolCidr: ipamPoolCidr);
  }

  factory DeprovisionIpamPoolCidrResult.build(
          [void Function(DeprovisionIpamPoolCidrResultBuilder) updates]) =
      _$DeprovisionIpamPoolCidrResult;

  const DeprovisionIpamPoolCidrResult._();

  /// Constructs a [DeprovisionIpamPoolCidrResult] from a [payload] and [response].
  factory DeprovisionIpamPoolCidrResult.fromResponse(
    DeprovisionIpamPoolCidrResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    DeprovisionIpamPoolCidrResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeprovisionIpamPoolCidrResultBuilder b) {}

  /// The deprovisioned pool CIDR.
  _i2.IpamPoolCidr? get ipamPoolCidr;
  @override
  List<Object?> get props => [ipamPoolCidr];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeprovisionIpamPoolCidrResult');
    helper.add(
      'ipamPoolCidr',
      ipamPoolCidr,
    );
    return helper.toString();
  }
}

class DeprovisionIpamPoolCidrResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DeprovisionIpamPoolCidrResult> {
  const DeprovisionIpamPoolCidrResultEc2QuerySerializer()
      : super('DeprovisionIpamPoolCidrResult');

  @override
  Iterable<Type> get types => const [
        DeprovisionIpamPoolCidrResult,
        _$DeprovisionIpamPoolCidrResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeprovisionIpamPoolCidrResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeprovisionIpamPoolCidrResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ipamPoolCidr':
          if (value != null) {
            result.ipamPoolCidr.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.IpamPoolCidr),
            ) as _i2.IpamPoolCidr));
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
    final payload = (object as DeprovisionIpamPoolCidrResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'DeprovisionIpamPoolCidrResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.ipamPoolCidr != null) {
      result
        ..add(const _i3.XmlElementName('IpamPoolCidr'))
        ..add(serializers.serialize(
          payload.ipamPoolCidr!,
          specifiedType: const FullType(_i2.IpamPoolCidr),
        ));
    }
    return result;
  }
}
