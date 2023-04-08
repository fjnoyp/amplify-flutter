// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.start_network_insights_access_scope_analysis_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/network_insights_access_scope_analysis.dart'
    as _i2;

part 'start_network_insights_access_scope_analysis_result.g.dart';

abstract class StartNetworkInsightsAccessScopeAnalysisResult
    with
        _i1.AWSEquatable<StartNetworkInsightsAccessScopeAnalysisResult>
    implements
        Built<StartNetworkInsightsAccessScopeAnalysisResult,
            StartNetworkInsightsAccessScopeAnalysisResultBuilder> {
  factory StartNetworkInsightsAccessScopeAnalysisResult(
      {_i2.NetworkInsightsAccessScopeAnalysis?
          networkInsightsAccessScopeAnalysis}) {
    return _$StartNetworkInsightsAccessScopeAnalysisResult._(
        networkInsightsAccessScopeAnalysis: networkInsightsAccessScopeAnalysis);
  }

  factory StartNetworkInsightsAccessScopeAnalysisResult.build(
      [void Function(StartNetworkInsightsAccessScopeAnalysisResultBuilder)
          updates]) = _$StartNetworkInsightsAccessScopeAnalysisResult;

  const StartNetworkInsightsAccessScopeAnalysisResult._();

  /// Constructs a [StartNetworkInsightsAccessScopeAnalysisResult] from a [payload] and [response].
  factory StartNetworkInsightsAccessScopeAnalysisResult.fromResponse(
    StartNetworkInsightsAccessScopeAnalysisResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    StartNetworkInsightsAccessScopeAnalysisResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StartNetworkInsightsAccessScopeAnalysisResultBuilder b) {}

  /// The Network Access Scope analysis.
  _i2.NetworkInsightsAccessScopeAnalysis?
      get networkInsightsAccessScopeAnalysis;
  @override
  List<Object?> get props => [networkInsightsAccessScopeAnalysis];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'StartNetworkInsightsAccessScopeAnalysisResult');
    helper.add(
      'networkInsightsAccessScopeAnalysis',
      networkInsightsAccessScopeAnalysis,
    );
    return helper.toString();
  }
}

class StartNetworkInsightsAccessScopeAnalysisResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<
        StartNetworkInsightsAccessScopeAnalysisResult> {
  const StartNetworkInsightsAccessScopeAnalysisResultEc2QuerySerializer()
      : super('StartNetworkInsightsAccessScopeAnalysisResult');

  @override
  Iterable<Type> get types => const [
        StartNetworkInsightsAccessScopeAnalysisResult,
        _$StartNetworkInsightsAccessScopeAnalysisResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  StartNetworkInsightsAccessScopeAnalysisResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StartNetworkInsightsAccessScopeAnalysisResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'networkInsightsAccessScopeAnalysis':
          if (value != null) {
            result.networkInsightsAccessScopeAnalysis
                .replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i2.NetworkInsightsAccessScopeAnalysis),
            ) as _i2.NetworkInsightsAccessScopeAnalysis));
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
    final payload = (object as StartNetworkInsightsAccessScopeAnalysisResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'StartNetworkInsightsAccessScopeAnalysisResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.networkInsightsAccessScopeAnalysis != null) {
      result
        ..add(const _i3.XmlElementName('NetworkInsightsAccessScopeAnalysis'))
        ..add(serializers.serialize(
          payload.networkInsightsAccessScopeAnalysis!,
          specifiedType: const FullType(_i2.NetworkInsightsAccessScopeAnalysis),
        ));
    }
    return result;
  }
}
