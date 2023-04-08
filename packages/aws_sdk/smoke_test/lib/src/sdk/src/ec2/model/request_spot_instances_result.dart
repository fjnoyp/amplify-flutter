// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.request_spot_instances_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/spot_instance_request.dart'
    as _i2;

part 'request_spot_instances_result.g.dart';

/// Contains the output of RequestSpotInstances.
abstract class RequestSpotInstancesResult
    with _i1.AWSEquatable<RequestSpotInstancesResult>
    implements
        Built<RequestSpotInstancesResult, RequestSpotInstancesResultBuilder> {
  /// Contains the output of RequestSpotInstances.
  factory RequestSpotInstancesResult(
      {List<_i2.SpotInstanceRequest>? spotInstanceRequests}) {
    return _$RequestSpotInstancesResult._(
        spotInstanceRequests: spotInstanceRequests == null
            ? null
            : _i3.BuiltList(spotInstanceRequests));
  }

  /// Contains the output of RequestSpotInstances.
  factory RequestSpotInstancesResult.build(
          [void Function(RequestSpotInstancesResultBuilder) updates]) =
      _$RequestSpotInstancesResult;

  const RequestSpotInstancesResult._();

  /// Constructs a [RequestSpotInstancesResult] from a [payload] and [response].
  factory RequestSpotInstancesResult.fromResponse(
    RequestSpotInstancesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    RequestSpotInstancesResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RequestSpotInstancesResultBuilder b) {}

  /// One or more Spot Instance requests.
  _i3.BuiltList<_i2.SpotInstanceRequest>? get spotInstanceRequests;
  @override
  List<Object?> get props => [spotInstanceRequests];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RequestSpotInstancesResult');
    helper.add(
      'spotInstanceRequests',
      spotInstanceRequests,
    );
    return helper.toString();
  }
}

class RequestSpotInstancesResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<RequestSpotInstancesResult> {
  const RequestSpotInstancesResultEc2QuerySerializer()
      : super('RequestSpotInstancesResult');

  @override
  Iterable<Type> get types => const [
        RequestSpotInstancesResult,
        _$RequestSpotInstancesResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RequestSpotInstancesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RequestSpotInstancesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'spotInstanceRequestSet':
          if (value != null) {
            result.spotInstanceRequests
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.SpotInstanceRequest)],
              ),
            ) as _i3.BuiltList<_i2.SpotInstanceRequest>));
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
    final payload = (object as RequestSpotInstancesResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'RequestSpotInstancesResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.spotInstanceRequests != null) {
      result
        ..add(const _i4.XmlElementName('SpotInstanceRequestSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.spotInstanceRequests!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.SpotInstanceRequest)],
          ),
        ));
    }
    return result;
  }
}
