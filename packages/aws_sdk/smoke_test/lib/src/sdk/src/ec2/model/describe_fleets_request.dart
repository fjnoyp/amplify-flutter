// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_fleets_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart' as _i3;

part 'describe_fleets_request.g.dart';

abstract class DescribeFleetsRequest
    with
        _i1.HttpInput<DescribeFleetsRequest>,
        _i2.AWSEquatable<DescribeFleetsRequest>
    implements Built<DescribeFleetsRequest, DescribeFleetsRequestBuilder> {
  factory DescribeFleetsRequest({
    bool? dryRun,
    int? maxResults,
    String? nextToken,
    List<String>? fleetIds,
    List<_i3.Filter>? filters,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribeFleetsRequest._(
      dryRun: dryRun,
      maxResults: maxResults,
      nextToken: nextToken,
      fleetIds: fleetIds == null ? null : _i4.BuiltList(fleetIds),
      filters: filters == null ? null : _i4.BuiltList(filters),
    );
  }

  factory DescribeFleetsRequest.build(
          [void Function(DescribeFleetsRequestBuilder) updates]) =
      _$DescribeFleetsRequest;

  const DescribeFleetsRequest._();

  factory DescribeFleetsRequest.fromRequest(
    DescribeFleetsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeFleetsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeFleetsRequestBuilder b) {
    b.dryRun = false;
    b.maxResults = 0;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The maximum number of results to return in a single call. Specify a value between 1 and 1000. The default value is 1000. To retrieve the remaining results, make another call with the returned `NextToken` value.
  int get maxResults;

  /// The token for the next set of results.
  String? get nextToken;

  /// The IDs of the EC2 Fleets.
  ///
  /// If a fleet is of type `instant`, you must specify the fleet ID, otherwise it does not appear in the response.
  _i4.BuiltList<String>? get fleetIds;

  /// The filters.
  ///
  /// *   `activity-status` \- The progress of the EC2 Fleet ( `error` | `pending-fulfillment` | `pending-termination` | `fulfilled`).
  ///
  /// *   `excess-capacity-termination-policy` \- Indicates whether to terminate running instances if the target capacity is decreased below the current EC2 Fleet size (`true` | `false`).
  ///
  /// *   `fleet-state` \- The state of the EC2 Fleet (`submitted` | `active` | `deleted` | `failed` | `deleted-running` | `deleted-terminating` | `modifying`).
  ///
  /// *   `replace-unhealthy-instances` \- Indicates whether EC2 Fleet should replace unhealthy instances (`true` | `false`).
  ///
  /// *   `type` \- The type of request (`instant` | `request` | `maintain`).
  _i4.BuiltList<_i3.Filter>? get filters;
  @override
  DescribeFleetsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        maxResults,
        nextToken,
        fleetIds,
        filters,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeFleetsRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'maxResults',
      maxResults,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'fleetIds',
      fleetIds,
    );
    helper.add(
      'filters',
      filters,
    );
    return helper.toString();
  }
}

class DescribeFleetsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeFleetsRequest> {
  const DescribeFleetsRequestEc2QuerySerializer()
      : super('DescribeFleetsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeFleetsRequest,
        _$DescribeFleetsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeFleetsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeFleetsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
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
        case 'FleetId':
          if (value != null) {
            result.fleetIds.replace((const _i1.XmlBuiltListSerializer(
                    indexer: _i1.XmlIndexer.ec2QueryList)
                .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(String)],
              ),
            ) as _i4.BuiltList<String>));
          }
          break;
        case 'Filter':
          if (value != null) {
            result.filters.replace((const _i1.XmlBuiltListSerializer(
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
    final payload = (object as DescribeFleetsRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DescribeFleetsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
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
    if (payload.fleetIds != null) {
      result
        ..add(const _i1.XmlElementName('FleetId'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.ec2QueryList)
            .serialize(
          serializers,
          payload.fleetIds!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.filters != null) {
      result
        ..add(const _i1.XmlElementName('Filter'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'Filter',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.filters!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.Filter)],
          ),
        ));
    }
    return result;
  }
}
