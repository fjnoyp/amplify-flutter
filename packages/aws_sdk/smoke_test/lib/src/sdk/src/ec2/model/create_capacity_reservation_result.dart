// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_capacity_reservation_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation.dart'
    as _i2;

part 'create_capacity_reservation_result.g.dart';

abstract class CreateCapacityReservationResult
    with
        _i1.AWSEquatable<CreateCapacityReservationResult>
    implements
        Built<CreateCapacityReservationResult,
            CreateCapacityReservationResultBuilder> {
  factory CreateCapacityReservationResult(
      {_i2.CapacityReservation? capacityReservation}) {
    return _$CreateCapacityReservationResult._(
        capacityReservation: capacityReservation);
  }

  factory CreateCapacityReservationResult.build(
          [void Function(CreateCapacityReservationResultBuilder) updates]) =
      _$CreateCapacityReservationResult;

  const CreateCapacityReservationResult._();

  /// Constructs a [CreateCapacityReservationResult] from a [payload] and [response].
  factory CreateCapacityReservationResult.fromResponse(
    CreateCapacityReservationResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    CreateCapacityReservationResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateCapacityReservationResultBuilder b) {}

  /// Information about the Capacity Reservation.
  _i2.CapacityReservation? get capacityReservation;
  @override
  List<Object?> get props => [capacityReservation];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateCapacityReservationResult');
    helper.add(
      'capacityReservation',
      capacityReservation,
    );
    return helper.toString();
  }
}

class CreateCapacityReservationResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<CreateCapacityReservationResult> {
  const CreateCapacityReservationResultEc2QuerySerializer()
      : super('CreateCapacityReservationResult');

  @override
  Iterable<Type> get types => const [
        CreateCapacityReservationResult,
        _$CreateCapacityReservationResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateCapacityReservationResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateCapacityReservationResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'capacityReservation':
          if (value != null) {
            result.capacityReservation.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.CapacityReservation),
            ) as _i2.CapacityReservation));
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
    final payload = (object as CreateCapacityReservationResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'CreateCapacityReservationResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.capacityReservation != null) {
      result
        ..add(const _i3.XmlElementName('CapacityReservation'))
        ..add(serializers.serialize(
          payload.capacityReservation!,
          specifiedType: const FullType(_i2.CapacityReservation),
        ));
    }
    return result;
  }
}
