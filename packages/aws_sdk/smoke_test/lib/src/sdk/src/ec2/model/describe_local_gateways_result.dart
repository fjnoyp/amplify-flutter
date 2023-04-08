// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_local_gateways_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/local_gateway.dart' as _i2;

part 'describe_local_gateways_result.g.dart';

abstract class DescribeLocalGatewaysResult
    with _i1.AWSEquatable<DescribeLocalGatewaysResult>
    implements
        Built<DescribeLocalGatewaysResult, DescribeLocalGatewaysResultBuilder> {
  factory DescribeLocalGatewaysResult({
    List<_i2.LocalGateway>? localGateways,
    String? nextToken,
  }) {
    return _$DescribeLocalGatewaysResult._(
      localGateways:
          localGateways == null ? null : _i3.BuiltList(localGateways),
      nextToken: nextToken,
    );
  }

  factory DescribeLocalGatewaysResult.build(
          [void Function(DescribeLocalGatewaysResultBuilder) updates]) =
      _$DescribeLocalGatewaysResult;

  const DescribeLocalGatewaysResult._();

  /// Constructs a [DescribeLocalGatewaysResult] from a [payload] and [response].
  factory DescribeLocalGatewaysResult.fromResponse(
    DescribeLocalGatewaysResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeLocalGatewaysResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeLocalGatewaysResultBuilder b) {}

  /// Information about the local gateways.
  _i3.BuiltList<_i2.LocalGateway>? get localGateways;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        localGateways,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeLocalGatewaysResult');
    helper.add(
      'localGateways',
      localGateways,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeLocalGatewaysResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeLocalGatewaysResult> {
  const DescribeLocalGatewaysResultEc2QuerySerializer()
      : super('DescribeLocalGatewaysResult');

  @override
  Iterable<Type> get types => const [
        DescribeLocalGatewaysResult,
        _$DescribeLocalGatewaysResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeLocalGatewaysResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeLocalGatewaysResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'localGatewaySet':
          if (value != null) {
            result.localGateways.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.LocalGateway)],
              ),
            ) as _i3.BuiltList<_i2.LocalGateway>));
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
    final payload = (object as DescribeLocalGatewaysResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeLocalGatewaysResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.localGateways != null) {
      result
        ..add(const _i4.XmlElementName('LocalGatewaySet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.localGateways!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.LocalGateway)],
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
