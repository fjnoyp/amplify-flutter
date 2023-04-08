// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.cancel_spot_fleet_requests_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'cancel_spot_fleet_requests_request.g.dart';

/// Contains the parameters for CancelSpotFleetRequests.
abstract class CancelSpotFleetRequestsRequest
    with
        _i1.HttpInput<CancelSpotFleetRequestsRequest>,
        _i2.AWSEquatable<CancelSpotFleetRequestsRequest>
    implements
        Built<CancelSpotFleetRequestsRequest,
            CancelSpotFleetRequestsRequestBuilder> {
  /// Contains the parameters for CancelSpotFleetRequests.
  factory CancelSpotFleetRequestsRequest({
    bool? dryRun,
    required List<String> spotFleetRequestIds,
    bool? terminateInstances,
  }) {
    dryRun ??= false;
    terminateInstances ??= false;
    return _$CancelSpotFleetRequestsRequest._(
      dryRun: dryRun,
      spotFleetRequestIds: _i3.BuiltList(spotFleetRequestIds),
      terminateInstances: terminateInstances,
    );
  }

  /// Contains the parameters for CancelSpotFleetRequests.
  factory CancelSpotFleetRequestsRequest.build(
          [void Function(CancelSpotFleetRequestsRequestBuilder) updates]) =
      _$CancelSpotFleetRequestsRequest;

  const CancelSpotFleetRequestsRequest._();

  factory CancelSpotFleetRequestsRequest.fromRequest(
    CancelSpotFleetRequestsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    CancelSpotFleetRequestsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CancelSpotFleetRequestsRequestBuilder b) {
    b.dryRun = false;
    b.terminateInstances = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The IDs of the Spot Fleet requests.
  _i3.BuiltList<String> get spotFleetRequestIds;

  /// Indicates whether to terminate instances for a Spot Fleet request if it is canceled successfully.
  bool get terminateInstances;
  @override
  CancelSpotFleetRequestsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        spotFleetRequestIds,
        terminateInstances,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CancelSpotFleetRequestsRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'spotFleetRequestIds',
      spotFleetRequestIds,
    );
    helper.add(
      'terminateInstances',
      terminateInstances,
    );
    return helper.toString();
  }
}

class CancelSpotFleetRequestsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CancelSpotFleetRequestsRequest> {
  const CancelSpotFleetRequestsRequestEc2QuerySerializer()
      : super('CancelSpotFleetRequestsRequest');

  @override
  Iterable<Type> get types => const [
        CancelSpotFleetRequestsRequest,
        _$CancelSpotFleetRequestsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CancelSpotFleetRequestsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CancelSpotFleetRequestsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'spotFleetRequestId':
          result.spotFleetRequestIds.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
          break;
        case 'terminateInstances':
          result.terminateInstances = (serializers.deserialize(
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
    final payload = (object as CancelSpotFleetRequestsRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'CancelSpotFleetRequestsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i1.XmlElementName('SpotFleetRequestId'))
      ..add(const _i1.XmlBuiltListSerializer(
        memberName: 'item',
        indexer: _i1.XmlIndexer.ec2QueryList,
      ).serialize(
        serializers,
        payload.spotFleetRequestIds,
        specifiedType: const FullType.nullable(
          _i3.BuiltList,
          [FullType(String)],
        ),
      ));
    result
      ..add(const _i1.XmlElementName('TerminateInstances'))
      ..add(serializers.serialize(
        payload.terminateInstances,
        specifiedType: const FullType(bool),
      ));
    return result;
  }
}
