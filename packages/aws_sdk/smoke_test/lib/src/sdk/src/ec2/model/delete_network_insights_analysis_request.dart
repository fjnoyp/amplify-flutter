// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_network_insights_analysis_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_network_insights_analysis_request.g.dart';

abstract class DeleteNetworkInsightsAnalysisRequest
    with
        _i1.HttpInput<DeleteNetworkInsightsAnalysisRequest>,
        _i2.AWSEquatable<DeleteNetworkInsightsAnalysisRequest>
    implements
        Built<DeleteNetworkInsightsAnalysisRequest,
            DeleteNetworkInsightsAnalysisRequestBuilder> {
  factory DeleteNetworkInsightsAnalysisRequest({
    bool? dryRun,
    required String networkInsightsAnalysisId,
  }) {
    dryRun ??= false;
    return _$DeleteNetworkInsightsAnalysisRequest._(
      dryRun: dryRun,
      networkInsightsAnalysisId: networkInsightsAnalysisId,
    );
  }

  factory DeleteNetworkInsightsAnalysisRequest.build(
      [void Function(DeleteNetworkInsightsAnalysisRequestBuilder)
          updates]) = _$DeleteNetworkInsightsAnalysisRequest;

  const DeleteNetworkInsightsAnalysisRequest._();

  factory DeleteNetworkInsightsAnalysisRequest.fromRequest(
    DeleteNetworkInsightsAnalysisRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DeleteNetworkInsightsAnalysisRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteNetworkInsightsAnalysisRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the network insights analysis.
  String get networkInsightsAnalysisId;
  @override
  DeleteNetworkInsightsAnalysisRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        networkInsightsAnalysisId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteNetworkInsightsAnalysisRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'networkInsightsAnalysisId',
      networkInsightsAnalysisId,
    );
    return helper.toString();
  }
}

class DeleteNetworkInsightsAnalysisRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DeleteNetworkInsightsAnalysisRequest> {
  const DeleteNetworkInsightsAnalysisRequestEc2QuerySerializer()
      : super('DeleteNetworkInsightsAnalysisRequest');

  @override
  Iterable<Type> get types => const [
        DeleteNetworkInsightsAnalysisRequest,
        _$DeleteNetworkInsightsAnalysisRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteNetworkInsightsAnalysisRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteNetworkInsightsAnalysisRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'NetworkInsightsAnalysisId':
          result.networkInsightsAnalysisId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as DeleteNetworkInsightsAnalysisRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DeleteNetworkInsightsAnalysisRequestResponse',
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
      ..add(const _i1.XmlElementName('NetworkInsightsAnalysisId'))
      ..add(serializers.serialize(
        payload.networkInsightsAnalysisId,
        specifiedType: const FullType(String),
      ));
    return result;
  }
}
