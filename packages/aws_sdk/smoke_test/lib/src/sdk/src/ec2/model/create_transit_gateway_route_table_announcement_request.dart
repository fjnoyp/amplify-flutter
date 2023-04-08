// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_transit_gateway_route_table_announcement_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart' as _i3;

part 'create_transit_gateway_route_table_announcement_request.g.dart';

abstract class CreateTransitGatewayRouteTableAnnouncementRequest
    with
        _i1.HttpInput<CreateTransitGatewayRouteTableAnnouncementRequest>,
        _i2.AWSEquatable<CreateTransitGatewayRouteTableAnnouncementRequest>
    implements
        Built<CreateTransitGatewayRouteTableAnnouncementRequest,
            CreateTransitGatewayRouteTableAnnouncementRequestBuilder> {
  factory CreateTransitGatewayRouteTableAnnouncementRequest({
    required String transitGatewayRouteTableId,
    required String peeringAttachmentId,
    List<_i3.TagSpecification>? tagSpecifications,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$CreateTransitGatewayRouteTableAnnouncementRequest._(
      transitGatewayRouteTableId: transitGatewayRouteTableId,
      peeringAttachmentId: peeringAttachmentId,
      tagSpecifications:
          tagSpecifications == null ? null : _i4.BuiltList(tagSpecifications),
      dryRun: dryRun,
    );
  }

  factory CreateTransitGatewayRouteTableAnnouncementRequest.build(
      [void Function(CreateTransitGatewayRouteTableAnnouncementRequestBuilder)
          updates]) = _$CreateTransitGatewayRouteTableAnnouncementRequest;

  const CreateTransitGatewayRouteTableAnnouncementRequest._();

  factory CreateTransitGatewayRouteTableAnnouncementRequest.fromRequest(
    CreateTransitGatewayRouteTableAnnouncementRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    CreateTransitGatewayRouteTableAnnouncementRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      CreateTransitGatewayRouteTableAnnouncementRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the transit gateway route table.
  String get transitGatewayRouteTableId;

  /// The ID of the peering attachment.
  String get peeringAttachmentId;

  /// The tags specifications applied to the transit gateway route table announcement.
  _i4.BuiltList<_i3.TagSpecification>? get tagSpecifications;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  CreateTransitGatewayRouteTableAnnouncementRequest getPayload() => this;
  @override
  List<Object?> get props => [
        transitGatewayRouteTableId,
        peeringAttachmentId,
        tagSpecifications,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'CreateTransitGatewayRouteTableAnnouncementRequest');
    helper.add(
      'transitGatewayRouteTableId',
      transitGatewayRouteTableId,
    );
    helper.add(
      'peeringAttachmentId',
      peeringAttachmentId,
    );
    helper.add(
      'tagSpecifications',
      tagSpecifications,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class CreateTransitGatewayRouteTableAnnouncementRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<
        CreateTransitGatewayRouteTableAnnouncementRequest> {
  const CreateTransitGatewayRouteTableAnnouncementRequestEc2QuerySerializer()
      : super('CreateTransitGatewayRouteTableAnnouncementRequest');

  @override
  Iterable<Type> get types => const [
        CreateTransitGatewayRouteTableAnnouncementRequest,
        _$CreateTransitGatewayRouteTableAnnouncementRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateTransitGatewayRouteTableAnnouncementRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTransitGatewayRouteTableAnnouncementRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'TransitGatewayRouteTableId':
          result.transitGatewayRouteTableId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'PeeringAttachmentId':
          result.peeringAttachmentId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'TagSpecification':
          if (value != null) {
            result.tagSpecifications.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.TagSpecification)],
              ),
            ) as _i4.BuiltList<_i3.TagSpecification>));
          }
          break;
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
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
        (object as CreateTransitGatewayRouteTableAnnouncementRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'CreateTransitGatewayRouteTableAnnouncementRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('TransitGatewayRouteTableId'))
      ..add(serializers.serialize(
        payload.transitGatewayRouteTableId,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('PeeringAttachmentId'))
      ..add(serializers.serialize(
        payload.peeringAttachmentId,
        specifiedType: const FullType(String),
      ));
    if (payload.tagSpecifications != null) {
      result
        ..add(const _i1.XmlElementName('TagSpecification'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tagSpecifications!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.TagSpecification)],
          ),
        ));
    }
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
