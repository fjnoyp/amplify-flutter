// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_vpc_classic_link_dns_support_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/classic_link_dns_support.dart'
    as _i2;

part 'describe_vpc_classic_link_dns_support_result.g.dart';

abstract class DescribeVpcClassicLinkDnsSupportResult
    with
        _i1.AWSEquatable<DescribeVpcClassicLinkDnsSupportResult>
    implements
        Built<DescribeVpcClassicLinkDnsSupportResult,
            DescribeVpcClassicLinkDnsSupportResultBuilder> {
  factory DescribeVpcClassicLinkDnsSupportResult({
    String? nextToken,
    List<_i2.ClassicLinkDnsSupport>? vpcs,
  }) {
    return _$DescribeVpcClassicLinkDnsSupportResult._(
      nextToken: nextToken,
      vpcs: vpcs == null ? null : _i3.BuiltList(vpcs),
    );
  }

  factory DescribeVpcClassicLinkDnsSupportResult.build(
      [void Function(DescribeVpcClassicLinkDnsSupportResultBuilder)
          updates]) = _$DescribeVpcClassicLinkDnsSupportResult;

  const DescribeVpcClassicLinkDnsSupportResult._();

  /// Constructs a [DescribeVpcClassicLinkDnsSupportResult] from a [payload] and [response].
  factory DescribeVpcClassicLinkDnsSupportResult.fromResponse(
    DescribeVpcClassicLinkDnsSupportResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeVpcClassicLinkDnsSupportResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeVpcClassicLinkDnsSupportResultBuilder b) {}

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;

  /// Information about the ClassicLink DNS support status of the VPCs.
  _i3.BuiltList<_i2.ClassicLinkDnsSupport>? get vpcs;
  @override
  List<Object?> get props => [
        nextToken,
        vpcs,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeVpcClassicLinkDnsSupportResult');
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'vpcs',
      vpcs,
    );
    return helper.toString();
  }
}

class DescribeVpcClassicLinkDnsSupportResultEc2QuerySerializer extends _i4
    .StructuredSmithySerializer<DescribeVpcClassicLinkDnsSupportResult> {
  const DescribeVpcClassicLinkDnsSupportResultEc2QuerySerializer()
      : super('DescribeVpcClassicLinkDnsSupportResult');

  @override
  Iterable<Type> get types => const [
        DescribeVpcClassicLinkDnsSupportResult,
        _$DescribeVpcClassicLinkDnsSupportResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeVpcClassicLinkDnsSupportResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeVpcClassicLinkDnsSupportResultBuilder();
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
        case 'vpcs':
          if (value != null) {
            result.vpcs.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.ClassicLinkDnsSupport)],
              ),
            ) as _i3.BuiltList<_i2.ClassicLinkDnsSupport>));
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
    final payload = (object as DescribeVpcClassicLinkDnsSupportResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeVpcClassicLinkDnsSupportResultResponse',
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
    if (payload.vpcs != null) {
      result
        ..add(const _i4.XmlElementName('Vpcs'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.vpcs!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.ClassicLinkDnsSupport)],
          ),
        ));
    }
    return result;
  }
}
