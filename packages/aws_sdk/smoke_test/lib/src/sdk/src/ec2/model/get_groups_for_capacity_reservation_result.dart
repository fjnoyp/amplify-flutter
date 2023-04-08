// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.get_groups_for_capacity_reservation_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_group.dart'
    as _i2;

part 'get_groups_for_capacity_reservation_result.g.dart';

abstract class GetGroupsForCapacityReservationResult
    with
        _i1.AWSEquatable<GetGroupsForCapacityReservationResult>
    implements
        Built<GetGroupsForCapacityReservationResult,
            GetGroupsForCapacityReservationResultBuilder> {
  factory GetGroupsForCapacityReservationResult({
    String? nextToken,
    List<_i2.CapacityReservationGroup>? capacityReservationGroups,
  }) {
    return _$GetGroupsForCapacityReservationResult._(
      nextToken: nextToken,
      capacityReservationGroups: capacityReservationGroups == null
          ? null
          : _i3.BuiltList(capacityReservationGroups),
    );
  }

  factory GetGroupsForCapacityReservationResult.build(
      [void Function(GetGroupsForCapacityReservationResultBuilder)
          updates]) = _$GetGroupsForCapacityReservationResult;

  const GetGroupsForCapacityReservationResult._();

  /// Constructs a [GetGroupsForCapacityReservationResult] from a [payload] and [response].
  factory GetGroupsForCapacityReservationResult.fromResponse(
    GetGroupsForCapacityReservationResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    GetGroupsForCapacityReservationResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetGroupsForCapacityReservationResultBuilder b) {}

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;

  /// Information about the resource groups to which the Capacity Reservation has been added.
  _i3.BuiltList<_i2.CapacityReservationGroup>? get capacityReservationGroups;
  @override
  List<Object?> get props => [
        nextToken,
        capacityReservationGroups,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetGroupsForCapacityReservationResult');
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'capacityReservationGroups',
      capacityReservationGroups,
    );
    return helper.toString();
  }
}

class GetGroupsForCapacityReservationResultEc2QuerySerializer extends _i4
    .StructuredSmithySerializer<GetGroupsForCapacityReservationResult> {
  const GetGroupsForCapacityReservationResultEc2QuerySerializer()
      : super('GetGroupsForCapacityReservationResult');

  @override
  Iterable<Type> get types => const [
        GetGroupsForCapacityReservationResult,
        _$GetGroupsForCapacityReservationResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetGroupsForCapacityReservationResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetGroupsForCapacityReservationResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'nextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'capacityReservationGroupSet':
          if (value != null) {
            result.capacityReservationGroups
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.CapacityReservationGroup)],
              ),
            ) as _i3.BuiltList<_i2.CapacityReservationGroup>));
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
    final payload = (object as GetGroupsForCapacityReservationResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'GetGroupsForCapacityReservationResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.nextToken != null) {
      result
        ..add(const _i4.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.capacityReservationGroups != null) {
      result
        ..add(const _i4.XmlElementName('CapacityReservationGroupSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.capacityReservationGroups!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.CapacityReservationGroup)],
          ),
        ));
    }
    return result;
  }
}
