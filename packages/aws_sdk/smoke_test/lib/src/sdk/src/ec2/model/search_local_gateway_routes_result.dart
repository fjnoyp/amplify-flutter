// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.search_local_gateway_routes_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/local_gateway_route.dart'
    as _i2;

part 'search_local_gateway_routes_result.g.dart';

abstract class SearchLocalGatewayRoutesResult
    with
        _i1.AWSEquatable<SearchLocalGatewayRoutesResult>
    implements
        Built<SearchLocalGatewayRoutesResult,
            SearchLocalGatewayRoutesResultBuilder> {
  factory SearchLocalGatewayRoutesResult({
    List<_i2.LocalGatewayRoute>? routes,
    String? nextToken,
  }) {
    return _$SearchLocalGatewayRoutesResult._(
      routes: routes == null ? null : _i3.BuiltList(routes),
      nextToken: nextToken,
    );
  }

  factory SearchLocalGatewayRoutesResult.build(
          [void Function(SearchLocalGatewayRoutesResultBuilder) updates]) =
      _$SearchLocalGatewayRoutesResult;

  const SearchLocalGatewayRoutesResult._();

  /// Constructs a [SearchLocalGatewayRoutesResult] from a [payload] and [response].
  factory SearchLocalGatewayRoutesResult.fromResponse(
    SearchLocalGatewayRoutesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    SearchLocalGatewayRoutesResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SearchLocalGatewayRoutesResultBuilder b) {}

  /// Information about the routes.
  _i3.BuiltList<_i2.LocalGatewayRoute>? get routes;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        routes,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('SearchLocalGatewayRoutesResult');
    helper.add(
      'routes',
      routes,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class SearchLocalGatewayRoutesResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<SearchLocalGatewayRoutesResult> {
  const SearchLocalGatewayRoutesResultEc2QuerySerializer()
      : super('SearchLocalGatewayRoutesResult');

  @override
  Iterable<Type> get types => const [
        SearchLocalGatewayRoutesResult,
        _$SearchLocalGatewayRoutesResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SearchLocalGatewayRoutesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SearchLocalGatewayRoutesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'routeSet':
          if (value != null) {
            result.routes.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.LocalGatewayRoute)],
              ),
            ) as _i3.BuiltList<_i2.LocalGatewayRoute>));
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
    final payload = (object as SearchLocalGatewayRoutesResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'SearchLocalGatewayRoutesResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.routes != null) {
      result
        ..add(const _i4.XmlElementName('RouteSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.routes!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.LocalGatewayRoute)],
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
