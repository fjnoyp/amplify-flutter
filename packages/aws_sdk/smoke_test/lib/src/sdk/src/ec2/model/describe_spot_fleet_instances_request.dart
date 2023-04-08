// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_spot_fleet_instances_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'describe_spot_fleet_instances_request.g.dart';

/// Contains the parameters for DescribeSpotFleetInstances.
abstract class DescribeSpotFleetInstancesRequest
    with
        _i1.HttpInput<DescribeSpotFleetInstancesRequest>,
        _i2.AWSEquatable<DescribeSpotFleetInstancesRequest>
    implements
        Built<DescribeSpotFleetInstancesRequest,
            DescribeSpotFleetInstancesRequestBuilder> {
  /// Contains the parameters for DescribeSpotFleetInstances.
  factory DescribeSpotFleetInstancesRequest({
    bool? dryRun,
    int? maxResults,
    String? nextToken,
    required String spotFleetRequestId,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribeSpotFleetInstancesRequest._(
      dryRun: dryRun,
      maxResults: maxResults,
      nextToken: nextToken,
      spotFleetRequestId: spotFleetRequestId,
    );
  }

  /// Contains the parameters for DescribeSpotFleetInstances.
  factory DescribeSpotFleetInstancesRequest.build(
          [void Function(DescribeSpotFleetInstancesRequestBuilder) updates]) =
      _$DescribeSpotFleetInstancesRequest;

  const DescribeSpotFleetInstancesRequest._();

  factory DescribeSpotFleetInstancesRequest.fromRequest(
    DescribeSpotFleetInstancesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeSpotFleetInstancesRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeSpotFleetInstancesRequestBuilder b) {
    b.dryRun = false;
    b.maxResults = 0;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The maximum number of results to return in a single call. Specify a value between 1 and 1000. The default value is 1000. To retrieve the remaining results, make another call with the returned `NextToken` value.
  int get maxResults;

  /// The token for the next set of results.
  String? get nextToken;

  /// The ID of the Spot Fleet request.
  String get spotFleetRequestId;
  @override
  DescribeSpotFleetInstancesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        maxResults,
        nextToken,
        spotFleetRequestId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeSpotFleetInstancesRequest');
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
      'spotFleetRequestId',
      spotFleetRequestId,
    );
    return helper.toString();
  }
}

class DescribeSpotFleetInstancesRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeSpotFleetInstancesRequest> {
  const DescribeSpotFleetInstancesRequestEc2QuerySerializer()
      : super('DescribeSpotFleetInstancesRequest');

  @override
  Iterable<Type> get types => const [
        DescribeSpotFleetInstancesRequest,
        _$DescribeSpotFleetInstancesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeSpotFleetInstancesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeSpotFleetInstancesRequestBuilder();
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
          result.spotFleetRequestId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as DescribeSpotFleetInstancesRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DescribeSpotFleetInstancesRequestResponse',
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
    result
      ..add(const _i1.XmlElementName('SpotFleetRequestId'))
      ..add(serializers.serialize(
        payload.spotFleetRequestId,
        specifiedType: const FullType(String),
      ));
    return result;
  }
}
