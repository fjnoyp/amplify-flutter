// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_volume_status_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart' as _i3;

part 'describe_volume_status_request.g.dart';

abstract class DescribeVolumeStatusRequest
    with
        _i1.HttpInput<DescribeVolumeStatusRequest>,
        _i2.AWSEquatable<DescribeVolumeStatusRequest>
    implements
        Built<DescribeVolumeStatusRequest, DescribeVolumeStatusRequestBuilder> {
  factory DescribeVolumeStatusRequest({
    List<_i3.Filter>? filters,
    int? maxResults,
    String? nextToken,
    List<String>? volumeIds,
    bool? dryRun,
  }) {
    maxResults ??= 0;
    dryRun ??= false;
    return _$DescribeVolumeStatusRequest._(
      filters: filters == null ? null : _i4.BuiltList(filters),
      maxResults: maxResults,
      nextToken: nextToken,
      volumeIds: volumeIds == null ? null : _i4.BuiltList(volumeIds),
      dryRun: dryRun,
    );
  }

  factory DescribeVolumeStatusRequest.build(
          [void Function(DescribeVolumeStatusRequestBuilder) updates]) =
      _$DescribeVolumeStatusRequest;

  const DescribeVolumeStatusRequest._();

  factory DescribeVolumeStatusRequest.fromRequest(
    DescribeVolumeStatusRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeVolumeStatusRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeVolumeStatusRequestBuilder b) {
    b.maxResults = 0;
    b.dryRun = false;
  }

  /// The filters.
  ///
  /// *   `action.code` \- The action code for the event (for example, `enable-volume-io`).
  ///
  /// *   `action.description` \- A description of the action.
  ///
  /// *   `action.event-id` \- The event ID associated with the action.
  ///
  /// *   `availability-zone` \- The Availability Zone of the instance.
  ///
  /// *   `event.description` \- A description of the event.
  ///
  /// *   `event.event-id` \- The event ID.
  ///
  /// *   `event.event-type` \- The event type (for `io-enabled`: `passed` | `failed`; for `io-performance`: `io-performance:degraded` | `io-performance:severely-degraded` | `io-performance:stalled`).
  ///
  /// *   `event.not-after` \- The latest end time for the event.
  ///
  /// *   `event.not-before` \- The earliest start time for the event.
  ///
  /// *   `volume-status.details-name` \- The cause for `volume-status.status` (`io-enabled` | `io-performance`).
  ///
  /// *   `volume-status.details-status` \- The status of `volume-status.details-name` (for `io-enabled`: `passed` | `failed`; for `io-performance`: `normal` | `degraded` | `severely-degraded` | `stalled`).
  ///
  /// *   `volume-status.status` \- The status of the volume (`ok` | `impaired` | `warning` | `insufficient-data`).
  _i4.BuiltList<_i3.Filter>? get filters;

  /// The maximum number of volume results returned by `DescribeVolumeStatus` in paginated output. When this parameter is used, the request only returns `MaxResults` results in a single page along with a `NextToken` response element. The remaining results of the initial request can be seen by sending another request with the returned `NextToken` value. This value can be between 5 and 1,000; if `MaxResults` is given a value larger than 1,000, only 1,000 results are returned. If this parameter is not used, then `DescribeVolumeStatus` returns all results. You cannot specify this parameter and the volume IDs parameter in the same request.
  int get maxResults;

  /// The `NextToken` value to include in a future `DescribeVolumeStatus` request. When the results of the request exceed `MaxResults`, this value can be used to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;

  /// The IDs of the volumes.
  ///
  /// Default: Describes all your volumes.
  _i4.BuiltList<String>? get volumeIds;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DescribeVolumeStatusRequest getPayload() => this;
  @override
  List<Object?> get props => [
        filters,
        maxResults,
        nextToken,
        volumeIds,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeVolumeStatusRequest');
    helper.add(
      'filters',
      filters,
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
      'volumeIds',
      volumeIds,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class DescribeVolumeStatusRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeVolumeStatusRequest> {
  const DescribeVolumeStatusRequestEc2QuerySerializer()
      : super('DescribeVolumeStatusRequest');

  @override
  Iterable<Type> get types => const [
        DescribeVolumeStatusRequest,
        _$DescribeVolumeStatusRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeVolumeStatusRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeVolumeStatusRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
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
        case 'VolumeId':
          if (value != null) {
            result.volumeIds.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'VolumeId',
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
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
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
    final payload = (object as DescribeVolumeStatusRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DescribeVolumeStatusRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
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
    if (payload.volumeIds != null) {
      result
        ..add(const _i1.XmlElementName('VolumeId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'VolumeId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.volumeIds!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
