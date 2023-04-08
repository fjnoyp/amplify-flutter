// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_host_reservations_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart' as _i3;

part 'describe_host_reservations_request.g.dart';

abstract class DescribeHostReservationsRequest
    with
        _i1.HttpInput<DescribeHostReservationsRequest>,
        _i2.AWSEquatable<DescribeHostReservationsRequest>
    implements
        Built<DescribeHostReservationsRequest,
            DescribeHostReservationsRequestBuilder> {
  factory DescribeHostReservationsRequest({
    List<_i3.Filter>? filter,
    List<String>? hostReservationIdSet,
    int? maxResults,
    String? nextToken,
  }) {
    maxResults ??= 0;
    return _$DescribeHostReservationsRequest._(
      filter: filter == null ? null : _i4.BuiltList(filter),
      hostReservationIdSet: hostReservationIdSet == null
          ? null
          : _i4.BuiltList(hostReservationIdSet),
      maxResults: maxResults,
      nextToken: nextToken,
    );
  }

  factory DescribeHostReservationsRequest.build(
          [void Function(DescribeHostReservationsRequestBuilder) updates]) =
      _$DescribeHostReservationsRequest;

  const DescribeHostReservationsRequest._();

  factory DescribeHostReservationsRequest.fromRequest(
    DescribeHostReservationsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeHostReservationsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeHostReservationsRequestBuilder b) {
    b.maxResults = 0;
  }

  /// The filters.
  ///
  /// *   `instance-family` \- The instance family (for example, `m4`).
  ///
  /// *   `payment-option` \- The payment option (`NoUpfront` | `PartialUpfront` | `AllUpfront`).
  ///
  /// *   `state` \- The state of the reservation (`payment-pending` | `payment-failed` | `active` | `retired`).
  ///
  /// *   `tag:` \- The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
  ///
  /// *   `tag-key` \- The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
  _i4.BuiltList<_i3.Filter>? get filter;

  /// The host reservation IDs.
  _i4.BuiltList<String>? get hostReservationIdSet;

  /// The maximum number of results to return for the request in a single page. The remaining results can be seen by sending another request with the returned `nextToken` value. This value can be between 5 and 500. If `maxResults` is given a larger value than 500, you receive an error.
  int get maxResults;

  /// The token to use to retrieve the next page of results.
  String? get nextToken;
  @override
  DescribeHostReservationsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        filter,
        hostReservationIdSet,
        maxResults,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeHostReservationsRequest');
    helper.add(
      'filter',
      filter,
    );
    helper.add(
      'hostReservationIdSet',
      hostReservationIdSet,
    );
    helper.add(
      'maxResults',
      maxResults,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeHostReservationsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeHostReservationsRequest> {
  const DescribeHostReservationsRequestEc2QuerySerializer()
      : super('DescribeHostReservationsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeHostReservationsRequest,
        _$DescribeHostReservationsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeHostReservationsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeHostReservationsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Filter':
          if (value != null) {
            result.filter.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'Filter',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.Filter)],
              ),
            ) as _i4.BuiltList<_i3.Filter>));
          }
          break;
        case 'HostReservationIdSet':
          if (value != null) {
            result.hostReservationIdSet
                .replace((const _i1.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(String)],
              ),
            ) as _i4.BuiltList<String>));
          }
          break;
        case 'MaxResults':
          result.maxResults = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'NextToken':
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
    final payload = (object as DescribeHostReservationsRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DescribeHostReservationsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.filter != null) {
      result
        ..add(const _i1.XmlElementName('Filter'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'Filter',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.filter!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.Filter)],
          ),
        ));
    }
    if (payload.hostReservationIdSet != null) {
      result
        ..add(const _i1.XmlElementName('HostReservationIdSet'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.hostReservationIdSet!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    result
      ..add(const _i1.XmlElementName('MaxResults'))
      ..add(serializers.serialize(
        payload.maxResults,
        specifiedType: const FullType(int),
      ));
    if (payload.nextToken != null) {
      result
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
