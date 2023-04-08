// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.subnet_cidr_reservation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/subnet_cidr_reservation_type.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i3;

part 'subnet_cidr_reservation.g.dart';

/// Describes a subnet CIDR reservation.
abstract class SubnetCidrReservation
    with _i1.AWSEquatable<SubnetCidrReservation>
    implements Built<SubnetCidrReservation, SubnetCidrReservationBuilder> {
  /// Describes a subnet CIDR reservation.
  factory SubnetCidrReservation({
    String? subnetCidrReservationId,
    String? subnetId,
    String? cidr,
    _i2.SubnetCidrReservationType? reservationType,
    String? ownerId,
    String? description,
    List<_i3.Tag>? tags,
  }) {
    return _$SubnetCidrReservation._(
      subnetCidrReservationId: subnetCidrReservationId,
      subnetId: subnetId,
      cidr: cidr,
      reservationType: reservationType,
      ownerId: ownerId,
      description: description,
      tags: tags == null ? null : _i4.BuiltList(tags),
    );
  }

  /// Describes a subnet CIDR reservation.
  factory SubnetCidrReservation.build(
          [void Function(SubnetCidrReservationBuilder) updates]) =
      _$SubnetCidrReservation;

  const SubnetCidrReservation._();

  static const List<_i5.SmithySerializer> serializers = [
    SubnetCidrReservationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SubnetCidrReservationBuilder b) {}

  /// The ID of the subnet CIDR reservation.
  String? get subnetCidrReservationId;

  /// The ID of the subnet.
  String? get subnetId;

  /// The CIDR that has been reserved.
  String? get cidr;

  /// The type of reservation.
  _i2.SubnetCidrReservationType? get reservationType;

  /// The ID of the account that owns the subnet CIDR reservation.
  String? get ownerId;

  /// The description assigned to the subnet CIDR reservation.
  String? get description;

  /// The tags assigned to the subnet CIDR reservation.
  _i4.BuiltList<_i3.Tag>? get tags;
  @override
  List<Object?> get props => [
        subnetCidrReservationId,
        subnetId,
        cidr,
        reservationType,
        ownerId,
        description,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SubnetCidrReservation');
    helper.add(
      'subnetCidrReservationId',
      subnetCidrReservationId,
    );
    helper.add(
      'subnetId',
      subnetId,
    );
    helper.add(
      'cidr',
      cidr,
    );
    helper.add(
      'reservationType',
      reservationType,
    );
    helper.add(
      'ownerId',
      ownerId,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class SubnetCidrReservationEc2QuerySerializer
    extends _i5.StructuredSmithySerializer<SubnetCidrReservation> {
  const SubnetCidrReservationEc2QuerySerializer()
      : super('SubnetCidrReservation');

  @override
  Iterable<Type> get types => const [
        SubnetCidrReservation,
        _$SubnetCidrReservation,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SubnetCidrReservation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SubnetCidrReservationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'subnetCidrReservationId':
          if (value != null) {
            result.subnetCidrReservationId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'subnetId':
          if (value != null) {
            result.subnetId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'cidr':
          if (value != null) {
            result.cidr = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'reservationType':
          if (value != null) {
            result.reservationType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.SubnetCidrReservationType),
            ) as _i2.SubnetCidrReservationType);
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
        case 'description':
          if (value != null) {
            result.description = (serializers.deserialize(
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
    final payload = (object as SubnetCidrReservation);
    final result = <Object?>[
      const _i5.XmlElementName(
        'SubnetCidrReservationResponse',
        _i5.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.subnetCidrReservationId != null) {
      result
        ..add(const _i5.XmlElementName('SubnetCidrReservationId'))
        ..add(serializers.serialize(
          payload.subnetCidrReservationId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.subnetId != null) {
      result
        ..add(const _i5.XmlElementName('SubnetId'))
        ..add(serializers.serialize(
          payload.subnetId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.cidr != null) {
      result
        ..add(const _i5.XmlElementName('Cidr'))
        ..add(serializers.serialize(
          payload.cidr!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.reservationType != null) {
      result
        ..add(const _i5.XmlElementName('ReservationType'))
        ..add(serializers.serialize(
          payload.reservationType!,
          specifiedType: const FullType.nullable(_i2.SubnetCidrReservationType),
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
    if (payload.description != null) {
      result
        ..add(const _i5.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
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
