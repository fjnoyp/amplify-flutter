// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.modify_vpc_endpoint_connection_notification_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'modify_vpc_endpoint_connection_notification_request.g.dart';

abstract class ModifyVpcEndpointConnectionNotificationRequest
    with
        _i1.HttpInput<ModifyVpcEndpointConnectionNotificationRequest>,
        _i2.AWSEquatable<ModifyVpcEndpointConnectionNotificationRequest>
    implements
        Built<ModifyVpcEndpointConnectionNotificationRequest,
            ModifyVpcEndpointConnectionNotificationRequestBuilder> {
  factory ModifyVpcEndpointConnectionNotificationRequest({
    bool? dryRun,
    required String connectionNotificationId,
    String? connectionNotificationArn,
    List<String>? connectionEvents,
  }) {
    dryRun ??= false;
    return _$ModifyVpcEndpointConnectionNotificationRequest._(
      dryRun: dryRun,
      connectionNotificationId: connectionNotificationId,
      connectionNotificationArn: connectionNotificationArn,
      connectionEvents:
          connectionEvents == null ? null : _i3.BuiltList(connectionEvents),
    );
  }

  factory ModifyVpcEndpointConnectionNotificationRequest.build(
      [void Function(ModifyVpcEndpointConnectionNotificationRequestBuilder)
          updates]) = _$ModifyVpcEndpointConnectionNotificationRequest;

  const ModifyVpcEndpointConnectionNotificationRequest._();

  factory ModifyVpcEndpointConnectionNotificationRequest.fromRequest(
    ModifyVpcEndpointConnectionNotificationRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ModifyVpcEndpointConnectionNotificationRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyVpcEndpointConnectionNotificationRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the notification.
  String get connectionNotificationId;

  /// The ARN for the SNS topic for the notification.
  String? get connectionNotificationArn;

  /// One or more events for the endpoint. Valid values are `Accept`, `Connect`, `Delete`, and `Reject`.
  _i3.BuiltList<String>? get connectionEvents;
  @override
  ModifyVpcEndpointConnectionNotificationRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        connectionNotificationId,
        connectionNotificationArn,
        connectionEvents,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'ModifyVpcEndpointConnectionNotificationRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'connectionNotificationId',
      connectionNotificationId,
    );
    helper.add(
      'connectionNotificationArn',
      connectionNotificationArn,
    );
    helper.add(
      'connectionEvents',
      connectionEvents,
    );
    return helper.toString();
  }
}

class ModifyVpcEndpointConnectionNotificationRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<
        ModifyVpcEndpointConnectionNotificationRequest> {
  const ModifyVpcEndpointConnectionNotificationRequestEc2QuerySerializer()
      : super('ModifyVpcEndpointConnectionNotificationRequest');

  @override
  Iterable<Type> get types => const [
        ModifyVpcEndpointConnectionNotificationRequest,
        _$ModifyVpcEndpointConnectionNotificationRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyVpcEndpointConnectionNotificationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyVpcEndpointConnectionNotificationRequestBuilder();
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
          result.connectionNotificationId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'ConnectionNotificationArn':
          if (value != null) {
            result.connectionNotificationArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ConnectionEvents':
          if (value != null) {
            result.connectionEvents.replace((const _i1.XmlBuiltListSerializer(
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
    final payload = (object as ModifyVpcEndpointConnectionNotificationRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ModifyVpcEndpointConnectionNotificationRequestResponse',
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
      ..add(const _i1.XmlElementName('ConnectionNotificationId'))
      ..add(serializers.serialize(
        payload.connectionNotificationId,
        specifiedType: const FullType(String),
      ));
    if (payload.connectionNotificationArn != null) {
      result
        ..add(const _i1.XmlElementName('ConnectionNotificationArn'))
        ..add(serializers.serialize(
          payload.connectionNotificationArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.connectionEvents != null) {
      result
        ..add(const _i1.XmlElementName('ConnectionEvents'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.connectionEvents!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result;
  }
}
