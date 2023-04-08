// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_spot_fleet_requests_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'describe_spot_fleet_requests_request.g.dart';

/// Contains the parameters for DescribeSpotFleetRequests.
abstract class DescribeSpotFleetRequestsRequest
    with
        _i1.HttpInput<DescribeSpotFleetRequestsRequest>,
        _i2.AWSEquatable<DescribeSpotFleetRequestsRequest>
    implements
        Built<DescribeSpotFleetRequestsRequest,
            DescribeSpotFleetRequestsRequestBuilder> {
  /// Contains the parameters for DescribeSpotFleetRequests.
  factory DescribeSpotFleetRequestsRequest({
    bool? dryRun,
    int? maxResults,
    String? nextToken,
    List<String>? spotFleetRequestIds,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribeSpotFleetRequestsRequest._(
      dryRun: dryRun,
      maxResults: maxResults,
      nextToken: nextToken,
      spotFleetRequestIds: spotFleetRequestIds == null
          ? null
          : _i3.BuiltList(spotFleetRequestIds),
    );
  }

  /// Contains the parameters for DescribeSpotFleetRequests.
  factory DescribeSpotFleetRequestsRequest.build(
          [void Function(DescribeSpotFleetRequestsRequestBuilder) updates]) =
      _$DescribeSpotFleetRequestsRequest;

  const DescribeSpotFleetRequestsRequest._();

  factory DescribeSpotFleetRequestsRequest.fromRequest(
    DescribeSpotFleetRequestsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeSpotFleetRequestsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeSpotFleetRequestsRequestBuilder b) {
    b.dryRun = false;
    b.maxResults = 0;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The maximum number of results to return in a single call. Specify a value between 1 and 1000. The default value is 1000. To retrieve the remaining results, make another call with the returned `NextToken` value.
  int get maxResults;

  /// The token for the next set of results.
  String? get nextToken;

  /// The IDs of the Spot Fleet requests.
  _i3.BuiltList<String>? get spotFleetRequestIds;
  @override
  DescribeSpotFleetRequestsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        maxResults,
        nextToken,
        spotFleetRequestIds,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeSpotFleetRequestsRequest');
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
      'spotFleetRequestIds',
      spotFleetRequestIds,
    );
    return helper.toString();
  }
}

class DescribeSpotFleetRequestsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeSpotFleetRequestsRequest> {
  const DescribeSpotFleetRequestsRequestEc2QuerySerializer()
      : super('DescribeSpotFleetRequestsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeSpotFleetRequestsRequest,
        _$DescribeSpotFleetRequestsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeSpotFleetRequestsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeSpotFleetRequestsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
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
        case 'spotFleetRequestId':
          if (value != null) {
            result.spotFleetRequestIds
                .replace((const _i1.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(String)],
              ),
            ) as _i3.BuiltList<String>));
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
    final payload = (object as DescribeSpotFleetRequestsRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DescribeSpotFleetRequestsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
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
    if (payload.spotFleetRequestIds != null) {
      result
        ..add(const _i1.XmlElementName('SpotFleetRequestId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.spotFleetRequestIds!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result;
  }
}
