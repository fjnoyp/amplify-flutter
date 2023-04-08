// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_spot_fleet_requests_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/spot_fleet_request_config.dart'
    as _i2;

part 'describe_spot_fleet_requests_response.g.dart';

/// Contains the output of DescribeSpotFleetRequests.
abstract class DescribeSpotFleetRequestsResponse
    with
        _i1.AWSEquatable<DescribeSpotFleetRequestsResponse>
    implements
        Built<DescribeSpotFleetRequestsResponse,
            DescribeSpotFleetRequestsResponseBuilder> {
  /// Contains the output of DescribeSpotFleetRequests.
  factory DescribeSpotFleetRequestsResponse({
    String? nextToken,
    List<_i2.SpotFleetRequestConfig>? spotFleetRequestConfigs,
  }) {
    return _$DescribeSpotFleetRequestsResponse._(
      nextToken: nextToken,
      spotFleetRequestConfigs: spotFleetRequestConfigs == null
          ? null
          : _i3.BuiltList(spotFleetRequestConfigs),
    );
  }

  /// Contains the output of DescribeSpotFleetRequests.
  factory DescribeSpotFleetRequestsResponse.build(
          [void Function(DescribeSpotFleetRequestsResponseBuilder) updates]) =
      _$DescribeSpotFleetRequestsResponse;

  const DescribeSpotFleetRequestsResponse._();

  /// Constructs a [DescribeSpotFleetRequestsResponse] from a [payload] and [response].
  factory DescribeSpotFleetRequestsResponse.fromResponse(
    DescribeSpotFleetRequestsResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeSpotFleetRequestsResponseEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeSpotFleetRequestsResponseBuilder b) {}

  /// The token required to retrieve the next set of results. This value is `null` when there are no more results to return.
  String? get nextToken;

  /// Information about the configuration of your Spot Fleet.
  _i3.BuiltList<_i2.SpotFleetRequestConfig>? get spotFleetRequestConfigs;
  @override
  List<Object?> get props => [
        nextToken,
        spotFleetRequestConfigs,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeSpotFleetRequestsResponse');
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'spotFleetRequestConfigs',
      spotFleetRequestConfigs,
    );
    return helper.toString();
  }
}

class DescribeSpotFleetRequestsResponseEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeSpotFleetRequestsResponse> {
  const DescribeSpotFleetRequestsResponseEc2QuerySerializer()
      : super('DescribeSpotFleetRequestsResponse');

  @override
  Iterable<Type> get types => const [
        DescribeSpotFleetRequestsResponse,
        _$DescribeSpotFleetRequestsResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeSpotFleetRequestsResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeSpotFleetRequestsResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'nextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'spotFleetRequestConfigSet':
          if (value != null) {
            result.spotFleetRequestConfigs
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.SpotFleetRequestConfig)],
              ),
            ) as _i3.BuiltList<_i2.SpotFleetRequestConfig>));
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
    final payload = (object as DescribeSpotFleetRequestsResponse);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeSpotFleetRequestsResponseResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.nextToken != null) {
      result
        ..add(const _i4.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.spotFleetRequestConfigs != null) {
      result
        ..add(const _i4.XmlElementName('SpotFleetRequestConfigSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.spotFleetRequestConfigs!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.SpotFleetRequestConfig)],
          ),
        ));
    }
    return result;
  }
}
