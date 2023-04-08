// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_transit_gateway_route_table_announcement_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route_table_announcement.dart'
    as _i2;

part 'create_transit_gateway_route_table_announcement_result.g.dart';

abstract class CreateTransitGatewayRouteTableAnnouncementResult
    with
        _i1.AWSEquatable<CreateTransitGatewayRouteTableAnnouncementResult>
    implements
        Built<CreateTransitGatewayRouteTableAnnouncementResult,
            CreateTransitGatewayRouteTableAnnouncementResultBuilder> {
  factory CreateTransitGatewayRouteTableAnnouncementResult(
      {_i2.TransitGatewayRouteTableAnnouncement?
          transitGatewayRouteTableAnnouncement}) {
    return _$CreateTransitGatewayRouteTableAnnouncementResult._(
        transitGatewayRouteTableAnnouncement:
            transitGatewayRouteTableAnnouncement);
  }

  factory CreateTransitGatewayRouteTableAnnouncementResult.build(
      [void Function(CreateTransitGatewayRouteTableAnnouncementResultBuilder)
          updates]) = _$CreateTransitGatewayRouteTableAnnouncementResult;

  const CreateTransitGatewayRouteTableAnnouncementResult._();

  /// Constructs a [CreateTransitGatewayRouteTableAnnouncementResult] from a [payload] and [response].
  factory CreateTransitGatewayRouteTableAnnouncementResult.fromResponse(
    CreateTransitGatewayRouteTableAnnouncementResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    CreateTransitGatewayRouteTableAnnouncementResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      CreateTransitGatewayRouteTableAnnouncementResultBuilder b) {}

  /// Provides details about the transit gateway route table announcement.
  _i2.TransitGatewayRouteTableAnnouncement?
      get transitGatewayRouteTableAnnouncement;
  @override
  List<Object?> get props => [transitGatewayRouteTableAnnouncement];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'CreateTransitGatewayRouteTableAnnouncementResult');
    helper.add(
      'transitGatewayRouteTableAnnouncement',
      transitGatewayRouteTableAnnouncement,
    );
    return helper.toString();
  }
}

class CreateTransitGatewayRouteTableAnnouncementResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<
        CreateTransitGatewayRouteTableAnnouncementResult> {
  const CreateTransitGatewayRouteTableAnnouncementResultEc2QuerySerializer()
      : super('CreateTransitGatewayRouteTableAnnouncementResult');

  @override
  Iterable<Type> get types => const [
        CreateTransitGatewayRouteTableAnnouncementResult,
        _$CreateTransitGatewayRouteTableAnnouncementResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateTransitGatewayRouteTableAnnouncementResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTransitGatewayRouteTableAnnouncementResultBuilder();
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
        (object as CreateTransitGatewayRouteTableAnnouncementResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'CreateTransitGatewayRouteTableAnnouncementResultResponse',
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
