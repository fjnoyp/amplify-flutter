// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_volumes_modifications_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart' as _i3;

part 'describe_volumes_modifications_request.g.dart';

abstract class DescribeVolumesModificationsRequest
    with
        _i1.HttpInput<DescribeVolumesModificationsRequest>,
        _i2.AWSEquatable<DescribeVolumesModificationsRequest>
    implements
        Built<DescribeVolumesModificationsRequest,
            DescribeVolumesModificationsRequestBuilder> {
  factory DescribeVolumesModificationsRequest({
    bool? dryRun,
    List<String>? volumeIds,
    List<_i3.Filter>? filters,
    String? nextToken,
    int? maxResults,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribeVolumesModificationsRequest._(
      dryRun: dryRun,
      volumeIds: volumeIds == null ? null : _i4.BuiltList(volumeIds),
      filters: filters == null ? null : _i4.BuiltList(filters),
      nextToken: nextToken,
      maxResults: maxResults,
    );
  }

  factory DescribeVolumesModificationsRequest.build(
          [void Function(DescribeVolumesModificationsRequestBuilder) updates]) =
      _$DescribeVolumesModificationsRequest;

  const DescribeVolumesModificationsRequest._();

  factory DescribeVolumesModificationsRequest.fromRequest(
    DescribeVolumesModificationsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeVolumesModificationsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeVolumesModificationsRequestBuilder b) {
    b.dryRun = false;
    b.maxResults = 0;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The IDs of the volumes.
  _i4.BuiltList<String>? get volumeIds;

  /// The filters.
  ///
  /// *   `modification-state` \- The current modification state (modifying | optimizing | completed | failed).
  ///
  /// *   `original-iops` \- The original IOPS rate of the volume.
  ///
  /// *   `original-size` \- The original size of the volume, in GiB.
  ///
  /// *   `original-volume-type` \- The original volume type of the volume (standard | io1 | io2 | gp2 | sc1 | st1).
  ///
  /// *   `originalMultiAttachEnabled` \- Indicates whether Multi-Attach support was enabled (true | false).
  ///
  /// *   `start-time` \- The modification start time.
  ///
  /// *   `target-iops` \- The target IOPS rate of the volume.
  ///
  /// *   `target-size` \- The target size of the volume, in GiB.
  ///
  /// *   `target-volume-type` \- The target volume type of the volume (standard | io1 | io2 | gp2 | sc1 | st1).
  ///
  /// *   `targetMultiAttachEnabled` \- Indicates whether Multi-Attach support is to be enabled (true | false).
  ///
  /// *   `volume-id` \- The ID of the volume.
  _i4.BuiltList<_i3.Filter>? get filters;

  /// The `nextToken` value returned by a previous paginated request.
  String? get nextToken;

  /// The maximum number of results (up to a limit of 500) to be returned in a paginated request.
  int get maxResults;
  @override
  DescribeVolumesModificationsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        volumeIds,
        filters,
        nextToken,
        maxResults,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeVolumesModificationsRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'volumeIds',
      volumeIds,
    );
    helper.add(
      'filters',
      filters,
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

class DescribeVolumesModificationsRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DescribeVolumesModificationsRequest> {
  const DescribeVolumesModificationsRequestEc2QuerySerializer()
      : super('DescribeVolumesModificationsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeVolumesModificationsRequest,
        _$DescribeVolumesModificationsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeVolumesModificationsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeVolumesModificationsRequestBuilder();
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
        case 'NextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'MaxResults':
          result.maxResults = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
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
    final payload = (object as DescribeVolumesModificationsRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DescribeVolumesModificationsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
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
    if (payload.nextToken != null) {
      result
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('MaxResults'))
      ..add(serializers.serialize(
        payload.maxResults,
        specifiedType: const FullType(int),
      ));
    return result;
  }
}
