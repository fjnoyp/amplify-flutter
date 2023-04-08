// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_addresses_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart' as _i3;

part 'describe_addresses_request.g.dart';

abstract class DescribeAddressesRequest
    with
        _i1.HttpInput<DescribeAddressesRequest>,
        _i2.AWSEquatable<DescribeAddressesRequest>
    implements
        Built<DescribeAddressesRequest, DescribeAddressesRequestBuilder> {
  factory DescribeAddressesRequest({
    List<_i3.Filter>? filters,
    List<String>? publicIps,
    List<String>? allocationIds,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$DescribeAddressesRequest._(
      filters: filters == null ? null : _i4.BuiltList(filters),
      publicIps: publicIps == null ? null : _i4.BuiltList(publicIps),
      allocationIds:
          allocationIds == null ? null : _i4.BuiltList(allocationIds),
      dryRun: dryRun,
    );
  }

  factory DescribeAddressesRequest.build(
          [void Function(DescribeAddressesRequestBuilder) updates]) =
      _$DescribeAddressesRequest;

  const DescribeAddressesRequest._();

  factory DescribeAddressesRequest.fromRequest(
    DescribeAddressesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeAddressesRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeAddressesRequestBuilder b) {
    b.dryRun = false;
  }

  /// One or more filters. Filter names and values are case-sensitive.
  ///
  /// *   `allocation-id` \- \[EC2-VPC\] The allocation ID for the address.
  ///
  /// *   `association-id` \- \[EC2-VPC\] The association ID for the address.
  ///
  /// *   `domain` \- Indicates whether the address is for use in EC2-Classic (`standard`) or in a VPC (`vpc`).
  ///
  /// *   `instance-id` \- The ID of the instance the address is associated with, if any.
  ///
  /// *   `network-border-group` \- A unique set of Availability Zones, Local Zones, or Wavelength Zones from where Amazon Web Services advertises IP addresses.
  ///
  /// *   `network-interface-id` \- \[EC2-VPC\] The ID of the network interface that the address is associated with, if any.
  ///
  /// *   `network-interface-owner-id` \- The Amazon Web Services account ID of the owner.
  ///
  /// *   `private-ip-address` \- \[EC2-VPC\] The private IP address associated with the Elastic IP address.
  ///
  /// *   `public-ip` \- The Elastic IP address, or the carrier IP address.
  ///
  /// *   `tag`: \- The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
  ///
  /// *   `tag-key` \- The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
  _i4.BuiltList<_i3.Filter>? get filters;

  /// One or more Elastic IP addresses.
  ///
  /// Default: Describes all your Elastic IP addresses.
  _i4.BuiltList<String>? get publicIps;

  /// \[EC2-VPC\] Information about the allocation IDs.
  _i4.BuiltList<String>? get allocationIds;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  DescribeAddressesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        filters,
        publicIps,
        allocationIds,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeAddressesRequest');
    helper.add(
      'filters',
      filters,
    );
    helper.add(
      'publicIps',
      publicIps,
    );
    helper.add(
      'allocationIds',
      allocationIds,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class DescribeAddressesRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeAddressesRequest> {
  const DescribeAddressesRequestEc2QuerySerializer()
      : super('DescribeAddressesRequest');

  @override
  Iterable<Type> get types => const [
        DescribeAddressesRequest,
        _$DescribeAddressesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeAddressesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeAddressesRequestBuilder();
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
        case 'PublicIp':
          if (value != null) {
            result.publicIps.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'PublicIp',
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
        case 'AllocationId':
          if (value != null) {
            result.allocationIds.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'AllocationId',
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
    final payload = (object as DescribeAddressesRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DescribeAddressesRequestResponse',
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
    if (payload.publicIps != null) {
      result
        ..add(const _i1.XmlElementName('PublicIp'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'PublicIp',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.publicIps!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.allocationIds != null) {
      result
        ..add(const _i1.XmlElementName('AllocationId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'AllocationId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.allocationIds!,
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
