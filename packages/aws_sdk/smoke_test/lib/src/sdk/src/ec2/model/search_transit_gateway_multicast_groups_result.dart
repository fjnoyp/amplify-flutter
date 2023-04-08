// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.search_transit_gateway_multicast_groups_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_multicast_group.dart'
    as _i2;

part 'search_transit_gateway_multicast_groups_result.g.dart';

abstract class SearchTransitGatewayMulticastGroupsResult
    with
        _i1.AWSEquatable<SearchTransitGatewayMulticastGroupsResult>
    implements
        Built<SearchTransitGatewayMulticastGroupsResult,
            SearchTransitGatewayMulticastGroupsResultBuilder> {
  factory SearchTransitGatewayMulticastGroupsResult({
    List<_i2.TransitGatewayMulticastGroup>? multicastGroups,
    String? nextToken,
  }) {
    return _$SearchTransitGatewayMulticastGroupsResult._(
      multicastGroups:
          multicastGroups == null ? null : _i3.BuiltList(multicastGroups),
      nextToken: nextToken,
    );
  }

  factory SearchTransitGatewayMulticastGroupsResult.build(
      [void Function(SearchTransitGatewayMulticastGroupsResultBuilder)
          updates]) = _$SearchTransitGatewayMulticastGroupsResult;

  const SearchTransitGatewayMulticastGroupsResult._();

  /// Constructs a [SearchTransitGatewayMulticastGroupsResult] from a [payload] and [response].
  factory SearchTransitGatewayMulticastGroupsResult.fromResponse(
    SearchTransitGatewayMulticastGroupsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    SearchTransitGatewayMulticastGroupsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SearchTransitGatewayMulticastGroupsResultBuilder b) {}

  /// Information about the transit gateway multicast group.
  _i3.BuiltList<_i2.TransitGatewayMulticastGroup>? get multicastGroups;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        multicastGroups,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'SearchTransitGatewayMulticastGroupsResult');
    helper.add(
      'multicastGroups',
      multicastGroups,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class SearchTransitGatewayMulticastGroupsResultEc2QuerySerializer extends _i4
    .StructuredSmithySerializer<SearchTransitGatewayMulticastGroupsResult> {
  const SearchTransitGatewayMulticastGroupsResultEc2QuerySerializer()
      : super('SearchTransitGatewayMulticastGroupsResult');

  @override
  Iterable<Type> get types => const [
        SearchTransitGatewayMulticastGroupsResult,
        _$SearchTransitGatewayMulticastGroupsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SearchTransitGatewayMulticastGroupsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SearchTransitGatewayMulticastGroupsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'multicastGroups':
          if (value != null) {
            result.multicastGroups.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.TransitGatewayMulticastGroup)],
              ),
            ) as _i3.BuiltList<_i2.TransitGatewayMulticastGroup>));
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
    final payload = (object as SearchTransitGatewayMulticastGroupsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'SearchTransitGatewayMulticastGroupsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.multicastGroups != null) {
      result
        ..add(const _i4.XmlElementName('MulticastGroups'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.multicastGroups!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.TransitGatewayMulticastGroup)],
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
