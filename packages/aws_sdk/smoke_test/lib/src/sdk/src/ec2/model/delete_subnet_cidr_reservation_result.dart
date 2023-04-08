// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_subnet_cidr_reservation_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/subnet_cidr_reservation.dart'
    as _i2;

part 'delete_subnet_cidr_reservation_result.g.dart';

abstract class DeleteSubnetCidrReservationResult
    with
        _i1.AWSEquatable<DeleteSubnetCidrReservationResult>
    implements
        Built<DeleteSubnetCidrReservationResult,
            DeleteSubnetCidrReservationResultBuilder> {
  factory DeleteSubnetCidrReservationResult(
      {_i2.SubnetCidrReservation? deletedSubnetCidrReservation}) {
    return _$DeleteSubnetCidrReservationResult._(
        deletedSubnetCidrReservation: deletedSubnetCidrReservation);
  }

  factory DeleteSubnetCidrReservationResult.build(
          [void Function(DeleteSubnetCidrReservationResultBuilder) updates]) =
      _$DeleteSubnetCidrReservationResult;

  const DeleteSubnetCidrReservationResult._();

  /// Constructs a [DeleteSubnetCidrReservationResult] from a [payload] and [response].
  factory DeleteSubnetCidrReservationResult.fromResponse(
    DeleteSubnetCidrReservationResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    DeleteSubnetCidrReservationResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteSubnetCidrReservationResultBuilder b) {}

  /// Information about the deleted subnet CIDR reservation.
  _i2.SubnetCidrReservation? get deletedSubnetCidrReservation;
  @override
  List<Object?> get props => [deletedSubnetCidrReservation];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteSubnetCidrReservationResult');
    helper.add(
      'deletedSubnetCidrReservation',
      deletedSubnetCidrReservation,
    );
    return helper.toString();
  }
}

class DeleteSubnetCidrReservationResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DeleteSubnetCidrReservationResult> {
  const DeleteSubnetCidrReservationResultEc2QuerySerializer()
      : super('DeleteSubnetCidrReservationResult');

  @override
  Iterable<Type> get types => const [
        DeleteSubnetCidrReservationResult,
        _$DeleteSubnetCidrReservationResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteSubnetCidrReservationResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteSubnetCidrReservationResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'deletedSubnetCidrReservation':
          if (value != null) {
            result.deletedSubnetCidrReservation
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.SubnetCidrReservation),
            ) as _i2.SubnetCidrReservation));
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
    final payload = (object as DeleteSubnetCidrReservationResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'DeleteSubnetCidrReservationResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.deletedSubnetCidrReservation != null) {
      result
        ..add(const _i3.XmlElementName('DeletedSubnetCidrReservation'))
        ..add(serializers.serialize(
          payload.deletedSubnetCidrReservation!,
          specifiedType: const FullType(_i2.SubnetCidrReservation),
        ));
    }
    return result;
  }
}
