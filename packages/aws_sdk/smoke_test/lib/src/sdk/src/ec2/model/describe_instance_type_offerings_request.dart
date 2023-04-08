// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_instance_type_offerings_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/location_type.dart' as _i3;

part 'describe_instance_type_offerings_request.g.dart';

abstract class DescribeInstanceTypeOfferingsRequest
    with
        _i1.HttpInput<DescribeInstanceTypeOfferingsRequest>,
        _i2.AWSEquatable<DescribeInstanceTypeOfferingsRequest>
    implements
        Built<DescribeInstanceTypeOfferingsRequest,
            DescribeInstanceTypeOfferingsRequestBuilder> {
  factory DescribeInstanceTypeOfferingsRequest({
    bool? dryRun,
    _i3.LocationType? locationType,
    List<_i4.Filter>? filters,
    int? maxResults,
    String? nextToken,
  }) {
    dryRun ??= false;
    return _$DescribeInstanceTypeOfferingsRequest._(
      dryRun: dryRun,
      locationType: locationType,
      filters: filters == null ? null : _i5.BuiltList(filters),
      maxResults: maxResults,
      nextToken: nextToken,
    );
  }

  factory DescribeInstanceTypeOfferingsRequest.build(
      [void Function(DescribeInstanceTypeOfferingsRequestBuilder)
          updates]) = _$DescribeInstanceTypeOfferingsRequest;

  const DescribeInstanceTypeOfferingsRequest._();

  factory DescribeInstanceTypeOfferingsRequest.fromRequest(
    DescribeInstanceTypeOfferingsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeInstanceTypeOfferingsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeInstanceTypeOfferingsRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The location type.
  _i3.LocationType? get locationType;

  /// One or more filters. Filter names and values are case-sensitive.
  ///
  /// *   `location` \- This depends on the location type. For example, if the location type is `region` (default), the location is the Region code (for example, `us-east-2`.)
  ///
  /// *   `instance-type` \- The instance type. For example, `c5.2xlarge`.
  _i5.BuiltList<_i4.Filter>? get filters;

  /// The maximum number of results to return for the request in a single page. The remaining results can be seen by sending another request with the next token value.
  int? get maxResults;

  /// The token to retrieve the next page of results.
  String? get nextToken;
  @override
  DescribeInstanceTypeOfferingsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        locationType,
        filters,
        maxResults,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeInstanceTypeOfferingsRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'locationType',
      locationType,
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
    return helper.toString();
  }
}

class DescribeInstanceTypeOfferingsRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DescribeInstanceTypeOfferingsRequest> {
  const DescribeInstanceTypeOfferingsRequestEc2QuerySerializer()
      : super('DescribeInstanceTypeOfferingsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeInstanceTypeOfferingsRequest,
        _$DescribeInstanceTypeOfferingsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeInstanceTypeOfferingsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeInstanceTypeOfferingsRequestBuilder();
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
        case 'LocationType':
          if (value != null) {
            result.locationType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.LocationType),
            ) as _i3.LocationType);
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
                _i5.BuiltList,
                [FullType(_i4.Filter)],
              ),
            ) as _i5.BuiltList<_i4.Filter>));
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
    final payload = (object as DescribeInstanceTypeOfferingsRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DescribeInstanceTypeOfferingsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    if (payload.locationType != null) {
      result
        ..add(const _i1.XmlElementName('LocationType'))
        ..add(serializers.serialize(
          payload.locationType!,
          specifiedType: const FullType.nullable(_i3.LocationType),
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
            _i5.BuiltList,
            [FullType(_i4.Filter)],
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
    return result;
  }
}
