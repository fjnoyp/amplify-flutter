// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.get_ipam_pool_allocations_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_pool_allocation.dart'
    as _i2;

part 'get_ipam_pool_allocations_result.g.dart';

abstract class GetIpamPoolAllocationsResult
    with
        _i1.AWSEquatable<GetIpamPoolAllocationsResult>
    implements
        Built<GetIpamPoolAllocationsResult,
            GetIpamPoolAllocationsResultBuilder> {
  factory GetIpamPoolAllocationsResult({
    List<_i2.IpamPoolAllocation>? ipamPoolAllocations,
    String? nextToken,
  }) {
    return _$GetIpamPoolAllocationsResult._(
      ipamPoolAllocations: ipamPoolAllocations == null
          ? null
          : _i3.BuiltList(ipamPoolAllocations),
      nextToken: nextToken,
    );
  }

  factory GetIpamPoolAllocationsResult.build(
          [void Function(GetIpamPoolAllocationsResultBuilder) updates]) =
      _$GetIpamPoolAllocationsResult;

  const GetIpamPoolAllocationsResult._();

  /// Constructs a [GetIpamPoolAllocationsResult] from a [payload] and [response].
  factory GetIpamPoolAllocationsResult.fromResponse(
    GetIpamPoolAllocationsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    GetIpamPoolAllocationsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetIpamPoolAllocationsResultBuilder b) {}

  /// The IPAM pool allocations you want information on.
  _i3.BuiltList<_i2.IpamPoolAllocation>? get ipamPoolAllocations;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        ipamPoolAllocations,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetIpamPoolAllocationsResult');
    helper.add(
      'ipamPoolAllocations',
      ipamPoolAllocations,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class GetIpamPoolAllocationsResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<GetIpamPoolAllocationsResult> {
  const GetIpamPoolAllocationsResultEc2QuerySerializer()
      : super('GetIpamPoolAllocationsResult');

  @override
  Iterable<Type> get types => const [
        GetIpamPoolAllocationsResult,
        _$GetIpamPoolAllocationsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetIpamPoolAllocationsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetIpamPoolAllocationsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ipamPoolAllocationSet':
          if (value != null) {
            result.ipamPoolAllocations
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.IpamPoolAllocation)],
              ),
            ) as _i3.BuiltList<_i2.IpamPoolAllocation>));
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
    final payload = (object as GetIpamPoolAllocationsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'GetIpamPoolAllocationsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.ipamPoolAllocations != null) {
      result
        ..add(const _i4.XmlElementName('IpamPoolAllocationSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.ipamPoolAllocations!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.IpamPoolAllocation)],
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
