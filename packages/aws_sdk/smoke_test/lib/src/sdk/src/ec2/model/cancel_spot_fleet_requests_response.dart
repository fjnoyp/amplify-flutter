// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.cancel_spot_fleet_requests_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_spot_fleet_requests_error_item.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_spot_fleet_requests_success_item.dart'
    as _i2;

part 'cancel_spot_fleet_requests_response.g.dart';

/// Contains the output of CancelSpotFleetRequests.
abstract class CancelSpotFleetRequestsResponse
    with
        _i1.AWSEquatable<CancelSpotFleetRequestsResponse>
    implements
        Built<CancelSpotFleetRequestsResponse,
            CancelSpotFleetRequestsResponseBuilder> {
  /// Contains the output of CancelSpotFleetRequests.
  factory CancelSpotFleetRequestsResponse({
    List<_i2.CancelSpotFleetRequestsSuccessItem>? successfulFleetRequests,
    List<_i3.CancelSpotFleetRequestsErrorItem>? unsuccessfulFleetRequests,
  }) {
    return _$CancelSpotFleetRequestsResponse._(
      successfulFleetRequests: successfulFleetRequests == null
          ? null
          : _i4.BuiltList(successfulFleetRequests),
      unsuccessfulFleetRequests: unsuccessfulFleetRequests == null
          ? null
          : _i4.BuiltList(unsuccessfulFleetRequests),
    );
  }

  /// Contains the output of CancelSpotFleetRequests.
  factory CancelSpotFleetRequestsResponse.build(
          [void Function(CancelSpotFleetRequestsResponseBuilder) updates]) =
      _$CancelSpotFleetRequestsResponse;

  const CancelSpotFleetRequestsResponse._();

  /// Constructs a [CancelSpotFleetRequestsResponse] from a [payload] and [response].
  factory CancelSpotFleetRequestsResponse.fromResponse(
    CancelSpotFleetRequestsResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i5.SmithySerializer> serializers = [
    CancelSpotFleetRequestsResponseEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CancelSpotFleetRequestsResponseBuilder b) {}

  /// Information about the Spot Fleet requests that are successfully canceled.
  _i4.BuiltList<_i2.CancelSpotFleetRequestsSuccessItem>?
      get successfulFleetRequests;

  /// Information about the Spot Fleet requests that are not successfully canceled.
  _i4.BuiltList<_i3.CancelSpotFleetRequestsErrorItem>?
      get unsuccessfulFleetRequests;
  @override
  List<Object?> get props => [
        successfulFleetRequests,
        unsuccessfulFleetRequests,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CancelSpotFleetRequestsResponse');
    helper.add(
      'successfulFleetRequests',
      successfulFleetRequests,
    );
    helper.add(
      'unsuccessfulFleetRequests',
      unsuccessfulFleetRequests,
    );
    return helper.toString();
  }
}

class CancelSpotFleetRequestsResponseEc2QuerySerializer
    extends _i5.StructuredSmithySerializer<CancelSpotFleetRequestsResponse> {
  const CancelSpotFleetRequestsResponseEc2QuerySerializer()
      : super('CancelSpotFleetRequestsResponse');

  @override
  Iterable<Type> get types => const [
        CancelSpotFleetRequestsResponse,
        _$CancelSpotFleetRequestsResponse,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CancelSpotFleetRequestsResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CancelSpotFleetRequestsResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'successfulFleetRequestSet':
          if (value != null) {
            result.successfulFleetRequests
                .replace((const _i5.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i5.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i2.CancelSpotFleetRequestsSuccessItem)],
              ),
            ) as _i4.BuiltList<_i2.CancelSpotFleetRequestsSuccessItem>));
          }
          break;
        case 'unsuccessfulFleetRequestSet':
          if (value != null) {
            result.unsuccessfulFleetRequests
                .replace((const _i5.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i5.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.CancelSpotFleetRequestsErrorItem)],
              ),
            ) as _i4.BuiltList<_i3.CancelSpotFleetRequestsErrorItem>));
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
    final payload = (object as CancelSpotFleetRequestsResponse);
    final result = <Object?>[
      const _i5.XmlElementName(
        'CancelSpotFleetRequestsResponseResponse',
        _i5.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.successfulFleetRequests != null) {
      result
        ..add(const _i5.XmlElementName('SuccessfulFleetRequestSet'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.successfulFleetRequests!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i2.CancelSpotFleetRequestsSuccessItem)],
          ),
        ));
    }
    if (payload.unsuccessfulFleetRequests != null) {
      result
        ..add(const _i5.XmlElementName('UnsuccessfulFleetRequestSet'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.unsuccessfulFleetRequests!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.CancelSpotFleetRequestsErrorItem)],
          ),
        ));
    }
    return result;
  }
}
