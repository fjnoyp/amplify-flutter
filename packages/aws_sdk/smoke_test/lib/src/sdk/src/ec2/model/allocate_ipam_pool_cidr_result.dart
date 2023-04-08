// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.allocate_ipam_pool_cidr_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_pool_allocation.dart'
    as _i2;

part 'allocate_ipam_pool_cidr_result.g.dart';

abstract class AllocateIpamPoolCidrResult
    with _i1.AWSEquatable<AllocateIpamPoolCidrResult>
    implements
        Built<AllocateIpamPoolCidrResult, AllocateIpamPoolCidrResultBuilder> {
  factory AllocateIpamPoolCidrResult(
      {_i2.IpamPoolAllocation? ipamPoolAllocation}) {
    return _$AllocateIpamPoolCidrResult._(
        ipamPoolAllocation: ipamPoolAllocation);
  }

  factory AllocateIpamPoolCidrResult.build(
          [void Function(AllocateIpamPoolCidrResultBuilder) updates]) =
      _$AllocateIpamPoolCidrResult;

  const AllocateIpamPoolCidrResult._();

  /// Constructs a [AllocateIpamPoolCidrResult] from a [payload] and [response].
  factory AllocateIpamPoolCidrResult.fromResponse(
    AllocateIpamPoolCidrResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    AllocateIpamPoolCidrResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AllocateIpamPoolCidrResultBuilder b) {}

  /// Information about the allocation created.
  _i2.IpamPoolAllocation? get ipamPoolAllocation;
  @override
  List<Object?> get props => [ipamPoolAllocation];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AllocateIpamPoolCidrResult');
    helper.add(
      'ipamPoolAllocation',
      ipamPoolAllocation,
    );
    return helper.toString();
  }
}

class AllocateIpamPoolCidrResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<AllocateIpamPoolCidrResult> {
  const AllocateIpamPoolCidrResultEc2QuerySerializer()
      : super('AllocateIpamPoolCidrResult');

  @override
  Iterable<Type> get types => const [
        AllocateIpamPoolCidrResult,
        _$AllocateIpamPoolCidrResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AllocateIpamPoolCidrResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AllocateIpamPoolCidrResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ipamPoolAllocation':
          if (value != null) {
            result.ipamPoolAllocation.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.IpamPoolAllocation),
            ) as _i2.IpamPoolAllocation));
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
    final payload = (object as AllocateIpamPoolCidrResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'AllocateIpamPoolCidrResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.ipamPoolAllocation != null) {
      result
        ..add(const _i3.XmlElementName('IpamPoolAllocation'))
        ..add(serializers.serialize(
          payload.ipamPoolAllocation!,
          specifiedType: const FullType(_i2.IpamPoolAllocation),
        ));
    }
    return result;
  }
}
