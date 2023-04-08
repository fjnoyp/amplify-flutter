// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_vpc_endpoint_connection_notification_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/connection_notification.dart'
    as _i2;

part 'create_vpc_endpoint_connection_notification_result.g.dart';

abstract class CreateVpcEndpointConnectionNotificationResult
    with
        _i1.AWSEquatable<CreateVpcEndpointConnectionNotificationResult>
    implements
        Built<CreateVpcEndpointConnectionNotificationResult,
            CreateVpcEndpointConnectionNotificationResultBuilder> {
  factory CreateVpcEndpointConnectionNotificationResult({
    _i2.ConnectionNotification? connectionNotification,
    String? clientToken,
  }) {
    return _$CreateVpcEndpointConnectionNotificationResult._(
      connectionNotification: connectionNotification,
      clientToken: clientToken,
    );
  }

  factory CreateVpcEndpointConnectionNotificationResult.build(
      [void Function(CreateVpcEndpointConnectionNotificationResultBuilder)
          updates]) = _$CreateVpcEndpointConnectionNotificationResult;

  const CreateVpcEndpointConnectionNotificationResult._();

  /// Constructs a [CreateVpcEndpointConnectionNotificationResult] from a [payload] and [response].
  factory CreateVpcEndpointConnectionNotificationResult.fromResponse(
    CreateVpcEndpointConnectionNotificationResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    CreateVpcEndpointConnectionNotificationResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateVpcEndpointConnectionNotificationResultBuilder b) {}

  /// Information about the notification.
  _i2.ConnectionNotification? get connectionNotification;

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.
  String? get clientToken;
  @override
  List<Object?> get props => [
        connectionNotification,
        clientToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'CreateVpcEndpointConnectionNotificationResult');
    helper.add(
      'connectionNotification',
      connectionNotification,
    );
    helper.add(
      'clientToken',
      clientToken,
    );
    return helper.toString();
  }
}

class CreateVpcEndpointConnectionNotificationResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<
        CreateVpcEndpointConnectionNotificationResult> {
  const CreateVpcEndpointConnectionNotificationResultEc2QuerySerializer()
      : super('CreateVpcEndpointConnectionNotificationResult');

  @override
  Iterable<Type> get types => const [
        CreateVpcEndpointConnectionNotificationResult,
        _$CreateVpcEndpointConnectionNotificationResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateVpcEndpointConnectionNotificationResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateVpcEndpointConnectionNotificationResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'connectionNotification':
          if (value != null) {
            result.connectionNotification.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ConnectionNotification),
            ) as _i2.ConnectionNotification));
          }
          break;
        case 'clientToken':
          if (value != null) {
            result.clientToken = (serializers.deserialize(
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
    final payload = (object as CreateVpcEndpointConnectionNotificationResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'CreateVpcEndpointConnectionNotificationResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.connectionNotification != null) {
      result
        ..add(const _i3.XmlElementName('ConnectionNotification'))
        ..add(serializers.serialize(
          payload.connectionNotification!,
          specifiedType: const FullType(_i2.ConnectionNotification),
        ));
    }
    if (payload.clientToken != null) {
      result
        ..add(const _i3.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          payload.clientToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
