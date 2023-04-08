// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_snapshots_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart' as _i3;

part 'describe_snapshots_request.g.dart';

abstract class DescribeSnapshotsRequest
    with
        _i1.HttpInput<DescribeSnapshotsRequest>,
        _i2.AWSEquatable<DescribeSnapshotsRequest>
    implements
        Built<DescribeSnapshotsRequest, DescribeSnapshotsRequestBuilder> {
  factory DescribeSnapshotsRequest({
    List<_i3.Filter>? filters,
    int? maxResults,
    String? nextToken,
    List<String>? ownerIds,
    List<String>? restorableByUserIds,
    List<String>? snapshotIds,
    bool? dryRun,
  }) {
    maxResults ??= 0;
    dryRun ??= false;
    return _$DescribeSnapshotsRequest._(
      filters: filters == null ? null : _i4.BuiltList(filters),
      maxResults: maxResults,
      nextToken: nextToken,
      ownerIds: ownerIds == null ? null : _i4.BuiltList(ownerIds),
      restorableByUserIds: restorableByUserIds == null
          ? null
          : _i4.BuiltList(restorableByUserIds),
      snapshotIds: snapshotIds == null ? null : _i4.BuiltList(snapshotIds),
      dryRun: dryRun,
    );
  }

  factory DescribeSnapshotsRequest.build(
          [void Function(DescribeSnapshotsRequestBuilder) updates]) =
      _$DescribeSnapshotsRequest;

  const DescribeSnapshotsRequest._();

  factory DescribeSnapshotsRequest.fromRequest(
    DescribeSnapshotsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeSnapshotsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeSnapshotsRequestBuilder b) {
    b.maxResults = 0;
    b.dryRun = false;
  }

  /// The filters.
  ///
  /// *   `description` \- A description of the snapshot.
  ///
  /// *   `encrypted` \- Indicates whether the snapshot is encrypted (`true` | `false`)
  ///
  /// *   `owner-alias` \- The owner alias, from an Amazon-maintained list (`amazon`). This is not the user-configured Amazon Web Services account alias set using the IAM console. We recommend that you use the related parameter instead of this filter.
  ///
  /// *   `owner-id` \- The Amazon Web Services account ID of the owner. We recommend that you use the related parameter instead of this filter.
  ///
  /// *   `progress` \- The progress of the snapshot, as a percentage (for example, 80%).
  ///
  /// *   `snapshot-id` \- The snapshot ID.
  ///
  /// *   `start-time` \- The time stamp when the snapshot was initiated.
  ///
  /// *   `status` \- The status of the snapshot (`pending` | `completed` | `error`).
  ///
  /// *   `storage-tier` \- The storage tier of the snapshot (`archive` | `standard`).
  ///
  /// *   `tag`: \- The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
  ///
  /// *   `tag-key` \- The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
  ///
  /// *   `volume-id` \- The ID of the volume the snapshot is for.
  ///
  /// *   `volume-size` \- The size of the volume, in GiB.
  _i4.BuiltList<_i3.Filter>? get filters;

  /// The maximum number of snapshot results returned by `DescribeSnapshots` in paginated output. When this parameter is used, `DescribeSnapshots` only returns `MaxResults` results in a single page along with a `NextToken` response element. The remaining results of the initial request can be seen by sending another `DescribeSnapshots` request with the returned `NextToken` value. This value can be between 5 and 1,000; if `MaxResults` is given a value larger than 1,000, only 1,000 results are returned. If this parameter is not used, then `DescribeSnapshots` returns all results. You cannot specify this parameter and the snapshot IDs parameter in the same request.
  int get maxResults;

  /// The `NextToken` value returned from a previous paginated `DescribeSnapshots` request where `MaxResults` was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the `NextToken` value. This value is `null` when there are no more results to return.
  String? get nextToken;

  /// Scopes the results to snapshots with the specified owners. You can specify a combination of Amazon Web Services account IDs, `self`, and `amazon`.
  _i4.BuiltList<String>? get ownerIds;

  /// The IDs of the Amazon Web Services accounts that can create volumes from the snapshot.
  _i4.BuiltList<String>? get restorableByUserIds;

  /// The snapshot IDs.
  ///
  /// Default: Describes the snapshots for which you have create volume permissions.
  _i4.BuiltList<String>? get snapshotIds;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DescribeSnapshotsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        filters,
        maxResults,
        nextToken,
        ownerIds,
        restorableByUserIds,
        snapshotIds,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeSnapshotsRequest');
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
      'ownerIds',
      ownerIds,
    );
    helper.add(
      'restorableByUserIds',
      restorableByUserIds,
    );
    helper.add(
      'snapshotIds',
      snapshotIds,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class DescribeSnapshotsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeSnapshotsRequest> {
  const DescribeSnapshotsRequestEc2QuerySerializer()
      : super('DescribeSnapshotsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeSnapshotsRequest,
        _$DescribeSnapshotsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeSnapshotsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeSnapshotsRequestBuilder();
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
        case 'Owner':
          if (value != null) {
            result.ownerIds.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'Owner',
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
        case 'RestorableBy':
          if (value != null) {
            result.restorableByUserIds.replace(
                (const _i1.XmlBuiltListSerializer(
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
        case 'SnapshotId':
          if (value != null) {
            result.snapshotIds.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'SnapshotId',
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
    final payload = (object as DescribeSnapshotsRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DescribeSnapshotsRequestResponse',
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
    if (payload.ownerIds != null) {
      result
        ..add(const _i1.XmlElementName('Owner'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'Owner',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.ownerIds!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.restorableByUserIds != null) {
      result
        ..add(const _i1.XmlElementName('RestorableBy'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.ec2QueryList)
            .serialize(
          serializers,
          payload.restorableByUserIds!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.snapshotIds != null) {
      result
        ..add(const _i1.XmlElementName('SnapshotId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'SnapshotId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.snapshotIds!,
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
