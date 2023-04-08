// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_fast_launch_images_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart' as _i3;

part 'describe_fast_launch_images_request.g.dart';

abstract class DescribeFastLaunchImagesRequest
    with
        _i1.HttpInput<DescribeFastLaunchImagesRequest>,
        _i2.AWSEquatable<DescribeFastLaunchImagesRequest>
    implements
        Built<DescribeFastLaunchImagesRequest,
            DescribeFastLaunchImagesRequestBuilder> {
  factory DescribeFastLaunchImagesRequest({
    List<String>? imageIds,
    List<_i3.Filter>? filters,
    int? maxResults,
    String? nextToken,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DescribeFastLaunchImagesRequest._(
      imageIds: imageIds == null ? null : _i4.BuiltList(imageIds),
      filters: filters == null ? null : _i4.BuiltList(filters),
      maxResults: maxResults,
      nextToken: nextToken,
      dryRun: dryRun,
    );
  }

  factory DescribeFastLaunchImagesRequest.build(
          [void Function(DescribeFastLaunchImagesRequestBuilder) updates]) =
      _$DescribeFastLaunchImagesRequest;

  const DescribeFastLaunchImagesRequest._();

  factory DescribeFastLaunchImagesRequest.fromRequest(
    DescribeFastLaunchImagesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeFastLaunchImagesRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeFastLaunchImagesRequestBuilder b) {
    b.dryRun = false;
  }

  /// Details for one or more Windows AMI image IDs.
  _i4.BuiltList<String>? get imageIds;

  /// Use the following filters to streamline results.
  ///
  /// *   `resource-type` \- The resource type for pre-provisioning.
  ///
  /// *   `launch-template` \- The launch template that is associated with the pre-provisioned Windows AMI.
  ///
  /// *   `owner-id` \- The owner ID for the pre-provisioning resource.
  ///
  /// *   `state` \- The current state of fast launching for the Windows AMI.
  _i4.BuiltList<_i3.Filter>? get filters;

  /// The maximum number of results to return in a single call. To retrieve the remaining results, make another request with the returned NextToken value. If this parameter is not specified, then all results are returned.
  int? get maxResults;

  /// The token for the next set of results.
  String? get nextToken;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DescribeFastLaunchImagesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        imageIds,
        filters,
        maxResults,
        nextToken,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeFastLaunchImagesRequest');
    helper.add(
      'imageIds',
      imageIds,
    );
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
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class DescribeFastLaunchImagesRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeFastLaunchImagesRequest> {
  const DescribeFastLaunchImagesRequestEc2QuerySerializer()
      : super('DescribeFastLaunchImagesRequest');

  @override
  Iterable<Type> get types => const [
        DescribeFastLaunchImagesRequest,
        _$DescribeFastLaunchImagesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeFastLaunchImagesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeFastLaunchImagesRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ImageId':
          if (value != null) {
            result.imageIds.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'ImageId',
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
        case 'MaxResults':
          if (value != null) {
            result.maxResults = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
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
        case 'DryRun':
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
    final payload = (object as DescribeFastLaunchImagesRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DescribeFastLaunchImagesRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.imageIds != null) {
      result
        ..add(const _i1.XmlElementName('ImageId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'ImageId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.imageIds!,
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
    if (payload.maxResults != null) {
      result
        ..add(const _i1.XmlElementName('MaxResults'))
        ..add(serializers.serialize(
          payload.maxResults!,
          specifiedType: const FullType.nullable(int),
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
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
