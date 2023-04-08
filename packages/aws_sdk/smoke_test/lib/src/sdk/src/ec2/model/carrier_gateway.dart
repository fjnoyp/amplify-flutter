// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.carrier_gateway; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/carrier_gateway_state.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i3;

part 'carrier_gateway.g.dart';

/// Describes a carrier gateway.
abstract class CarrierGateway
    with _i1.AWSEquatable<CarrierGateway>
    implements Built<CarrierGateway, CarrierGatewayBuilder> {
  /// Describes a carrier gateway.
  factory CarrierGateway({
    String? carrierGatewayId,
    String? vpcId,
    _i2.CarrierGatewayState? state,
    String? ownerId,
    List<_i3.Tag>? tags,
  }) {
    return _$CarrierGateway._(
      carrierGatewayId: carrierGatewayId,
      vpcId: vpcId,
      state: state,
      ownerId: ownerId,
      tags: tags == null ? null : _i4.BuiltList(tags),
    );
  }

  /// Describes a carrier gateway.
  factory CarrierGateway.build([void Function(CarrierGatewayBuilder) updates]) =
      _$CarrierGateway;

  const CarrierGateway._();

  static const List<_i5.SmithySerializer> serializers = [
    CarrierGatewayEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CarrierGatewayBuilder b) {}

  /// The ID of the carrier gateway.
  String? get carrierGatewayId;

  /// The ID of the VPC associated with the carrier gateway.
  String? get vpcId;

  /// The state of the carrier gateway.
  _i2.CarrierGatewayState? get state;

  /// The Amazon Web Services account ID of the owner of the carrier gateway.
  String? get ownerId;

  /// The tags assigned to the carrier gateway.
  _i4.BuiltList<_i3.Tag>? get tags;
  @override
  List<Object?> get props => [
        carrierGatewayId,
        vpcId,
        state,
        ownerId,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CarrierGateway');
    helper.add(
      'carrierGatewayId',
      carrierGatewayId,
    );
    helper.add(
      'vpcId',
      vpcId,
    );
    helper.add(
      'state',
      state,
    );
    helper.add(
      'ownerId',
      ownerId,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class CarrierGatewayEc2QuerySerializer
    extends _i5.StructuredSmithySerializer<CarrierGateway> {
  const CarrierGatewayEc2QuerySerializer() : super('CarrierGateway');

  @override
  Iterable<Type> get types => const [
        CarrierGateway,
        _$CarrierGateway,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CarrierGateway deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CarrierGatewayBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'carrierGatewayId':
          if (value != null) {
            result.carrierGatewayId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'vpcId':
          if (value != null) {
            result.vpcId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'state':
          if (value != null) {
            result.state = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.CarrierGatewayState),
            ) as _i2.CarrierGatewayState);
          }
          break;
        case 'ownerId':
          if (value != null) {
            result.ownerId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'tagSet':
          if (value != null) {
            result.tags.replace((const _i5.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i5.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.Tag)],
              ),
            ) as _i4.BuiltList<_i3.Tag>));
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
    final payload = (object as CarrierGateway);
    final result = <Object?>[
      const _i5.XmlElementName(
        'CarrierGatewayResponse',
        _i5.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.carrierGatewayId != null) {
      result
        ..add(const _i5.XmlElementName('CarrierGatewayId'))
        ..add(serializers.serialize(
          payload.carrierGatewayId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.vpcId != null) {
      result
        ..add(const _i5.XmlElementName('VpcId'))
        ..add(serializers.serialize(
          payload.vpcId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.state != null) {
      result
        ..add(const _i5.XmlElementName('State'))
        ..add(serializers.serialize(
          payload.state!,
          specifiedType: const FullType.nullable(_i2.CarrierGatewayState),
        ));
    }
    if (payload.ownerId != null) {
      result
        ..add(const _i5.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          payload.ownerId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.tags != null) {
      result
        ..add(const _i5.XmlElementName('TagSet'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tags!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.Tag)],
          ),
        ));
    }
    return result;
  }
}
