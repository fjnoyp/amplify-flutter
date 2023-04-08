// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_fpga_images_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart' as _i3;

part 'describe_fpga_images_request.g.dart';

abstract class DescribeFpgaImagesRequest
    with
        _i1.HttpInput<DescribeFpgaImagesRequest>,
        _i2.AWSEquatable<DescribeFpgaImagesRequest>
    implements
        Built<DescribeFpgaImagesRequest, DescribeFpgaImagesRequestBuilder> {
  factory DescribeFpgaImagesRequest({
    bool? dryRun,
    List<String>? fpgaImageIds,
    List<String>? owners,
    List<_i3.Filter>? filters,
    String? nextToken,
    int? maxResults,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribeFpgaImagesRequest._(
      dryRun: dryRun,
      fpgaImageIds: fpgaImageIds == null ? null : _i4.BuiltList(fpgaImageIds),
      owners: owners == null ? null : _i4.BuiltList(owners),
      filters: filters == null ? null : _i4.BuiltList(filters),
      nextToken: nextToken,
      maxResults: maxResults,
    );
  }

  factory DescribeFpgaImagesRequest.build(
          [void Function(DescribeFpgaImagesRequestBuilder) updates]) =
      _$DescribeFpgaImagesRequest;

  const DescribeFpgaImagesRequest._();

  factory DescribeFpgaImagesRequest.fromRequest(
    DescribeFpgaImagesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeFpgaImagesRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeFpgaImagesRequestBuilder b) {
    b.dryRun = false;
    b.maxResults = 0;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The AFI IDs.
  _i4.BuiltList<String>? get fpgaImageIds;

  /// Filters the AFI by owner. Specify an Amazon Web Services account ID, `self` (owner is the sender of the request), or an Amazon Web Services owner alias (valid values are `amazon` | `aws-marketplace`).
  _i4.BuiltList<String>? get owners;

  /// The filters.
  ///
  /// *   `create-time` \- The creation time of the AFI.
  ///
  /// *   `fpga-image-id` \- The FPGA image identifier (AFI ID).
  ///
  /// *   `fpga-image-global-id` \- The global FPGA image identifier (AGFI ID).
  ///
  /// *   `name` \- The name of the AFI.
  ///
  /// *   `owner-id` \- The Amazon Web Services account ID of the AFI owner.
  ///
  /// *   `product-code` \- The product code.
  ///
  /// *   `shell-version` \- The version of the Amazon Web Services Shell that was used to create the bitstream.
  ///
  /// *   `state` \- The state of the AFI (`pending` | `failed` | `available` | `unavailable`).
  ///
  /// *   `tag`: \- The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
  ///
  /// *   `tag-key` \- The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
  ///
  /// *   `update-time` \- The time of the most recent update.
  _i4.BuiltList<_i3.Filter>? get filters;

  /// The token to retrieve the next page of results.
  String? get nextToken;

  /// The maximum number of results to return in a single call.
  int get maxResults;
  @override
  DescribeFpgaImagesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        fpgaImageIds,
        owners,
        filters,
        nextToken,
        maxResults,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeFpgaImagesRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'fpgaImageIds',
      fpgaImageIds,
    );
    helper.add(
      'owners',
      owners,
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

class DescribeFpgaImagesRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeFpgaImagesRequest> {
  const DescribeFpgaImagesRequestEc2QuerySerializer()
      : super('DescribeFpgaImagesRequest');

  @override
  Iterable<Type> get types => const [
        DescribeFpgaImagesRequest,
        _$DescribeFpgaImagesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeFpgaImagesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeFpgaImagesRequestBuilder();
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
        case 'FpgaImageId':
          if (value != null) {
            result.fpgaImageIds.replace((const _i1.XmlBuiltListSerializer(
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
        case 'Owner':
          if (value != null) {
            result.owners.replace((const _i1.XmlBuiltListSerializer(
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
    final payload = (object as DescribeFpgaImagesRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DescribeFpgaImagesRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    if (payload.fpgaImageIds != null) {
      result
        ..add(const _i1.XmlElementName('FpgaImageId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.fpgaImageIds!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.owners != null) {
      result
        ..add(const _i1.XmlElementName('Owner'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'Owner',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.owners!,
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
