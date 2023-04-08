// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.cancel_capacity_reservation_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'cancel_capacity_reservation_request.g.dart';

abstract class CancelCapacityReservationRequest
    with
        _i1.HttpInput<CancelCapacityReservationRequest>,
        _i2.AWSEquatable<CancelCapacityReservationRequest>
    implements
        Built<CancelCapacityReservationRequest,
            CancelCapacityReservationRequestBuilder> {
  factory CancelCapacityReservationRequest({
    required String capacityReservationId,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$CancelCapacityReservationRequest._(
      capacityReservationId: capacityReservationId,
      dryRun: dryRun,
    );
  }

  factory CancelCapacityReservationRequest.build(
          [void Function(CancelCapacityReservationRequestBuilder) updates]) =
      _$CancelCapacityReservationRequest;

  const CancelCapacityReservationRequest._();

  factory CancelCapacityReservationRequest.fromRequest(
    CancelCapacityReservationRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    CancelCapacityReservationRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CancelCapacityReservationRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the Capacity Reservation to be cancelled.
  String get capacityReservationId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  CancelCapacityReservationRequest getPayload() => this;
  @override
  List<Object?> get props => [
        capacityReservationId,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CancelCapacityReservationRequest');
    helper.add(
      'capacityReservationId',
      capacityReservationId,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    return helper.toString();
  }
}

class CancelCapacityReservationRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CancelCapacityReservationRequest> {
  const CancelCapacityReservationRequestEc2QuerySerializer()
      : super('CancelCapacityReservationRequest');

  @override
  Iterable<Type> get types => const [
        CancelCapacityReservationRequest,
        _$CancelCapacityReservationRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CancelCapacityReservationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CancelCapacityReservationRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'CapacityReservationId':
          result.capacityReservationId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as CancelCapacityReservationRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'CancelCapacityReservationRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('CapacityReservationId'))
      ..add(serializers.serialize(
        payload.capacityReservationId,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
