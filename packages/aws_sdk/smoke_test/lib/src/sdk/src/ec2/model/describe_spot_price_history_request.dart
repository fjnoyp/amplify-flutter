// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_spot_price_history_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type.dart' as _i4;

part 'describe_spot_price_history_request.g.dart';

/// Contains the parameters for DescribeSpotPriceHistory.
abstract class DescribeSpotPriceHistoryRequest
    with
        _i1.HttpInput<DescribeSpotPriceHistoryRequest>,
        _i2.AWSEquatable<DescribeSpotPriceHistoryRequest>
    implements
        Built<DescribeSpotPriceHistoryRequest,
            DescribeSpotPriceHistoryRequestBuilder> {
  /// Contains the parameters for DescribeSpotPriceHistory.
  factory DescribeSpotPriceHistoryRequest({
    List<_i3.Filter>? filters,
    String? availabilityZone,
    bool? dryRun,
    DateTime? endTime,
    List<_i4.InstanceType>? instanceTypes,
    int? maxResults,
    String? nextToken,
    List<String>? productDescriptions,
    DateTime? startTime,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribeSpotPriceHistoryRequest._(
      filters: filters == null ? null : _i5.BuiltList(filters),
      availabilityZone: availabilityZone,
      dryRun: dryRun,
      endTime: endTime,
      instanceTypes:
          instanceTypes == null ? null : _i5.BuiltList(instanceTypes),
      maxResults: maxResults,
      nextToken: nextToken,
      productDescriptions: productDescriptions == null
          ? null
          : _i5.BuiltList(productDescriptions),
      startTime: startTime,
    );
  }

  /// Contains the parameters for DescribeSpotPriceHistory.
  factory DescribeSpotPriceHistoryRequest.build(
          [void Function(DescribeSpotPriceHistoryRequestBuilder) updates]) =
      _$DescribeSpotPriceHistoryRequest;

  const DescribeSpotPriceHistoryRequest._();

  factory DescribeSpotPriceHistoryRequest.fromRequest(
    DescribeSpotPriceHistoryRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeSpotPriceHistoryRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeSpotPriceHistoryRequestBuilder b) {
    b.dryRun = false;
    b.maxResults = 0;
  }

  /// One or more filters.
  ///
  /// *   `availability-zone` \- The Availability Zone for which prices should be returned.
  ///
  /// *   `instance-type` \- The type of instance (for example, `m3.medium`).
  ///
  /// *   `product-description` \- The product description for the Spot price (`Linux/UNIX` | `Red Hat Enterprise Linux` | `SUSE Linux` | `Windows` | `Linux/UNIX (Amazon VPC)` | `Red Hat Enterprise Linux (Amazon VPC)` | `SUSE Linux (Amazon VPC)` | `Windows (Amazon VPC)`).
  ///
  /// *   `spot-price` \- The Spot price. The value must match exactly (or use wildcards; greater than or less than comparison is not supported).
  ///
  /// *   `timestamp` \- The time stamp of the Spot price history, in UTC format (for example, _YYYY_-_MM_-_DD_T_HH_:_MM_:_SS_Z). You can use wildcards (* and ?). Greater than or less than comparison is not supported.
  _i5.BuiltList<_i3.Filter>? get filters;

  /// Filters the results by the specified Availability Zone.
  String? get availabilityZone;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The date and time, up to the current date, from which to stop retrieving the price history data, in UTC format (for example, _YYYY_-_MM_-_DD_T_HH_:_MM_:_SS_Z).
  DateTime? get endTime;

  /// Filters the results by the specified instance types.
  _i5.BuiltList<_i4.InstanceType>? get instanceTypes;

  /// The maximum number of results to return in a single call. Specify a value between 1 and 1000. The default value is 1000. To retrieve the remaining results, make another call with the returned `NextToken` value.
  int get maxResults;

  /// The token for the next set of results.
  String? get nextToken;

  /// Filters the results by the specified basic product descriptions.
  _i5.BuiltList<String>? get productDescriptions;

  /// The date and time, up to the past 90 days, from which to start retrieving the price history data, in UTC format (for example, _YYYY_-_MM_-_DD_T_HH_:_MM_:_SS_Z).
  DateTime? get startTime;
  @override
  DescribeSpotPriceHistoryRequest getPayload() => this;
  @override
  List<Object?> get props => [
        filters,
        availabilityZone,
        dryRun,
        endTime,
        instanceTypes,
        maxResults,
        nextToken,
        productDescriptions,
        startTime,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeSpotPriceHistoryRequest');
    helper.add(
      'filters',
      filters,
    );
    helper.add(
      'availabilityZone',
      availabilityZone,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'endTime',
      endTime,
    );
    helper.add(
      'instanceTypes',
      instanceTypes,
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
      'productDescriptions',
      productDescriptions,
    );
    helper.add(
      'startTime',
      startTime,
    );
    return helper.toString();
  }
}

class DescribeSpotPriceHistoryRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeSpotPriceHistoryRequest> {
  const DescribeSpotPriceHistoryRequestEc2QuerySerializer()
      : super('DescribeSpotPriceHistoryRequest');

  @override
  Iterable<Type> get types => const [
        DescribeSpotPriceHistoryRequest,
        _$DescribeSpotPriceHistoryRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeSpotPriceHistoryRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeSpotPriceHistoryRequestBuilder();
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
                _i5.BuiltList,
                [FullType(_i3.Filter)],
              ),
            ) as _i5.BuiltList<_i3.Filter>));
          }
          break;
        case 'availabilityZone':
          if (value != null) {
            result.availabilityZone = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'endTime':
          if (value != null) {
            result.endTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'InstanceType':
          if (value != null) {
            result.instanceTypes.replace((const _i1.XmlBuiltListSerializer(
                    indexer: _i1.XmlIndexer.ec2QueryList)
                .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(_i4.InstanceType)],
              ),
            ) as _i5.BuiltList<_i4.InstanceType>));
          }
          break;
        case 'maxResults':
          result.maxResults = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'nextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ProductDescription':
          if (value != null) {
            result.productDescriptions.replace(
                (const _i1.XmlBuiltListSerializer(
                        indexer: _i1.XmlIndexer.ec2QueryList)
                    .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(String)],
              ),
            ) as _i5.BuiltList<String>));
          }
          break;
        case 'startTime':
          if (value != null) {
            result.startTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
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
    final payload = (object as DescribeSpotPriceHistoryRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DescribeSpotPriceHistoryRequestResponse',
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
            _i5.BuiltList,
            [FullType(_i3.Filter)],
          ),
        ));
    }
    if (payload.availabilityZone != null) {
      result
        ..add(const _i1.XmlElementName('AvailabilityZone'))
        ..add(serializers.serialize(
          payload.availabilityZone!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    if (payload.endTime != null) {
      result
        ..add(const _i1.XmlElementName('EndTime'))
        ..add(serializers.serialize(
          payload.endTime!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.instanceTypes != null) {
      result
        ..add(const _i1.XmlElementName('InstanceType'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.ec2QueryList)
            .serialize(
          serializers,
          payload.instanceTypes!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i4.InstanceType)],
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
    if (payload.productDescriptions != null) {
      result
        ..add(const _i1.XmlElementName('ProductDescription'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.ec2QueryList)
            .serialize(
          serializers,
          payload.productDescriptions!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.startTime != null) {
      result
        ..add(const _i1.XmlElementName('StartTime'))
        ..add(serializers.serialize(
          payload.startTime!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    return result;
  }
}
