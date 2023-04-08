// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_transit_gateway_route_table_announcement_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route_table_announcement.dart'
    as _i2;

part 'delete_transit_gateway_route_table_announcement_result.g.dart';

abstract class DeleteTransitGatewayRouteTableAnnouncementResult
    with
        _i1.AWSEquatable<DeleteTransitGatewayRouteTableAnnouncementResult>
    implements
        Built<DeleteTransitGatewayRouteTableAnnouncementResult,
            DeleteTransitGatewayRouteTableAnnouncementResultBuilder> {
  factory DeleteTransitGatewayRouteTableAnnouncementResult(
      {_i2.TransitGatewayRouteTableAnnouncement?
          transitGatewayRouteTableAnnouncement}) {
    return _$DeleteTransitGatewayRouteTableAnnouncementResult._(
        transitGatewayRouteTableAnnouncement:
            transitGatewayRouteTableAnnouncement);
  }

  factory DeleteTransitGatewayRouteTableAnnouncementResult.build(
      [void Function(DeleteTransitGatewayRouteTableAnnouncementResultBuilder)
          updates]) = _$DeleteTransitGatewayRouteTableAnnouncementResult;

  const DeleteTransitGatewayRouteTableAnnouncementResult._();

  /// Constructs a [DeleteTransitGatewayRouteTableAnnouncementResult] from a [payload] and [response].
  factory DeleteTransitGatewayRouteTableAnnouncementResult.fromResponse(
    DeleteTransitGatewayRouteTableAnnouncementResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    DeleteTransitGatewayRouteTableAnnouncementResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      DeleteTransitGatewayRouteTableAnnouncementResultBuilder b) {}

  /// Provides details about a deleted transit gateway route table.
  _i2.TransitGatewayRouteTableAnnouncement?
      get transitGatewayRouteTableAnnouncement;
  @override
  List<Object?> get props => [transitGatewayRouteTableAnnouncement];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DeleteTransitGatewayRouteTableAnnouncementResult');
    helper.add(
      'transitGatewayRouteTableAnnouncement',
      transitGatewayRouteTableAnnouncement,
    );
    return helper.toString();
  }
}

class DeleteTransitGatewayRouteTableAnnouncementResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<
        DeleteTransitGatewayRouteTableAnnouncementResult> {
  const DeleteTransitGatewayRouteTableAnnouncementResultEc2QuerySerializer()
      : super('DeleteTransitGatewayRouteTableAnnouncementResult');

  @override
  Iterable<Type> get types => const [
        DeleteTransitGatewayRouteTableAnnouncementResult,
        _$DeleteTransitGatewayRouteTableAnnouncementResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteTransitGatewayRouteTableAnnouncementResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteTransitGatewayRouteTableAnnouncementResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'transitGatewayRouteTableAnnouncement':
          if (value != null) {
            result.transitGatewayRouteTableAnnouncement
                .replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i2.TransitGatewayRouteTableAnnouncement),
            ) as _i2.TransitGatewayRouteTableAnnouncement));
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
        (object as DeleteTransitGatewayRouteTableAnnouncementResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'DeleteTransitGatewayRouteTableAnnouncementResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.transitGatewayRouteTableAnnouncement != null) {
      result
        ..add(const _i3.XmlElementName('TransitGatewayRouteTableAnnouncement'))
        ..add(serializers.serialize(
          payload.transitGatewayRouteTableAnnouncement!,
          specifiedType:
              const FullType(_i2.TransitGatewayRouteTableAnnouncement),
        ));
    }
    return result;
  }
}
