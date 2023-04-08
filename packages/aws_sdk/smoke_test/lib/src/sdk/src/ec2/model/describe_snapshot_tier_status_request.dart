// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_snapshot_tier_status_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart' as _i3;

part 'describe_snapshot_tier_status_request.g.dart';

abstract class DescribeSnapshotTierStatusRequest
    with
        _i1.HttpInput<DescribeSnapshotTierStatusRequest>,
        _i2.AWSEquatable<DescribeSnapshotTierStatusRequest>
    implements
        Built<DescribeSnapshotTierStatusRequest,
            DescribeSnapshotTierStatusRequestBuilder> {
  factory DescribeSnapshotTierStatusRequest({
    List<_i3.Filter>? filters,
    bool? dryRun,
    String? nextToken,
    int? maxResults,
  }) {
    dryRun ??= false;
    return _$DescribeSnapshotTierStatusRequest._(
      filters: filters == null ? null : _i4.BuiltList(filters),
      dryRun: dryRun,
      nextToken: nextToken,
      maxResults: maxResults,
    );
  }

  factory DescribeSnapshotTierStatusRequest.build(
          [void Function(DescribeSnapshotTierStatusRequestBuilder) updates]) =
      _$DescribeSnapshotTierStatusRequest;

  const DescribeSnapshotTierStatusRequest._();

  factory DescribeSnapshotTierStatusRequest.fromRequest(
    DescribeSnapshotTierStatusRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeSnapshotTierStatusRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeSnapshotTierStatusRequestBuilder b) {
    b.dryRun = false;
  }

  /// The filters.
  ///
  /// *   `snapshot-id` \- The snapshot ID.
  ///
  /// *   `volume-id` \- The ID of the volume the snapshot is for.
  ///
  /// *   `last-tiering-operation` \- The state of the last archive or restore action. (`archival-in-progress` | `archival-completed` | `archival-failed` | `permanent-restore-in-progress` | `permanent-restore-completed` | `permanent-restore-failed` | `temporary-restore-in-progress` | `temporary-restore-completed` | `temporary-restore-failed`)
  _i4.BuiltList<_i3.Filter>? get filters;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The token for the next page of results.
  String? get nextToken;

  /// The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned `nextToken` value.
  int? get maxResults;
  @override
  DescribeSnapshotTierStatusRequest getPayload() => this;
  @override
  List<Object?> get props => [
        filters,
        dryRun,
        nextToken,
        maxResults,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeSnapshotTierStatusRequest');
    helper.add(
      'filters',
      filters,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'maxResults',
      maxResults,
    );
    return helper.toString();
  }
}

class DescribeSnapshotTierStatusRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeSnapshotTierStatusRequest> {
  const DescribeSnapshotTierStatusRequestEc2QuerySerializer()
      : super('DescribeSnapshotTierStatusRequest');

  @override
  Iterable<Type> get types => const [
        DescribeSnapshotTierStatusRequest,
        _$DescribeSnapshotTierStatusRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeSnapshotTierStatusRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeSnapshotTierStatusRequestBuilder();
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
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'NextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'MaxResults':
          if (value != null) {
            result.maxResults = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
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
    final payload = (object as DescribeSnapshotTierStatusRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DescribeSnapshotTierStatusRequestResponse',
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
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    if (payload.nextToken != null) {
      result
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.maxResults != null) {
      result
        ..add(const _i1.XmlElementName('MaxResults'))
        ..add(serializers.serialize(
          payload.maxResults!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    return result;
  }
}
