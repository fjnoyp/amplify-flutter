// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_reserved_instances_offerings_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i10;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i5;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/offering_class_type.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/offering_type_values.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/ec2/model/ri_product_description.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/ec2/model/tenancy.dart' as _i8;

part 'describe_reserved_instances_offerings_request.g.dart';

/// Contains the parameters for DescribeReservedInstancesOfferings.
abstract class DescribeReservedInstancesOfferingsRequest
    with
        _i1.HttpInput<DescribeReservedInstancesOfferingsRequest>,
        _i2.AWSEquatable<DescribeReservedInstancesOfferingsRequest>
    implements
        Built<DescribeReservedInstancesOfferingsRequest,
            DescribeReservedInstancesOfferingsRequestBuilder> {
  /// Contains the parameters for DescribeReservedInstancesOfferings.
  factory DescribeReservedInstancesOfferingsRequest({
    String? availabilityZone,
    List<_i3.Filter>? filters,
    bool? includeMarketplace,
    _i4.InstanceType? instanceType,
    _i5.Int64? maxDuration,
    int? maxInstanceCount,
    _i5.Int64? minDuration,
    _i6.OfferingClassType? offeringClass,
    _i7.RiProductDescription? productDescription,
    List<String>? reservedInstancesOfferingIds,
    bool? dryRun,
    _i8.Tenancy? instanceTenancy,
    int? maxResults,
    String? nextToken,
    _i9.OfferingTypeValues? offeringType,
  }) {
    includeMarketplace ??= false;
    maxDuration ??= _i5.Int64.ZERO;
    maxInstanceCount ??= 0;
    minDuration ??= _i5.Int64.ZERO;
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribeReservedInstancesOfferingsRequest._(
      availabilityZone: availabilityZone,
      filters: filters == null ? null : _i10.BuiltList(filters),
      includeMarketplace: includeMarketplace,
      instanceType: instanceType,
      maxDuration: maxDuration,
      maxInstanceCount: maxInstanceCount,
      minDuration: minDuration,
      offeringClass: offeringClass,
      productDescription: productDescription,
      reservedInstancesOfferingIds: reservedInstancesOfferingIds == null
          ? null
          : _i10.BuiltList(reservedInstancesOfferingIds),
      dryRun: dryRun,
      instanceTenancy: instanceTenancy,
      maxResults: maxResults,
      nextToken: nextToken,
      offeringType: offeringType,
    );
  }

  /// Contains the parameters for DescribeReservedInstancesOfferings.
  factory DescribeReservedInstancesOfferingsRequest.build(
      [void Function(DescribeReservedInstancesOfferingsRequestBuilder)
          updates]) = _$DescribeReservedInstancesOfferingsRequest;

  const DescribeReservedInstancesOfferingsRequest._();

  factory DescribeReservedInstancesOfferingsRequest.fromRequest(
    DescribeReservedInstancesOfferingsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeReservedInstancesOfferingsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeReservedInstancesOfferingsRequestBuilder b) {
    b.includeMarketplace = false;
    b.maxDuration = _i5.Int64.ZERO;
    b.maxInstanceCount = 0;
    b.minDuration = _i5.Int64.ZERO;
    b.dryRun = false;
    b.maxResults = 0;
  }

  /// The Availability Zone in which the Reserved Instance can be used.
  String? get availabilityZone;

  /// One or more filters.
  ///
  /// *   `availability-zone` \- The Availability Zone where the Reserved Instance can be used.
  ///
  /// *   `duration` \- The duration of the Reserved Instance (for example, one year or three years), in seconds (`31536000` | `94608000`).
  ///
  /// *   `fixed-price` \- The purchase price of the Reserved Instance (for example, 9800.0).
  ///
  /// *   `instance-type` \- The instance type that is covered by the reservation.
  ///
  /// *   `marketplace` \- Set to `true` to show only Reserved Instance Marketplace offerings. When this filter is not used, which is the default behavior, all offerings from both Amazon Web Services and the Reserved Instance Marketplace are listed.
  ///
  /// *   `product-description` \- The Reserved Instance product platform description. Instances that include `(Amazon VPC)` in the product platform description will only be displayed to EC2-Classic account holders and are for use with Amazon VPC. (`Linux/UNIX` | `Linux/UNIX (Amazon VPC)` | `SUSE Linux` | `SUSE Linux (Amazon VPC)` | `Red Hat Enterprise Linux` | `Red Hat Enterprise Linux (Amazon VPC)` | `Red Hat Enterprise Linux with HA (Amazon VPC)` | `Windows` | `Windows (Amazon VPC)` | `Windows with SQL Server Standard` | `Windows with SQL Server Standard (Amazon VPC)` | `Windows with SQL Server Web` | `Windows with SQL Server Web (Amazon VPC)` | `Windows with SQL Server Enterprise` | `Windows with SQL Server Enterprise (Amazon VPC)`)
  ///
  /// *   `reserved-instances-offering-id` \- The Reserved Instances offering ID.
  ///
  /// *   `scope` \- The scope of the Reserved Instance (`Availability Zone` or `Region`).
  ///
  /// *   `usage-price` \- The usage price of the Reserved Instance, per hour (for example, 0.84).
  _i10.BuiltList<_i3.Filter>? get filters;

  /// Include Reserved Instance Marketplace offerings in the response.
  bool get includeMarketplace;

  /// The instance type that the reservation will cover (for example, `m1.small`). For more information, see [Instance types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html) in the _Amazon EC2 User Guide_.
  _i4.InstanceType? get instanceType;

  /// The maximum duration (in seconds) to filter when searching for offerings.
  ///
  /// Default: 94608000 (3 years)
  _i5.Int64 get maxDuration;

  /// The maximum number of instances to filter when searching for offerings.
  ///
  /// Default: 20
  int get maxInstanceCount;

  /// The minimum duration (in seconds) to filter when searching for offerings.
  ///
  /// Default: 2592000 (1 month)
  _i5.Int64 get minDuration;

  /// The offering class of the Reserved Instance. Can be `standard` or `convertible`.
  _i6.OfferingClassType? get offeringClass;

  /// The Reserved Instance product platform description. Instances that include `(Amazon VPC)` in the description are for use with Amazon VPC.
  _i7.RiProductDescription? get productDescription;

  /// One or more Reserved Instances offering IDs.
  _i10.BuiltList<String>? get reservedInstancesOfferingIds;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The tenancy of the instances covered by the reservation. A Reserved Instance with a tenancy of `dedicated` is applied to instances that run in a VPC on single-tenant hardware (i.e., Dedicated Instances).
  ///
  /// **Important:** The `host` value cannot be used with this parameter. Use the `default` or `dedicated` values only.
  ///
  /// Default: `default`
  _i8.Tenancy? get instanceTenancy;

  /// The maximum number of results to return for the request in a single page. The remaining results of the initial request can be seen by sending another request with the returned `NextToken` value. The maximum is 100.
  ///
  /// Default: 100
  int get maxResults;

  /// The token to retrieve the next page of results.
  String? get nextToken;

  /// The Reserved Instance offering type. If you are using tools that predate the 2011-11-01 API version, you only have access to the `Medium Utilization` Reserved Instance offering type.
  _i9.OfferingTypeValues? get offeringType;
  @override
  DescribeReservedInstancesOfferingsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        availabilityZone,
        filters,
        includeMarketplace,
        instanceType,
        maxDuration,
        maxInstanceCount,
        minDuration,
        offeringClass,
        productDescription,
        reservedInstancesOfferingIds,
        dryRun,
        instanceTenancy,
        maxResults,
        nextToken,
        offeringType,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeReservedInstancesOfferingsRequest');
    helper.add(
      'availabilityZone',
      availabilityZone,
    );
    helper.add(
      'filters',
      filters,
    );
    helper.add(
      'includeMarketplace',
      includeMarketplace,
    );
    helper.add(
      'instanceType',
      instanceType,
    );
    helper.add(
      'maxDuration',
      maxDuration,
    );
    helper.add(
      'maxInstanceCount',
      maxInstanceCount,
    );
    helper.add(
      'minDuration',
      minDuration,
    );
    helper.add(
      'offeringClass',
      offeringClass,
    );
    helper.add(
      'productDescription',
      productDescription,
    );
    helper.add(
      'reservedInstancesOfferingIds',
      reservedInstancesOfferingIds,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'instanceTenancy',
      instanceTenancy,
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
      'offeringType',
      offeringType,
    );
    return helper.toString();
  }
}

class DescribeReservedInstancesOfferingsRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DescribeReservedInstancesOfferingsRequest> {
  const DescribeReservedInstancesOfferingsRequestEc2QuerySerializer()
      : super('DescribeReservedInstancesOfferingsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeReservedInstancesOfferingsRequest,
        _$DescribeReservedInstancesOfferingsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeReservedInstancesOfferingsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeReservedInstancesOfferingsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'AvailabilityZone':
          if (value != null) {
            result.availabilityZone = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
                _i10.BuiltList,
                [FullType(_i3.Filter)],
              ),
            ) as _i10.BuiltList<_i3.Filter>));
          }
          break;
        case 'IncludeMarketplace':
          result.includeMarketplace = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'InstanceType':
          if (value != null) {
            result.instanceType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.InstanceType),
            ) as _i4.InstanceType);
          }
          break;
        case 'MaxDuration':
          result.maxDuration = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i5.Int64),
          ) as _i5.Int64);
          break;
        case 'MaxInstanceCount':
          result.maxInstanceCount = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
          break;
        case 'MinDuration':
          result.minDuration = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i5.Int64),
          ) as _i5.Int64);
          break;
        case 'OfferingClass':
          if (value != null) {
            result.offeringClass = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.OfferingClassType),
            ) as _i6.OfferingClassType);
          }
          break;
        case 'ProductDescription':
          if (value != null) {
            result.productDescription = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i7.RiProductDescription),
            ) as _i7.RiProductDescription);
          }
          break;
        case 'ReservedInstancesOfferingId':
          if (value != null) {
            result.reservedInstancesOfferingIds.replace(
                (const _i1.XmlBuiltListSerializer(
                        indexer: _i1.XmlIndexer.ec2QueryList)
                    .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i10.BuiltList,
                [FullType(String)],
              ),
            ) as _i10.BuiltList<String>));
          }
          break;
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'instanceTenancy':
          if (value != null) {
            result.instanceTenancy = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i8.Tenancy),
            ) as _i8.Tenancy);
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
        case 'offeringType':
          if (value != null) {
            result.offeringType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i9.OfferingTypeValues),
            ) as _i9.OfferingTypeValues);
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
    final payload = (object as DescribeReservedInstancesOfferingsRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DescribeReservedInstancesOfferingsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.availabilityZone != null) {
      result
        ..add(const _i1.XmlElementName('AvailabilityZone'))
        ..add(serializers.serialize(
          payload.availabilityZone!,
          specifiedType: const FullType(String),
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
            _i10.BuiltList,
            [FullType(_i3.Filter)],
          ),
        ));
    }
    result
      ..add(const _i1.XmlElementName('IncludeMarketplace'))
      ..add(serializers.serialize(
        payload.includeMarketplace,
        specifiedType: const FullType(bool),
      ));
    if (payload.instanceType != null) {
      result
        ..add(const _i1.XmlElementName('InstanceType'))
        ..add(serializers.serialize(
          payload.instanceType!,
          specifiedType: const FullType.nullable(_i4.InstanceType),
        ));
    }
    result
      ..add(const _i1.XmlElementName('MaxDuration'))
      ..add(serializers.serialize(
        payload.maxDuration,
        specifiedType: const FullType(_i5.Int64),
      ));
    result
      ..add(const _i1.XmlElementName('MaxInstanceCount'))
      ..add(serializers.serialize(
        payload.maxInstanceCount,
        specifiedType: const FullType(int),
      ));
    result
      ..add(const _i1.XmlElementName('MinDuration'))
      ..add(serializers.serialize(
        payload.minDuration,
        specifiedType: const FullType(_i5.Int64),
      ));
    if (payload.offeringClass != null) {
      result
        ..add(const _i1.XmlElementName('OfferingClass'))
        ..add(serializers.serialize(
          payload.offeringClass!,
          specifiedType: const FullType.nullable(_i6.OfferingClassType),
        ));
    }
    if (payload.productDescription != null) {
      result
        ..add(const _i1.XmlElementName('ProductDescription'))
        ..add(serializers.serialize(
          payload.productDescription!,
          specifiedType: const FullType.nullable(_i7.RiProductDescription),
        ));
    }
    if (payload.reservedInstancesOfferingIds != null) {
      result
        ..add(const _i1.XmlElementName('ReservedInstancesOfferingId'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.ec2QueryList)
            .serialize(
          serializers,
          payload.reservedInstancesOfferingIds!,
          specifiedType: const FullType.nullable(
            _i10.BuiltList,
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
    if (payload.instanceTenancy != null) {
      result
        ..add(const _i1.XmlElementName('InstanceTenancy'))
        ..add(serializers.serialize(
          payload.instanceTenancy!,
          specifiedType: const FullType.nullable(_i8.Tenancy),
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
    if (payload.offeringType != null) {
      result
        ..add(const _i1.XmlElementName('OfferingType'))
        ..add(serializers.serialize(
          payload.offeringType!,
          specifiedType: const FullType.nullable(_i9.OfferingTypeValues),
        ));
    }
    return result;
  }
}
