// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_internet_gateways_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/internet_gateway.dart' as _i2;

part 'describe_internet_gateways_result.g.dart';

abstract class DescribeInternetGatewaysResult
    with
        _i1.AWSEquatable<DescribeInternetGatewaysResult>
    implements
        Built<DescribeInternetGatewaysResult,
            DescribeInternetGatewaysResultBuilder> {
  factory DescribeInternetGatewaysResult({
    List<_i2.InternetGateway>? internetGateways,
    String? nextToken,
  }) {
    return _$DescribeInternetGatewaysResult._(
      internetGateways:
          internetGateways == null ? null : _i3.BuiltList(internetGateways),
      nextToken: nextToken,
    );
  }

  factory DescribeInternetGatewaysResult.build(
          [void Function(DescribeInternetGatewaysResultBuilder) updates]) =
      _$DescribeInternetGatewaysResult;

  const DescribeInternetGatewaysResult._();

  /// Constructs a [DescribeInternetGatewaysResult] from a [payload] and [response].
  factory DescribeInternetGatewaysResult.fromResponse(
    DescribeInternetGatewaysResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeInternetGatewaysResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeInternetGatewaysResultBuilder b) {}

  /// Information about one or more internet gateways.
  _i3.BuiltList<_i2.InternetGateway>? get internetGateways;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        internetGateways,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeInternetGatewaysResult');
    helper.add(
      'internetGateways',
      internetGateways,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeInternetGatewaysResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeInternetGatewaysResult> {
  const DescribeInternetGatewaysResultEc2QuerySerializer()
      : super('DescribeInternetGatewaysResult');

  @override
  Iterable<Type> get types => const [
        DescribeInternetGatewaysResult,
        _$DescribeInternetGatewaysResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeInternetGatewaysResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeInternetGatewaysResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'internetGatewaySet':
          if (value != null) {
            result.internetGateways.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.InternetGateway)],
              ),
            ) as _i3.BuiltList<_i2.InternetGateway>));
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
    final payload = (object as DescribeInternetGatewaysResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeInternetGatewaysResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.internetGateways != null) {
      result
        ..add(const _i4.XmlElementName('InternetGatewaySet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.internetGateways!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.InternetGateway)],
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
