// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_network_insights_access_scopes_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/network_insights_access_scope.dart'
    as _i2;

part 'describe_network_insights_access_scopes_result.g.dart';

abstract class DescribeNetworkInsightsAccessScopesResult
    with
        _i1.AWSEquatable<DescribeNetworkInsightsAccessScopesResult>
    implements
        Built<DescribeNetworkInsightsAccessScopesResult,
            DescribeNetworkInsightsAccessScopesResultBuilder> {
  factory DescribeNetworkInsightsAccessScopesResult({
    List<_i2.NetworkInsightsAccessScope>? networkInsightsAccessScopes,
    String? nextToken,
  }) {
    return _$DescribeNetworkInsightsAccessScopesResult._(
      networkInsightsAccessScopes: networkInsightsAccessScopes == null
          ? null
          : _i3.BuiltList(networkInsightsAccessScopes),
      nextToken: nextToken,
    );
  }

  factory DescribeNetworkInsightsAccessScopesResult.build(
      [void Function(DescribeNetworkInsightsAccessScopesResultBuilder)
          updates]) = _$DescribeNetworkInsightsAccessScopesResult;

  const DescribeNetworkInsightsAccessScopesResult._();

  /// Constructs a [DescribeNetworkInsightsAccessScopesResult] from a [payload] and [response].
  factory DescribeNetworkInsightsAccessScopesResult.fromResponse(
    DescribeNetworkInsightsAccessScopesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeNetworkInsightsAccessScopesResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeNetworkInsightsAccessScopesResultBuilder b) {}

  /// The Network Access Scopes.
  _i3.BuiltList<_i2.NetworkInsightsAccessScope>?
      get networkInsightsAccessScopes;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        networkInsightsAccessScopes,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeNetworkInsightsAccessScopesResult');
    helper.add(
      'networkInsightsAccessScopes',
      networkInsightsAccessScopes,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeNetworkInsightsAccessScopesResultEc2QuerySerializer extends _i4
    .StructuredSmithySerializer<DescribeNetworkInsightsAccessScopesResult> {
  const DescribeNetworkInsightsAccessScopesResultEc2QuerySerializer()
      : super('DescribeNetworkInsightsAccessScopesResult');

  @override
  Iterable<Type> get types => const [
        DescribeNetworkInsightsAccessScopesResult,
        _$DescribeNetworkInsightsAccessScopesResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeNetworkInsightsAccessScopesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeNetworkInsightsAccessScopesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'networkInsightsAccessScopeSet':
          if (value != null) {
            result.networkInsightsAccessScopes
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.NetworkInsightsAccessScope)],
              ),
            ) as _i3.BuiltList<_i2.NetworkInsightsAccessScope>));
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
    final payload = (object as DescribeNetworkInsightsAccessScopesResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeNetworkInsightsAccessScopesResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.networkInsightsAccessScopes != null) {
      result
        ..add(const _i4.XmlElementName('NetworkInsightsAccessScopeSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.networkInsightsAccessScopes!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.NetworkInsightsAccessScope)],
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
