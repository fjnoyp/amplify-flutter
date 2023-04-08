// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.cancel_spot_fleet_requests_error_item; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_spot_fleet_requests_error.dart'
    as _i2;

part 'cancel_spot_fleet_requests_error_item.g.dart';

/// Describes a Spot Fleet request that was not successfully canceled.
abstract class CancelSpotFleetRequestsErrorItem
    with
        _i1.AWSEquatable<CancelSpotFleetRequestsErrorItem>
    implements
        Built<CancelSpotFleetRequestsErrorItem,
            CancelSpotFleetRequestsErrorItemBuilder> {
  /// Describes a Spot Fleet request that was not successfully canceled.
  factory CancelSpotFleetRequestsErrorItem({
    _i2.CancelSpotFleetRequestsError? error,
    String? spotFleetRequestId,
  }) {
    return _$CancelSpotFleetRequestsErrorItem._(
      error: error,
      spotFleetRequestId: spotFleetRequestId,
    );
  }

  /// Describes a Spot Fleet request that was not successfully canceled.
  factory CancelSpotFleetRequestsErrorItem.build(
          [void Function(CancelSpotFleetRequestsErrorItemBuilder) updates]) =
      _$CancelSpotFleetRequestsErrorItem;

  const CancelSpotFleetRequestsErrorItem._();

  static const List<_i3.SmithySerializer> serializers = [
    CancelSpotFleetRequestsErrorItemEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CancelSpotFleetRequestsErrorItemBuilder b) {}

  /// The error.
  _i2.CancelSpotFleetRequestsError? get error;

  /// The ID of the Spot Fleet request.
  String? get spotFleetRequestId;
  @override
  List<Object?> get props => [
        error,
        spotFleetRequestId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CancelSpotFleetRequestsErrorItem');
    helper.add(
      'error',
      error,
    );
    helper.add(
      'spotFleetRequestId',
      spotFleetRequestId,
    );
    return helper.toString();
  }
}

class CancelSpotFleetRequestsErrorItemEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<CancelSpotFleetRequestsErrorItem> {
  const CancelSpotFleetRequestsErrorItemEc2QuerySerializer()
      : super('CancelSpotFleetRequestsErrorItem');

  @override
  Iterable<Type> get types => const [
        CancelSpotFleetRequestsErrorItem,
        _$CancelSpotFleetRequestsErrorItem,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CancelSpotFleetRequestsErrorItem deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CancelSpotFleetRequestsErrorItemBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'error':
          if (value != null) {
            result.error.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.CancelSpotFleetRequestsError),
            ) as _i2.CancelSpotFleetRequestsError));
          }
          break;
        case 'spotFleetRequestId':
          if (value != null) {
            result.spotFleetRequestId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as CancelSpotFleetRequestsErrorItem);
    final result = <Object?>[
      const _i3.XmlElementName(
        'CancelSpotFleetRequestsErrorItemResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.error != null) {
      result
        ..add(const _i3.XmlElementName('Error'))
        ..add(serializers.serialize(
          payload.error!,
          specifiedType: const FullType(_i2.CancelSpotFleetRequestsError),
        ));
    }
    if (payload.spotFleetRequestId != null) {
      result
        ..add(const _i3.XmlElementName('SpotFleetRequestId'))
        ..add(serializers.serialize(
          payload.spotFleetRequestId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
