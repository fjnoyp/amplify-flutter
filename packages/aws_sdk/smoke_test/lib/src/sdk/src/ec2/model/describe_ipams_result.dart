// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_ipams_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam.dart' as _i2;

part 'describe_ipams_result.g.dart';

abstract class DescribeIpamsResult
    with _i1.AWSEquatable<DescribeIpamsResult>
    implements Built<DescribeIpamsResult, DescribeIpamsResultBuilder> {
  factory DescribeIpamsResult({
    String? nextToken,
    List<_i2.Ipam>? ipams,
  }) {
    return _$DescribeIpamsResult._(
      nextToken: nextToken,
      ipams: ipams == null ? null : _i3.BuiltList(ipams),
    );
  }

  factory DescribeIpamsResult.build(
          [void Function(DescribeIpamsResultBuilder) updates]) =
      _$DescribeIpamsResult;

  const DescribeIpamsResult._();

  /// Constructs a [DescribeIpamsResult] from a [payload] and [response].
  factory DescribeIpamsResult.fromResponse(
    DescribeIpamsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeIpamsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeIpamsResultBuilder b) {}

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;

  /// Information about the IPAMs.
  _i3.BuiltList<_i2.Ipam>? get ipams;
  @override
  List<Object?> get props => [
        nextToken,
        ipams,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeIpamsResult');
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'ipams',
      ipams,
    );
    return helper.toString();
  }
}

class DescribeIpamsResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeIpamsResult> {
  const DescribeIpamsResultEc2QuerySerializer() : super('DescribeIpamsResult');

  @override
  Iterable<Type> get types => const [
        DescribeIpamsResult,
        _$DescribeIpamsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeIpamsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeIpamsResultBuilder();
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
        case 'ipamSet':
          if (value != null) {
            result.ipams.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.Ipam)],
              ),
            ) as _i3.BuiltList<_i2.Ipam>));
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
    final payload = (object as DescribeIpamsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeIpamsResultResponse',
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
    if (payload.ipams != null) {
      result
        ..add(const _i4.XmlElementName('IpamSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.ipams!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.Ipam)],
          ),
        ));
    }
    return result;
  }
}
