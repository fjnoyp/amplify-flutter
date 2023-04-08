// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_vpc_classic_link_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_classic_link.dart' as _i2;

part 'describe_vpc_classic_link_result.g.dart';

abstract class DescribeVpcClassicLinkResult
    with
        _i1.AWSEquatable<DescribeVpcClassicLinkResult>
    implements
        Built<DescribeVpcClassicLinkResult,
            DescribeVpcClassicLinkResultBuilder> {
  factory DescribeVpcClassicLinkResult({List<_i2.VpcClassicLink>? vpcs}) {
    return _$DescribeVpcClassicLinkResult._(
        vpcs: vpcs == null ? null : _i3.BuiltList(vpcs));
  }

  factory DescribeVpcClassicLinkResult.build(
          [void Function(DescribeVpcClassicLinkResultBuilder) updates]) =
      _$DescribeVpcClassicLinkResult;

  const DescribeVpcClassicLinkResult._();

  /// Constructs a [DescribeVpcClassicLinkResult] from a [payload] and [response].
  factory DescribeVpcClassicLinkResult.fromResponse(
    DescribeVpcClassicLinkResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeVpcClassicLinkResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeVpcClassicLinkResultBuilder b) {}

  /// The ClassicLink status of one or more VPCs.
  _i3.BuiltList<_i2.VpcClassicLink>? get vpcs;
  @override
  List<Object?> get props => [vpcs];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeVpcClassicLinkResult');
    helper.add(
      'vpcs',
      vpcs,
    );
    return helper.toString();
  }
}

class DescribeVpcClassicLinkResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeVpcClassicLinkResult> {
  const DescribeVpcClassicLinkResultEc2QuerySerializer()
      : super('DescribeVpcClassicLinkResult');

  @override
  Iterable<Type> get types => const [
        DescribeVpcClassicLinkResult,
        _$DescribeVpcClassicLinkResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeVpcClassicLinkResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeVpcClassicLinkResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'vpcSet':
          if (value != null) {
            result.vpcs.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.VpcClassicLink)],
              ),
            ) as _i3.BuiltList<_i2.VpcClassicLink>));
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
    final payload = (object as DescribeVpcClassicLinkResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeVpcClassicLinkResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.vpcs != null) {
      result
        ..add(const _i4.XmlElementName('VpcSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.vpcs!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.VpcClassicLink)],
          ),
        ));
    }
    return result;
  }
}
