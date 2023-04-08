// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.get_ipam_resource_cidrs_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_resource_cidr.dart'
    as _i2;

part 'get_ipam_resource_cidrs_result.g.dart';

abstract class GetIpamResourceCidrsResult
    with _i1.AWSEquatable<GetIpamResourceCidrsResult>
    implements
        Built<GetIpamResourceCidrsResult, GetIpamResourceCidrsResultBuilder> {
  factory GetIpamResourceCidrsResult({
    String? nextToken,
    List<_i2.IpamResourceCidr>? ipamResourceCidrs,
  }) {
    return _$GetIpamResourceCidrsResult._(
      nextToken: nextToken,
      ipamResourceCidrs:
          ipamResourceCidrs == null ? null : _i3.BuiltList(ipamResourceCidrs),
    );
  }

  factory GetIpamResourceCidrsResult.build(
          [void Function(GetIpamResourceCidrsResultBuilder) updates]) =
      _$GetIpamResourceCidrsResult;

  const GetIpamResourceCidrsResult._();

  /// Constructs a [GetIpamResourceCidrsResult] from a [payload] and [response].
  factory GetIpamResourceCidrsResult.fromResponse(
    GetIpamResourceCidrsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    GetIpamResourceCidrsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetIpamResourceCidrsResultBuilder b) {}

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;

  /// The resource CIDRs.
  _i3.BuiltList<_i2.IpamResourceCidr>? get ipamResourceCidrs;
  @override
  List<Object?> get props => [
        nextToken,
        ipamResourceCidrs,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetIpamResourceCidrsResult');
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'ipamResourceCidrs',
      ipamResourceCidrs,
    );
    return helper.toString();
  }
}

class GetIpamResourceCidrsResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<GetIpamResourceCidrsResult> {
  const GetIpamResourceCidrsResultEc2QuerySerializer()
      : super('GetIpamResourceCidrsResult');

  @override
  Iterable<Type> get types => const [
        GetIpamResourceCidrsResult,
        _$GetIpamResourceCidrsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetIpamResourceCidrsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetIpamResourceCidrsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'nextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ipamResourceCidrSet':
          if (value != null) {
            result.ipamResourceCidrs.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.IpamResourceCidr)],
              ),
            ) as _i3.BuiltList<_i2.IpamResourceCidr>));
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
    final payload = (object as GetIpamResourceCidrsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'GetIpamResourceCidrsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.nextToken != null) {
      result
        ..add(const _i4.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.ipamResourceCidrs != null) {
      result
        ..add(const _i4.XmlElementName('IpamResourceCidrSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.ipamResourceCidrs!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.IpamResourceCidr)],
          ),
        ));
    }
    return result;
  }
}
