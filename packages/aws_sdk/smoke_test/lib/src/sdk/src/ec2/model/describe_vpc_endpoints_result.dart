// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_vpc_endpoints_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/vpc_endpoint.dart' as _i2;

part 'describe_vpc_endpoints_result.g.dart';

/// Contains the output of DescribeVpcEndpoints.
abstract class DescribeVpcEndpointsResult
    with _i1.AWSEquatable<DescribeVpcEndpointsResult>
    implements
        Built<DescribeVpcEndpointsResult, DescribeVpcEndpointsResultBuilder> {
  /// Contains the output of DescribeVpcEndpoints.
  factory DescribeVpcEndpointsResult({
    List<_i2.VpcEndpoint>? vpcEndpoints,
    String? nextToken,
  }) {
    return _$DescribeVpcEndpointsResult._(
      vpcEndpoints: vpcEndpoints == null ? null : _i3.BuiltList(vpcEndpoints),
      nextToken: nextToken,
    );
  }

  /// Contains the output of DescribeVpcEndpoints.
  factory DescribeVpcEndpointsResult.build(
          [void Function(DescribeVpcEndpointsResultBuilder) updates]) =
      _$DescribeVpcEndpointsResult;

  const DescribeVpcEndpointsResult._();

  /// Constructs a [DescribeVpcEndpointsResult] from a [payload] and [response].
  factory DescribeVpcEndpointsResult.fromResponse(
    DescribeVpcEndpointsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeVpcEndpointsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeVpcEndpointsResultBuilder b) {}

  /// Information about the endpoints.
  _i3.BuiltList<_i2.VpcEndpoint>? get vpcEndpoints;

  /// The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.
  String? get nextToken;
  @override
  List<Object?> get props => [
        vpcEndpoints,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeVpcEndpointsResult');
    helper.add(
      'vpcEndpoints',
      vpcEndpoints,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeVpcEndpointsResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeVpcEndpointsResult> {
  const DescribeVpcEndpointsResultEc2QuerySerializer()
      : super('DescribeVpcEndpointsResult');

  @override
  Iterable<Type> get types => const [
        DescribeVpcEndpointsResult,
        _$DescribeVpcEndpointsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeVpcEndpointsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeVpcEndpointsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'vpcEndpointSet':
          if (value != null) {
            result.vpcEndpoints.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.VpcEndpoint)],
              ),
            ) as _i3.BuiltList<_i2.VpcEndpoint>));
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
    final payload = (object as DescribeVpcEndpointsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeVpcEndpointsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.vpcEndpoints != null) {
      result
        ..add(const _i4.XmlElementName('VpcEndpointSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.vpcEndpoints!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.VpcEndpoint)],
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
