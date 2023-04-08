// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_vpc_endpoint_connection_notifications_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart' as _i3;

part 'describe_vpc_endpoint_connection_notifications_request.g.dart';

abstract class DescribeVpcEndpointConnectionNotificationsRequest
    with
        _i1.HttpInput<DescribeVpcEndpointConnectionNotificationsRequest>,
        _i2.AWSEquatable<DescribeVpcEndpointConnectionNotificationsRequest>
    implements
        Built<DescribeVpcEndpointConnectionNotificationsRequest,
            DescribeVpcEndpointConnectionNotificationsRequestBuilder> {
  factory DescribeVpcEndpointConnectionNotificationsRequest({
    bool? dryRun,
    String? connectionNotificationId,
    List<_i3.Filter>? filters,
    int? maxResults,
    String? nextToken,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribeVpcEndpointConnectionNotificationsRequest._(
      dryRun: dryRun,
      connectionNotificationId: connectionNotificationId,
      filters: filters == null ? null : _i4.BuiltList(filters),
      maxResults: maxResults,
      nextToken: nextToken,
    );
  }

  factory DescribeVpcEndpointConnectionNotificationsRequest.build(
      [void Function(DescribeVpcEndpointConnectionNotificationsRequestBuilder)
          updates]) = _$DescribeVpcEndpointConnectionNotificationsRequest;

  const DescribeVpcEndpointConnectionNotificationsRequest._();

  factory DescribeVpcEndpointConnectionNotificationsRequest.fromRequest(
    DescribeVpcEndpointConnectionNotificationsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeVpcEndpointConnectionNotificationsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      DescribeVpcEndpointConnectionNotificationsRequestBuilder b) {
    b.dryRun = false;
    b.maxResults = 0;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the notification.
  String? get connectionNotificationId;

  /// One or more filters.
  ///
  /// *   `connection-notification-arn` \- The ARN of the SNS topic for the notification.
  ///
  /// *   `connection-notification-id` \- The ID of the notification.
  ///
  /// *   `connection-notification-state` \- The state of the notification (`Enabled` | `Disabled`).
  ///
  /// *   `connection-notification-type` \- The type of notification (`Topic`).
  ///
  /// *   `service-id` \- The ID of the endpoint service.
  ///
  /// *   `vpc-endpoint-id` \- The ID of the VPC endpoint.
  _i4.BuiltList<_i3.Filter>? get filters;

  /// The maximum number of results to return in a single call. To retrieve the remaining results, make another request with the returned `NextToken` value.
  int get maxResults;

  /// The token to request the next page of results.
  String? get nextToken;
  @override
  DescribeVpcEndpointConnectionNotificationsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        connectionNotificationId,
        filters,
        maxResults,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeVpcEndpointConnectionNotificationsRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'connectionNotificationId',
      connectionNotificationId,
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

class DescribeVpcEndpointConnectionNotificationsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<
        DescribeVpcEndpointConnectionNotificationsRequest> {
  const DescribeVpcEndpointConnectionNotificationsRequestEc2QuerySerializer()
      : super('DescribeVpcEndpointConnectionNotificationsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeVpcEndpointConnectionNotificationsRequest,
        _$DescribeVpcEndpointConnectionNotificationsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeVpcEndpointConnectionNotificationsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeVpcEndpointConnectionNotificationsRequestBuilder();
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
        case 'ConnectionNotificationId':
          if (value != null) {
            result.connectionNotificationId = (serializers.deserialize(
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
                _i4.BuiltList,
                [FullType(_i3.Filter)],
              ),
            ) as _i4.BuiltList<_i3.Filter>));
          }
          break;
        case 'MaxResults':
          result.maxResults = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
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
    final payload =
        (object as DescribeVpcEndpointConnectionNotificationsRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DescribeVpcEndpointConnectionNotificationsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    if (payload.connectionNotificationId != null) {
      result
        ..add(const _i1.XmlElementName('ConnectionNotificationId'))
        ..add(serializers.serialize(
          payload.connectionNotificationId!,
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
            _i4.BuiltList,
            [FullType(_i3.Filter)],
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
    return result;
  }
}
