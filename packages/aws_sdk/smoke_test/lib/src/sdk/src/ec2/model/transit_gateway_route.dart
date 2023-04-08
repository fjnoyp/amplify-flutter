// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.transit_gateway_route; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route_attachment.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route_state.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route_type.dart'
    as _i3;

part 'transit_gateway_route.g.dart';

/// Describes a route for a transit gateway route table.
abstract class TransitGatewayRoute
    with _i1.AWSEquatable<TransitGatewayRoute>
    implements Built<TransitGatewayRoute, TransitGatewayRouteBuilder> {
  /// Describes a route for a transit gateway route table.
  factory TransitGatewayRoute({
    String? destinationCidrBlock,
    String? prefixListId,
    String? transitGatewayRouteTableAnnouncementId,
    List<_i2.TransitGatewayRouteAttachment>? transitGatewayAttachments,
    _i3.TransitGatewayRouteType? type,
    _i4.TransitGatewayRouteState? state,
  }) {
    return _$TransitGatewayRoute._(
      destinationCidrBlock: destinationCidrBlock,
      prefixListId: prefixListId,
      transitGatewayRouteTableAnnouncementId:
          transitGatewayRouteTableAnnouncementId,
      transitGatewayAttachments: transitGatewayAttachments == null
          ? null
          : _i5.BuiltList(transitGatewayAttachments),
      type: type,
      state: state,
    );
  }

  /// Describes a route for a transit gateway route table.
  factory TransitGatewayRoute.build(
          [void Function(TransitGatewayRouteBuilder) updates]) =
      _$TransitGatewayRoute;

  const TransitGatewayRoute._();

  static const List<_i6.SmithySerializer> serializers = [
    TransitGatewayRouteEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TransitGatewayRouteBuilder b) {}

  /// The CIDR block used for destination matches.
  String? get destinationCidrBlock;

  /// The ID of the prefix list used for destination matches.
  String? get prefixListId;

  /// The ID of the transit gateway route table announcement.
  String? get transitGatewayRouteTableAnnouncementId;

  /// The attachments.
  _i5.BuiltList<_i2.TransitGatewayRouteAttachment>?
      get transitGatewayAttachments;

  /// The route type.
  _i3.TransitGatewayRouteType? get type;

  /// The state of the route.
  _i4.TransitGatewayRouteState? get state;
  @override
  List<Object?> get props => [
        destinationCidrBlock,
        prefixListId,
        transitGatewayRouteTableAnnouncementId,
        transitGatewayAttachments,
        type,
        state,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TransitGatewayRoute');
    helper.add(
      'destinationCidrBlock',
      destinationCidrBlock,
    );
    helper.add(
      'prefixListId',
      prefixListId,
    );
    helper.add(
      'transitGatewayRouteTableAnnouncementId',
      transitGatewayRouteTableAnnouncementId,
    );
    helper.add(
      'transitGatewayAttachments',
      transitGatewayAttachments,
    );
    helper.add(
      'type',
      type,
    );
    helper.add(
      'state',
      state,
    );
    return helper.toString();
  }
}

class TransitGatewayRouteEc2QuerySerializer
    extends _i6.StructuredSmithySerializer<TransitGatewayRoute> {
  const TransitGatewayRouteEc2QuerySerializer() : super('TransitGatewayRoute');

  @override
  Iterable<Type> get types => const [
        TransitGatewayRoute,
        _$TransitGatewayRoute,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayRoute deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayRouteBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'destinationCidrBlock':
          if (value != null) {
            result.destinationCidrBlock = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'prefixListId':
          if (value != null) {
            result.prefixListId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'transitGatewayRouteTableAnnouncementId':
          if (value != null) {
            result.transitGatewayRouteTableAnnouncementId =
                (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'transitGatewayAttachments':
          if (value != null) {
            result.transitGatewayAttachments
                .replace((const _i6.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i6.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i5.BuiltList,
                [FullType(_i2.TransitGatewayRouteAttachment)],
              ),
            ) as _i5.BuiltList<_i2.TransitGatewayRouteAttachment>));
          }
          break;
        case 'type':
          if (value != null) {
            result.type = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.TransitGatewayRouteType),
            ) as _i3.TransitGatewayRouteType);
          }
          break;
        case 'state':
          if (value != null) {
            result.state = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.TransitGatewayRouteState),
            ) as _i4.TransitGatewayRouteState);
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
    final payload = (object as TransitGatewayRoute);
    final result = <Object?>[
      const _i6.XmlElementName(
        'TransitGatewayRouteResponse',
        _i6.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.destinationCidrBlock != null) {
      result
        ..add(const _i6.XmlElementName('DestinationCidrBlock'))
        ..add(serializers.serialize(
          payload.destinationCidrBlock!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.prefixListId != null) {
      result
        ..add(const _i6.XmlElementName('PrefixListId'))
        ..add(serializers.serialize(
          payload.prefixListId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.transitGatewayRouteTableAnnouncementId != null) {
      result
        ..add(
            const _i6.XmlElementName('TransitGatewayRouteTableAnnouncementId'))
        ..add(serializers.serialize(
          payload.transitGatewayRouteTableAnnouncementId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.transitGatewayAttachments != null) {
      result
        ..add(const _i6.XmlElementName('TransitGatewayAttachments'))
        ..add(const _i6.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i6.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.transitGatewayAttachments!,
          specifiedType: const FullType.nullable(
            _i5.BuiltList,
            [FullType(_i2.TransitGatewayRouteAttachment)],
          ),
        ));
    }
    if (payload.type != null) {
      result
        ..add(const _i6.XmlElementName('Type'))
        ..add(serializers.serialize(
          payload.type!,
          specifiedType: const FullType.nullable(_i3.TransitGatewayRouteType),
        ));
    }
    if (payload.state != null) {
      result
        ..add(const _i6.XmlElementName('State'))
        ..add(serializers.serialize(
          payload.state!,
          specifiedType: const FullType.nullable(_i4.TransitGatewayRouteState),
        ));
    }
    return result;
  }
}
