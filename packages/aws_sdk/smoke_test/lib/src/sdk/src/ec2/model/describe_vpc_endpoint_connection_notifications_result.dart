// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_vpc_endpoint_connection_notifications_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/connection_notification.dart'
    as _i2;

part 'describe_vpc_endpoint_connection_notifications_result.g.dart';

abstract class DescribeVpcEndpointConnectionNotificationsResult
    with
        _i1.AWSEquatable<DescribeVpcEndpointConnectionNotificationsResult>
    implements
        Built<DescribeVpcEndpointConnectionNotificationsResult,
            DescribeVpcEndpointConnectionNotificationsResultBuilder> {
  factory DescribeVpcEndpointConnectionNotificationsResult({
    List<_i2.ConnectionNotification>? connectionNotificationSet,
    String? nextToken,
  }) {
    return _$DescribeVpcEndpointConnectionNotificationsResult._(
      connectionNotificationSet: connectionNotificationSet == null
          ? null
          : _i3.BuiltList(connectionNotificationSet),
      nextToken: nextToken,
    );
  }

  factory DescribeVpcEndpointConnectionNotificationsResult.build(
      [void Function(DescribeVpcEndpointConnectionNotificationsResultBuilder)
          updates]) = _$DescribeVpcEndpointConnectionNotificationsResult;

  const DescribeVpcEndpointConnectionNotificationsResult._();

  /// Constructs a [DescribeVpcEndpointConnectionNotificationsResult] from a [payload] and [response].
  factory DescribeVpcEndpointConnectionNotificationsResult.fromResponse(
    DescribeVpcEndpointConnectionNotificationsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeVpcEndpointConnectionNotificationsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      DescribeVpcEndpointConnectionNotificationsResultBuilder b) {}

  /// One or more notifications.
  _i3.BuiltList<_i2.ConnectionNotification>? get connectionNotificationSet;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        connectionNotificationSet,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeVpcEndpointConnectionNotificationsResult');
    helper.add(
      'connectionNotificationSet',
      connectionNotificationSet,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeVpcEndpointConnectionNotificationsResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<
        DescribeVpcEndpointConnectionNotificationsResult> {
  const DescribeVpcEndpointConnectionNotificationsResultEc2QuerySerializer()
      : super('DescribeVpcEndpointConnectionNotificationsResult');

  @override
  Iterable<Type> get types => const [
        DescribeVpcEndpointConnectionNotificationsResult,
        _$DescribeVpcEndpointConnectionNotificationsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeVpcEndpointConnectionNotificationsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeVpcEndpointConnectionNotificationsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'connectionNotificationSet':
          if (value != null) {
            result.connectionNotificationSet
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.ConnectionNotification)],
              ),
            ) as _i3.BuiltList<_i2.ConnectionNotification>));
          }
          break;
        case 'nextToken':
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
        (object as DescribeVpcEndpointConnectionNotificationsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeVpcEndpointConnectionNotificationsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.connectionNotificationSet != null) {
      result
        ..add(const _i4.XmlElementName('ConnectionNotificationSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.connectionNotificationSet!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.ConnectionNotification)],
          ),
        ));
    }
    if (payload.nextToken != null) {
      result
        ..add(const _i4.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
