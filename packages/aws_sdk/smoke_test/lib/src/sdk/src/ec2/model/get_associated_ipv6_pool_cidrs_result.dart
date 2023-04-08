// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.get_associated_ipv6_pool_cidrs_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/ipv6_cidr_association.dart'
    as _i2;

part 'get_associated_ipv6_pool_cidrs_result.g.dart';

abstract class GetAssociatedIpv6PoolCidrsResult
    with
        _i1.AWSEquatable<GetAssociatedIpv6PoolCidrsResult>
    implements
        Built<GetAssociatedIpv6PoolCidrsResult,
            GetAssociatedIpv6PoolCidrsResultBuilder> {
  factory GetAssociatedIpv6PoolCidrsResult({
    List<_i2.Ipv6CidrAssociation>? ipv6CidrAssociations,
    String? nextToken,
  }) {
    return _$GetAssociatedIpv6PoolCidrsResult._(
      ipv6CidrAssociations: ipv6CidrAssociations == null
          ? null
          : _i3.BuiltList(ipv6CidrAssociations),
      nextToken: nextToken,
    );
  }

  factory GetAssociatedIpv6PoolCidrsResult.build(
          [void Function(GetAssociatedIpv6PoolCidrsResultBuilder) updates]) =
      _$GetAssociatedIpv6PoolCidrsResult;

  const GetAssociatedIpv6PoolCidrsResult._();

  /// Constructs a [GetAssociatedIpv6PoolCidrsResult] from a [payload] and [response].
  factory GetAssociatedIpv6PoolCidrsResult.fromResponse(
    GetAssociatedIpv6PoolCidrsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    GetAssociatedIpv6PoolCidrsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetAssociatedIpv6PoolCidrsResultBuilder b) {}

  /// Information about the IPv6 CIDR block associations.
  _i3.BuiltList<_i2.Ipv6CidrAssociation>? get ipv6CidrAssociations;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        ipv6CidrAssociations,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetAssociatedIpv6PoolCidrsResult');
    helper.add(
      'ipv6CidrAssociations',
      ipv6CidrAssociations,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class GetAssociatedIpv6PoolCidrsResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<GetAssociatedIpv6PoolCidrsResult> {
  const GetAssociatedIpv6PoolCidrsResultEc2QuerySerializer()
      : super('GetAssociatedIpv6PoolCidrsResult');

  @override
  Iterable<Type> get types => const [
        GetAssociatedIpv6PoolCidrsResult,
        _$GetAssociatedIpv6PoolCidrsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetAssociatedIpv6PoolCidrsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetAssociatedIpv6PoolCidrsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ipv6CidrAssociationSet':
          if (value != null) {
            result.ipv6CidrAssociations
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.Ipv6CidrAssociation)],
              ),
            ) as _i3.BuiltList<_i2.Ipv6CidrAssociation>));
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
    final payload = (object as GetAssociatedIpv6PoolCidrsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'GetAssociatedIpv6PoolCidrsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.ipv6CidrAssociations != null) {
      result
        ..add(const _i4.XmlElementName('Ipv6CidrAssociationSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.ipv6CidrAssociations!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.Ipv6CidrAssociation)],
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
