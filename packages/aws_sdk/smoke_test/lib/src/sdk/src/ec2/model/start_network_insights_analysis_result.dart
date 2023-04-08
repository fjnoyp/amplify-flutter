// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.start_network_insights_analysis_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/network_insights_analysis.dart'
    as _i2;

part 'start_network_insights_analysis_result.g.dart';

abstract class StartNetworkInsightsAnalysisResult
    with
        _i1.AWSEquatable<StartNetworkInsightsAnalysisResult>
    implements
        Built<StartNetworkInsightsAnalysisResult,
            StartNetworkInsightsAnalysisResultBuilder> {
  factory StartNetworkInsightsAnalysisResult(
      {_i2.NetworkInsightsAnalysis? networkInsightsAnalysis}) {
    return _$StartNetworkInsightsAnalysisResult._(
        networkInsightsAnalysis: networkInsightsAnalysis);
  }

  factory StartNetworkInsightsAnalysisResult.build(
          [void Function(StartNetworkInsightsAnalysisResultBuilder) updates]) =
      _$StartNetworkInsightsAnalysisResult;

  const StartNetworkInsightsAnalysisResult._();

  /// Constructs a [StartNetworkInsightsAnalysisResult] from a [payload] and [response].
  factory StartNetworkInsightsAnalysisResult.fromResponse(
    StartNetworkInsightsAnalysisResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    StartNetworkInsightsAnalysisResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StartNetworkInsightsAnalysisResultBuilder b) {}

  /// Information about the network insights analysis.
  _i2.NetworkInsightsAnalysis? get networkInsightsAnalysis;
  @override
  List<Object?> get props => [networkInsightsAnalysis];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('StartNetworkInsightsAnalysisResult');
    helper.add(
      'networkInsightsAnalysis',
      networkInsightsAnalysis,
    );
    return helper.toString();
  }
}

class StartNetworkInsightsAnalysisResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<StartNetworkInsightsAnalysisResult> {
  const StartNetworkInsightsAnalysisResultEc2QuerySerializer()
      : super('StartNetworkInsightsAnalysisResult');

  @override
  Iterable<Type> get types => const [
        StartNetworkInsightsAnalysisResult,
        _$StartNetworkInsightsAnalysisResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  StartNetworkInsightsAnalysisResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StartNetworkInsightsAnalysisResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'networkInsightsAnalysis':
          if (value != null) {
            result.networkInsightsAnalysis.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.NetworkInsightsAnalysis),
            ) as _i2.NetworkInsightsAnalysis));
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
    final payload = (object as StartNetworkInsightsAnalysisResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'StartNetworkInsightsAnalysisResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.networkInsightsAnalysis != null) {
      result
        ..add(const _i3.XmlElementName('NetworkInsightsAnalysis'))
        ..add(serializers.serialize(
          payload.networkInsightsAnalysis!,
          specifiedType: const FullType(_i2.NetworkInsightsAnalysis),
        ));
    }
    return result;
  }
}
