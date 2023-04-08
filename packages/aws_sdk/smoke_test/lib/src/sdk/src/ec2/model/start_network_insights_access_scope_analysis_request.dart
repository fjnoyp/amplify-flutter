// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.start_network_insights_access_scope_analysis_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart' as _i3;

part 'start_network_insights_access_scope_analysis_request.g.dart';

abstract class StartNetworkInsightsAccessScopeAnalysisRequest
    with
        _i1.HttpInput<StartNetworkInsightsAccessScopeAnalysisRequest>,
        _i2.AWSEquatable<StartNetworkInsightsAccessScopeAnalysisRequest>
    implements
        Built<StartNetworkInsightsAccessScopeAnalysisRequest,
            StartNetworkInsightsAccessScopeAnalysisRequestBuilder> {
  factory StartNetworkInsightsAccessScopeAnalysisRequest({
    required String networkInsightsAccessScopeId,
    bool? dryRun,
    List<_i3.TagSpecification>? tagSpecifications,
    String? clientToken,
  }) {
    dryRun ??= false;
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      clientToken ??= '00000000-0000-4000-8000-000000000000';
    } else {
      clientToken ??= _i2.uuid(secure: true);
    }
    return _$StartNetworkInsightsAccessScopeAnalysisRequest._(
      networkInsightsAccessScopeId: networkInsightsAccessScopeId,
      dryRun: dryRun,
      tagSpecifications:
          tagSpecifications == null ? null : _i4.BuiltList(tagSpecifications),
      clientToken: clientToken,
    );
  }

  factory StartNetworkInsightsAccessScopeAnalysisRequest.build(
      [void Function(StartNetworkInsightsAccessScopeAnalysisRequestBuilder)
          updates]) = _$StartNetworkInsightsAccessScopeAnalysisRequest;

  const StartNetworkInsightsAccessScopeAnalysisRequest._();

  factory StartNetworkInsightsAccessScopeAnalysisRequest.fromRequest(
    StartNetworkInsightsAccessScopeAnalysisRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    StartNetworkInsightsAccessScopeAnalysisRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StartNetworkInsightsAccessScopeAnalysisRequestBuilder b) {
    b.dryRun = false;
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      b.clientToken = '00000000-0000-4000-8000-000000000000';
    } else {
      b.clientToken = _i2.uuid(secure: true);
    }
  }

  /// The ID of the Network Access Scope.
  String get networkInsightsAccessScopeId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The tags to apply.
  _i4.BuiltList<_i3.TagSpecification>? get tagSpecifications;

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [How to ensure idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String get clientToken;
  @override
  StartNetworkInsightsAccessScopeAnalysisRequest getPayload() => this;
  @override
  List<Object?> get props => [
        networkInsightsAccessScopeId,
        dryRun,
        tagSpecifications,
        clientToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'StartNetworkInsightsAccessScopeAnalysisRequest');
    helper.add(
      'networkInsightsAccessScopeId',
      networkInsightsAccessScopeId,
    );
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'tagSpecifications',
      tagSpecifications,
    );
    helper.add(
      'clientToken',
      clientToken,
    );
    return helper.toString();
  }
}

class StartNetworkInsightsAccessScopeAnalysisRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<
        StartNetworkInsightsAccessScopeAnalysisRequest> {
  const StartNetworkInsightsAccessScopeAnalysisRequestEc2QuerySerializer()
      : super('StartNetworkInsightsAccessScopeAnalysisRequest');

  @override
  Iterable<Type> get types => const [
        StartNetworkInsightsAccessScopeAnalysisRequest,
        _$StartNetworkInsightsAccessScopeAnalysisRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  StartNetworkInsightsAccessScopeAnalysisRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StartNetworkInsightsAccessScopeAnalysisRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'NetworkInsightsAccessScopeId':
          result.networkInsightsAccessScopeId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'TagSpecification':
          if (value != null) {
            result.tagSpecifications.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.TagSpecification)],
              ),
            ) as _i4.BuiltList<_i3.TagSpecification>));
          }
          break;
        case 'ClientToken':
          result.clientToken = (serializers.deserialize(
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
    final payload = (object as StartNetworkInsightsAccessScopeAnalysisRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'StartNetworkInsightsAccessScopeAnalysisRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('NetworkInsightsAccessScopeId'))
      ..add(serializers.serialize(
        payload.networkInsightsAccessScopeId,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    if (payload.tagSpecifications != null) {
      result
        ..add(const _i1.XmlElementName('TagSpecification'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tagSpecifications!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.TagSpecification)],
          ),
        ));
    }
    result
      ..add(const _i1.XmlElementName('ClientToken'))
      ..add(serializers.serialize(
        payload.clientToken,
        specifiedType: const FullType(String),
      ));
    return result;
  }
}
