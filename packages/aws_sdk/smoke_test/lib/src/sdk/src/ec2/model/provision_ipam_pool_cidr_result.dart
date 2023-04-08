// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.provision_ipam_pool_cidr_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_pool_cidr.dart' as _i2;

part 'provision_ipam_pool_cidr_result.g.dart';

abstract class ProvisionIpamPoolCidrResult
    with _i1.AWSEquatable<ProvisionIpamPoolCidrResult>
    implements
        Built<ProvisionIpamPoolCidrResult, ProvisionIpamPoolCidrResultBuilder> {
  factory ProvisionIpamPoolCidrResult({_i2.IpamPoolCidr? ipamPoolCidr}) {
    return _$ProvisionIpamPoolCidrResult._(ipamPoolCidr: ipamPoolCidr);
  }

  factory ProvisionIpamPoolCidrResult.build(
          [void Function(ProvisionIpamPoolCidrResultBuilder) updates]) =
      _$ProvisionIpamPoolCidrResult;

  const ProvisionIpamPoolCidrResult._();

  /// Constructs a [ProvisionIpamPoolCidrResult] from a [payload] and [response].
  factory ProvisionIpamPoolCidrResult.fromResponse(
    ProvisionIpamPoolCidrResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    ProvisionIpamPoolCidrResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ProvisionIpamPoolCidrResultBuilder b) {}

  /// Information about the provisioned CIDR.
  _i2.IpamPoolCidr? get ipamPoolCidr;
  @override
  List<Object?> get props => [ipamPoolCidr];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ProvisionIpamPoolCidrResult');
    helper.add(
      'ipamPoolCidr',
      ipamPoolCidr,
    );
    return helper.toString();
  }
}

class ProvisionIpamPoolCidrResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ProvisionIpamPoolCidrResult> {
  const ProvisionIpamPoolCidrResultEc2QuerySerializer()
      : super('ProvisionIpamPoolCidrResult');

  @override
  Iterable<Type> get types => const [
        ProvisionIpamPoolCidrResult,
        _$ProvisionIpamPoolCidrResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ProvisionIpamPoolCidrResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProvisionIpamPoolCidrResultBuilder();
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
    final payload = (object as ProvisionIpamPoolCidrResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'ProvisionIpamPoolCidrResultResponse',
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
