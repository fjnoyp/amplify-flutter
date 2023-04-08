// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_moving_addresses_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart' as _i3;

part 'describe_moving_addresses_request.g.dart';

abstract class DescribeMovingAddressesRequest
    with
        _i1.HttpInput<DescribeMovingAddressesRequest>,
        _i2.AWSEquatable<DescribeMovingAddressesRequest>
    implements
        Built<DescribeMovingAddressesRequest,
            DescribeMovingAddressesRequestBuilder> {
  factory DescribeMovingAddressesRequest({
    List<_i3.Filter>? filters,
    bool? dryRun,
    int? maxResults,
    String? nextToken,
    List<String>? publicIps,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribeMovingAddressesRequest._(
      filters: filters == null ? null : _i4.BuiltList(filters),
      dryRun: dryRun,
      maxResults: maxResults,
      nextToken: nextToken,
      publicIps: publicIps == null ? null : _i4.BuiltList(publicIps),
    );
  }

  factory DescribeMovingAddressesRequest.build(
          [void Function(DescribeMovingAddressesRequestBuilder) updates]) =
      _$DescribeMovingAddressesRequest;

  const DescribeMovingAddressesRequest._();

  factory DescribeMovingAddressesRequest.fromRequest(
    DescribeMovingAddressesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeMovingAddressesRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeMovingAddressesRequestBuilder b) {
    b.dryRun = false;
    b.maxResults = 0;
  }

  /// One or more filters.
  ///
  /// *   `moving-status` \- The status of the Elastic IP address (`MovingToVpc` | `RestoringToClassic`).
  _i4.BuiltList<_i3.Filter>? get filters;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The maximum number of results to return for the request in a single page. The remaining results of the initial request can be seen by sending another request with the returned `NextToken` value. This value can be between 5 and 1000; if `MaxResults` is given a value outside of this range, an error is returned.
  ///
  /// Default: If no value is provided, the default is 1000.
  int get maxResults;

  /// The token for the next page of results.
  String? get nextToken;

  /// One or more Elastic IP addresses.
  _i4.BuiltList<String>? get publicIps;
  @override
  DescribeMovingAddressesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        filters,
        dryRun,
        maxResults,
        nextToken,
        publicIps,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeMovingAddressesRequest');
    helper.add(
      'filters',
      filters,
    );
    helper.add(
      'dryRun',
      dryRun,
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
      'publicIps',
      publicIps,
    );
    return helper.toString();
  }
}

class DescribeMovingAddressesRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeMovingAddressesRequest> {
  const DescribeMovingAddressesRequestEc2QuerySerializer()
      : super('DescribeMovingAddressesRequest');

  @override
  Iterable<Type> get types => const [
        DescribeMovingAddressesRequest,
        _$DescribeMovingAddressesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeMovingAddressesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeMovingAddressesRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'filter':
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
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
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
        case 'publicIp':
          if (value != null) {
            result.publicIps.replace((const _i1.XmlBuiltListSerializer(
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
    final payload = (object as DescribeMovingAddressesRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DescribeMovingAddressesRequestResponse',
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
    if (payload.publicIps != null) {
      result
        ..add(const _i1.XmlElementName('PublicIp'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
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
    return result;
  }
}
