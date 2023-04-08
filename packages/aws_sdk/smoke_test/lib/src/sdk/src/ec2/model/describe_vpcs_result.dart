// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_vpcs_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/vpc.dart' as _i2;

part 'describe_vpcs_result.g.dart';

abstract class DescribeVpcsResult
    with _i1.AWSEquatable<DescribeVpcsResult>
    implements Built<DescribeVpcsResult, DescribeVpcsResultBuilder> {
  factory DescribeVpcsResult({
    List<_i2.Vpc>? vpcs,
    String? nextToken,
  }) {
    return _$DescribeVpcsResult._(
      vpcs: vpcs == null ? null : _i3.BuiltList(vpcs),
      nextToken: nextToken,
    );
  }

  factory DescribeVpcsResult.build(
          [void Function(DescribeVpcsResultBuilder) updates]) =
      _$DescribeVpcsResult;

  const DescribeVpcsResult._();

  /// Constructs a [DescribeVpcsResult] from a [payload] and [response].
  factory DescribeVpcsResult.fromResponse(
    DescribeVpcsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeVpcsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeVpcsResultBuilder b) {}

  /// Information about one or more VPCs.
  _i3.BuiltList<_i2.Vpc>? get vpcs;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        vpcs,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeVpcsResult');
    helper.add(
      'vpcs',
      vpcs,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeVpcsResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeVpcsResult> {
  const DescribeVpcsResultEc2QuerySerializer() : super('DescribeVpcsResult');

  @override
  Iterable<Type> get types => const [
        DescribeVpcsResult,
        _$DescribeVpcsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeVpcsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeVpcsResultBuilder();
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
                [FullType(_i2.Vpc)],
              ),
            ) as _i3.BuiltList<_i2.Vpc>));
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
    final payload = (object as DescribeVpcsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeVpcsResultResponse',
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
            [FullType(_i2.Vpc)],
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
