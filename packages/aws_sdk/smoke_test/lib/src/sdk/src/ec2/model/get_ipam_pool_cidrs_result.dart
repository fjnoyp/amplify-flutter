// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.get_ipam_pool_cidrs_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_pool_cidr.dart' as _i2;

part 'get_ipam_pool_cidrs_result.g.dart';

abstract class GetIpamPoolCidrsResult
    with _i1.AWSEquatable<GetIpamPoolCidrsResult>
    implements Built<GetIpamPoolCidrsResult, GetIpamPoolCidrsResultBuilder> {
  factory GetIpamPoolCidrsResult({
    List<_i2.IpamPoolCidr>? ipamPoolCidrs,
    String? nextToken,
  }) {
    return _$GetIpamPoolCidrsResult._(
      ipamPoolCidrs:
          ipamPoolCidrs == null ? null : _i3.BuiltList(ipamPoolCidrs),
      nextToken: nextToken,
    );
  }

  factory GetIpamPoolCidrsResult.build(
          [void Function(GetIpamPoolCidrsResultBuilder) updates]) =
      _$GetIpamPoolCidrsResult;

  const GetIpamPoolCidrsResult._();

  /// Constructs a [GetIpamPoolCidrsResult] from a [payload] and [response].
  factory GetIpamPoolCidrsResult.fromResponse(
    GetIpamPoolCidrsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    GetIpamPoolCidrsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetIpamPoolCidrsResultBuilder b) {}

  /// Information about the CIDRs provisioned to an IPAM pool.
  _i3.BuiltList<_i2.IpamPoolCidr>? get ipamPoolCidrs;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        ipamPoolCidrs,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetIpamPoolCidrsResult');
    helper.add(
      'ipamPoolCidrs',
      ipamPoolCidrs,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class GetIpamPoolCidrsResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<GetIpamPoolCidrsResult> {
  const GetIpamPoolCidrsResultEc2QuerySerializer()
      : super('GetIpamPoolCidrsResult');

  @override
  Iterable<Type> get types => const [
        GetIpamPoolCidrsResult,
        _$GetIpamPoolCidrsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetIpamPoolCidrsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetIpamPoolCidrsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ipamPoolCidrSet':
          if (value != null) {
            result.ipamPoolCidrs.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.IpamPoolCidr)],
              ),
            ) as _i3.BuiltList<_i2.IpamPoolCidr>));
          }
          break;
        case 'nextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
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
    final payload = (object as GetIpamPoolCidrsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'GetIpamPoolCidrsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.ipamPoolCidrs != null) {
      result
        ..add(const _i4.XmlElementName('IpamPoolCidrSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.ipamPoolCidrs!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.IpamPoolCidr)],
          ),
        ));
    }
    if (payload.nextToken != null) {
      result
        ..add(const _i4.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
