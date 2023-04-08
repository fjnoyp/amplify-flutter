// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.reserved_instances_listing; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i7;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_count.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/listing_status.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/price_schedule.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i5;

part 'reserved_instances_listing.g.dart';

/// Describes a Reserved Instance listing.
abstract class ReservedInstancesListing
    with _i1.AWSEquatable<ReservedInstancesListing>
    implements
        Built<ReservedInstancesListing, ReservedInstancesListingBuilder> {
  /// Describes a Reserved Instance listing.
  factory ReservedInstancesListing({
    String? clientToken,
    DateTime? createDate,
    List<_i2.InstanceCount>? instanceCounts,
    List<_i3.PriceSchedule>? priceSchedules,
    String? reservedInstancesId,
    String? reservedInstancesListingId,
    _i4.ListingStatus? status,
    String? statusMessage,
    List<_i5.Tag>? tags,
    DateTime? updateDate,
  }) {
    return _$ReservedInstancesListing._(
      clientToken: clientToken,
      createDate: createDate,
      instanceCounts:
          instanceCounts == null ? null : _i6.BuiltList(instanceCounts),
      priceSchedules:
          priceSchedules == null ? null : _i6.BuiltList(priceSchedules),
      reservedInstancesId: reservedInstancesId,
      reservedInstancesListingId: reservedInstancesListingId,
      status: status,
      statusMessage: statusMessage,
      tags: tags == null ? null : _i6.BuiltList(tags),
      updateDate: updateDate,
    );
  }

  /// Describes a Reserved Instance listing.
  factory ReservedInstancesListing.build(
          [void Function(ReservedInstancesListingBuilder) updates]) =
      _$ReservedInstancesListing;

  const ReservedInstancesListing._();

  static const List<_i7.SmithySerializer> serializers = [
    ReservedInstancesListingEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ReservedInstancesListingBuilder b) {}

  /// A unique, case-sensitive key supplied by the client to ensure that the request is idempotent. For more information, see [Ensuring Idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;

  /// The time the listing was created.
  DateTime? get createDate;

  /// The number of instances in this state.
  _i6.BuiltList<_i2.InstanceCount>? get instanceCounts;

  /// The price of the Reserved Instance listing.
  _i6.BuiltList<_i3.PriceSchedule>? get priceSchedules;

  /// The ID of the Reserved Instance.
  String? get reservedInstancesId;

  /// The ID of the Reserved Instance listing.
  String? get reservedInstancesListingId;

  /// The status of the Reserved Instance listing.
  _i4.ListingStatus? get status;

  /// The reason for the current status of the Reserved Instance listing. The response can be blank.
  String? get statusMessage;

  /// Any tags assigned to the resource.
  _i6.BuiltList<_i5.Tag>? get tags;

  /// The last modified timestamp of the listing.
  DateTime? get updateDate;
  @override
  List<Object?> get props => [
        clientToken,
        createDate,
        instanceCounts,
        priceSchedules,
        reservedInstancesId,
        reservedInstancesListingId,
        status,
        statusMessage,
        tags,
        updateDate,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ReservedInstancesListing');
    helper.add(
      'clientToken',
      clientToken,
    );
    helper.add(
      'createDate',
      createDate,
    );
    helper.add(
      'instanceCounts',
      instanceCounts,
    );
    helper.add(
      'priceSchedules',
      priceSchedules,
    );
    helper.add(
      'reservedInstancesId',
      reservedInstancesId,
    );
    helper.add(
      'reservedInstancesListingId',
      reservedInstancesListingId,
    );
    helper.add(
      'status',
      status,
    );
    helper.add(
      'statusMessage',
      statusMessage,
    );
    helper.add(
      'tags',
      tags,
    );
    helper.add(
      'updateDate',
      updateDate,
    );
    return helper.toString();
  }
}

class ReservedInstancesListingEc2QuerySerializer
    extends _i7.StructuredSmithySerializer<ReservedInstancesListing> {
  const ReservedInstancesListingEc2QuerySerializer()
      : super('ReservedInstancesListing');

  @override
  Iterable<Type> get types => const [
        ReservedInstancesListing,
        _$ReservedInstancesListing,
      ];
  @override
  Iterable<_i7.ShapeId> get supportedProtocols => const [
        _i7.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ReservedInstancesListing deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReservedInstancesListingBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'clientToken':
          if (value != null) {
            result.clientToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'createDate':
          if (value != null) {
            result.createDate = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'instanceCounts':
          if (value != null) {
            result.instanceCounts.replace((const _i7.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i7.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(_i2.InstanceCount)],
              ),
            ) as _i6.BuiltList<_i2.InstanceCount>));
          }
          break;
        case 'priceSchedules':
          if (value != null) {
            result.priceSchedules.replace((const _i7.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i7.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(_i3.PriceSchedule)],
              ),
            ) as _i6.BuiltList<_i3.PriceSchedule>));
          }
          break;
        case 'reservedInstancesId':
          if (value != null) {
            result.reservedInstancesId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'reservedInstancesListingId':
          if (value != null) {
            result.reservedInstancesListingId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'status':
          if (value != null) {
            result.status = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.ListingStatus),
            ) as _i4.ListingStatus);
          }
          break;
        case 'statusMessage':
          if (value != null) {
            result.statusMessage = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'tagSet':
          if (value != null) {
            result.tags.replace((const _i7.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i7.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(_i5.Tag)],
              ),
            ) as _i6.BuiltList<_i5.Tag>));
          }
          break;
        case 'updateDate':
          if (value != null) {
            result.updateDate = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
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
    final payload = (object as ReservedInstancesListing);
    final result = <Object?>[
      const _i7.XmlElementName(
        'ReservedInstancesListingResponse',
        _i7.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.clientToken != null) {
      result
        ..add(const _i7.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          payload.clientToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.createDate != null) {
      result
        ..add(const _i7.XmlElementName('CreateDate'))
        ..add(serializers.serialize(
          payload.createDate!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.instanceCounts != null) {
      result
        ..add(const _i7.XmlElementName('InstanceCounts'))
        ..add(const _i7.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i7.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.instanceCounts!,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(_i2.InstanceCount)],
          ),
        ));
    }
    if (payload.priceSchedules != null) {
      result
        ..add(const _i7.XmlElementName('PriceSchedules'))
        ..add(const _i7.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i7.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.priceSchedules!,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(_i3.PriceSchedule)],
          ),
        ));
    }
    if (payload.reservedInstancesId != null) {
      result
        ..add(const _i7.XmlElementName('ReservedInstancesId'))
        ..add(serializers.serialize(
          payload.reservedInstancesId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.reservedInstancesListingId != null) {
      result
        ..add(const _i7.XmlElementName('ReservedInstancesListingId'))
        ..add(serializers.serialize(
          payload.reservedInstancesListingId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.status != null) {
      result
        ..add(const _i7.XmlElementName('Status'))
        ..add(serializers.serialize(
          payload.status!,
          specifiedType: const FullType.nullable(_i4.ListingStatus),
        ));
    }
    if (payload.statusMessage != null) {
      result
        ..add(const _i7.XmlElementName('StatusMessage'))
        ..add(serializers.serialize(
          payload.statusMessage!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.tags != null) {
      result
        ..add(const _i7.XmlElementName('TagSet'))
        ..add(const _i7.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i7.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tags!,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(_i5.Tag)],
          ),
        ));
    }
    if (payload.updateDate != null) {
      result
        ..add(const _i7.XmlElementName('UpdateDate'))
        ..add(serializers.serialize(
          payload.updateDate!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    return result;
  }
}
