// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_subnet_cidr_reservation_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/subnet_cidr_reservation.dart'
    as _i2;

part 'create_subnet_cidr_reservation_result.g.dart';

abstract class CreateSubnetCidrReservationResult
    with
        _i1.AWSEquatable<CreateSubnetCidrReservationResult>
    implements
        Built<CreateSubnetCidrReservationResult,
            CreateSubnetCidrReservationResultBuilder> {
  factory CreateSubnetCidrReservationResult(
      {_i2.SubnetCidrReservation? subnetCidrReservation}) {
    return _$CreateSubnetCidrReservationResult._(
        subnetCidrReservation: subnetCidrReservation);
  }

  factory CreateSubnetCidrReservationResult.build(
          [void Function(CreateSubnetCidrReservationResultBuilder) updates]) =
      _$CreateSubnetCidrReservationResult;

  const CreateSubnetCidrReservationResult._();

  /// Constructs a [CreateSubnetCidrReservationResult] from a [payload] and [response].
  factory CreateSubnetCidrReservationResult.fromResponse(
    CreateSubnetCidrReservationResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    CreateSubnetCidrReservationResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateSubnetCidrReservationResultBuilder b) {}

  /// Information about the created subnet CIDR reservation.
  _i2.SubnetCidrReservation? get subnetCidrReservation;
  @override
  List<Object?> get props => [subnetCidrReservation];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateSubnetCidrReservationResult');
    helper.add(
      'subnetCidrReservation',
      subnetCidrReservation,
    );
    return helper.toString();
  }
}

class CreateSubnetCidrReservationResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<CreateSubnetCidrReservationResult> {
  const CreateSubnetCidrReservationResultEc2QuerySerializer()
      : super('CreateSubnetCidrReservationResult');

  @override
  Iterable<Type> get types => const [
        CreateSubnetCidrReservationResult,
        _$CreateSubnetCidrReservationResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateSubnetCidrReservationResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateSubnetCidrReservationResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'subnetCidrReservation':
          if (value != null) {
            result.subnetCidrReservation.replace((serializers.deserialize(
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
    final payload = (object as CreateSubnetCidrReservationResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'CreateSubnetCidrReservationResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.subnetCidrReservation != null) {
      result
        ..add(const _i3.XmlElementName('SubnetCidrReservation'))
        ..add(serializers.serialize(
          payload.subnetCidrReservation!,
          specifiedType: const FullType(_i2.SubnetCidrReservation),
        ));
    }
    return result;
  }
}
