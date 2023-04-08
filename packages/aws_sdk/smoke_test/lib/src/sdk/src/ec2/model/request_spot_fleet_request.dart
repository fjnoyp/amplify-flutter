// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.request_spot_fleet_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/spot_fleet_request_config_data.dart'
    as _i3;

part 'request_spot_fleet_request.g.dart';

/// Contains the parameters for RequestSpotFleet.
abstract class RequestSpotFleetRequest
    with
        _i1.HttpInput<RequestSpotFleetRequest>,
        _i2.AWSEquatable<RequestSpotFleetRequest>
    implements Built<RequestSpotFleetRequest, RequestSpotFleetRequestBuilder> {
  /// Contains the parameters for RequestSpotFleet.
  factory RequestSpotFleetRequest({
    bool? dryRun,
    required _i3.SpotFleetRequestConfigData spotFleetRequestConfig,
  }) {
    dryRun ??= false;
    return _$RequestSpotFleetRequest._(
      dryRun: dryRun,
      spotFleetRequestConfig: spotFleetRequestConfig,
    );
  }

  /// Contains the parameters for RequestSpotFleet.
  factory RequestSpotFleetRequest.build(
          [void Function(RequestSpotFleetRequestBuilder) updates]) =
      _$RequestSpotFleetRequest;

  const RequestSpotFleetRequest._();

  factory RequestSpotFleetRequest.fromRequest(
    RequestSpotFleetRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    RequestSpotFleetRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RequestSpotFleetRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The configuration for the Spot Fleet request.
  _i3.SpotFleetRequestConfigData get spotFleetRequestConfig;
  @override
  RequestSpotFleetRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        spotFleetRequestConfig,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RequestSpotFleetRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'spotFleetRequestConfig',
      spotFleetRequestConfig,
    );
    return helper.toString();
  }
}

class RequestSpotFleetRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<RequestSpotFleetRequest> {
  const RequestSpotFleetRequestEc2QuerySerializer()
      : super('RequestSpotFleetRequest');

  @override
  Iterable<Type> get types => const [
        RequestSpotFleetRequest,
        _$RequestSpotFleetRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RequestSpotFleetRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RequestSpotFleetRequestBuilder();
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
        case 'spotFleetRequestConfig':
          result.spotFleetRequestConfig.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.SpotFleetRequestConfigData),
          ) as _i3.SpotFleetRequestConfigData));
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
    final payload = (object as RequestSpotFleetRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'RequestSpotFleetRequestResponse',
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
      ..add(const _i1.XmlElementName('SpotFleetRequestConfig'))
      ..add(serializers.serialize(
        payload.spotFleetRequestConfig,
        specifiedType: const FullType(_i3.SpotFleetRequestConfigData),
      ));
    return result;
  }
}
