// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.cancelled_spot_instance_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_spot_instance_request_state.dart'
    as _i2;

part 'cancelled_spot_instance_request.g.dart';

/// Describes a request to cancel a Spot Instance.
abstract class CancelledSpotInstanceRequest
    with
        _i1.AWSEquatable<CancelledSpotInstanceRequest>
    implements
        Built<CancelledSpotInstanceRequest,
            CancelledSpotInstanceRequestBuilder> {
  /// Describes a request to cancel a Spot Instance.
  factory CancelledSpotInstanceRequest({
    String? spotInstanceRequestId,
    _i2.CancelSpotInstanceRequestState? state,
  }) {
    return _$CancelledSpotInstanceRequest._(
      spotInstanceRequestId: spotInstanceRequestId,
      state: state,
    );
  }

  /// Describes a request to cancel a Spot Instance.
  factory CancelledSpotInstanceRequest.build(
          [void Function(CancelledSpotInstanceRequestBuilder) updates]) =
      _$CancelledSpotInstanceRequest;

  const CancelledSpotInstanceRequest._();

  static const List<_i3.SmithySerializer> serializers = [
    CancelledSpotInstanceRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CancelledSpotInstanceRequestBuilder b) {}

  /// The ID of the Spot Instance request.
  String? get spotInstanceRequestId;

  /// The state of the Spot Instance request.
  _i2.CancelSpotInstanceRequestState? get state;
  @override
  List<Object?> get props => [
        spotInstanceRequestId,
        state,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CancelledSpotInstanceRequest');
    helper.add(
      'spotInstanceRequestId',
      spotInstanceRequestId,
    );
    helper.add(
      'state',
      state,
    );
    return helper.toString();
  }
}

class CancelledSpotInstanceRequestEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<CancelledSpotInstanceRequest> {
  const CancelledSpotInstanceRequestEc2QuerySerializer()
      : super('CancelledSpotInstanceRequest');

  @override
  Iterable<Type> get types => const [
        CancelledSpotInstanceRequest,
        _$CancelledSpotInstanceRequest,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CancelledSpotInstanceRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CancelledSpotInstanceRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'spotInstanceRequestId':
          if (value != null) {
            result.spotInstanceRequestId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'state':
          if (value != null) {
            result.state = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.CancelSpotInstanceRequestState),
            ) as _i2.CancelSpotInstanceRequestState);
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
    final payload = (object as CancelledSpotInstanceRequest);
    final result = <Object?>[
      const _i3.XmlElementName(
        'CancelledSpotInstanceRequestResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.spotInstanceRequestId != null) {
      result
        ..add(const _i3.XmlElementName('SpotInstanceRequestId'))
        ..add(serializers.serialize(
          payload.spotInstanceRequestId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.state != null) {
      result
        ..add(const _i3.XmlElementName('State'))
        ..add(serializers.serialize(
          payload.state!,
          specifiedType:
              const FullType.nullable(_i2.CancelSpotInstanceRequestState),
        ));
    }
    return result;
  }
}
