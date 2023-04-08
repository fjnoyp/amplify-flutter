// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.cancel_spot_instance_requests_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/cancelled_spot_instance_request.dart'
    as _i2;

part 'cancel_spot_instance_requests_result.g.dart';

/// Contains the output of CancelSpotInstanceRequests.
abstract class CancelSpotInstanceRequestsResult
    with
        _i1.AWSEquatable<CancelSpotInstanceRequestsResult>
    implements
        Built<CancelSpotInstanceRequestsResult,
            CancelSpotInstanceRequestsResultBuilder> {
  /// Contains the output of CancelSpotInstanceRequests.
  factory CancelSpotInstanceRequestsResult(
      {List<_i2.CancelledSpotInstanceRequest>? cancelledSpotInstanceRequests}) {
    return _$CancelSpotInstanceRequestsResult._(
        cancelledSpotInstanceRequests: cancelledSpotInstanceRequests == null
            ? null
            : _i3.BuiltList(cancelledSpotInstanceRequests));
  }

  /// Contains the output of CancelSpotInstanceRequests.
  factory CancelSpotInstanceRequestsResult.build(
          [void Function(CancelSpotInstanceRequestsResultBuilder) updates]) =
      _$CancelSpotInstanceRequestsResult;

  const CancelSpotInstanceRequestsResult._();

  /// Constructs a [CancelSpotInstanceRequestsResult] from a [payload] and [response].
  factory CancelSpotInstanceRequestsResult.fromResponse(
    CancelSpotInstanceRequestsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    CancelSpotInstanceRequestsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CancelSpotInstanceRequestsResultBuilder b) {}

  /// One or more Spot Instance requests.
  _i3.BuiltList<_i2.CancelledSpotInstanceRequest>?
      get cancelledSpotInstanceRequests;
  @override
  List<Object?> get props => [cancelledSpotInstanceRequests];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CancelSpotInstanceRequestsResult');
    helper.add(
      'cancelledSpotInstanceRequests',
      cancelledSpotInstanceRequests,
    );
    return helper.toString();
  }
}

class CancelSpotInstanceRequestsResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<CancelSpotInstanceRequestsResult> {
  const CancelSpotInstanceRequestsResultEc2QuerySerializer()
      : super('CancelSpotInstanceRequestsResult');

  @override
  Iterable<Type> get types => const [
        CancelSpotInstanceRequestsResult,
        _$CancelSpotInstanceRequestsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CancelSpotInstanceRequestsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CancelSpotInstanceRequestsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'spotInstanceRequestSet':
          if (value != null) {
            result.cancelledSpotInstanceRequests
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.CancelledSpotInstanceRequest)],
              ),
            ) as _i3.BuiltList<_i2.CancelledSpotInstanceRequest>));
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
    final payload = (object as CancelSpotInstanceRequestsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'CancelSpotInstanceRequestsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.cancelledSpotInstanceRequests != null) {
      result
        ..add(const _i4.XmlElementName('SpotInstanceRequestSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.cancelledSpotInstanceRequests!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.CancelledSpotInstanceRequest)],
          ),
        ));
    }
    return result;
  }
}
