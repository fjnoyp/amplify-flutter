// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.access_scope_analysis_finding; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/path_component.dart' as _i2;

part 'access_scope_analysis_finding.g.dart';

/// Describes a finding for a Network Access Scope.
abstract class AccessScopeAnalysisFinding
    with _i1.AWSEquatable<AccessScopeAnalysisFinding>
    implements
        Built<AccessScopeAnalysisFinding, AccessScopeAnalysisFindingBuilder> {
  /// Describes a finding for a Network Access Scope.
  factory AccessScopeAnalysisFinding({
    String? networkInsightsAccessScopeAnalysisId,
    String? networkInsightsAccessScopeId,
    String? findingId,
    List<_i2.PathComponent>? findingComponents,
  }) {
    return _$AccessScopeAnalysisFinding._(
      networkInsightsAccessScopeAnalysisId:
          networkInsightsAccessScopeAnalysisId,
      networkInsightsAccessScopeId: networkInsightsAccessScopeId,
      findingId: findingId,
      findingComponents:
          findingComponents == null ? null : _i3.BuiltList(findingComponents),
    );
  }

  /// Describes a finding for a Network Access Scope.
  factory AccessScopeAnalysisFinding.build(
          [void Function(AccessScopeAnalysisFindingBuilder) updates]) =
      _$AccessScopeAnalysisFinding;

  const AccessScopeAnalysisFinding._();

  static const List<_i4.SmithySerializer> serializers = [
    AccessScopeAnalysisFindingEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AccessScopeAnalysisFindingBuilder b) {}

  /// The ID of the Network Access Scope analysis.
  String? get networkInsightsAccessScopeAnalysisId;

  /// The ID of the Network Access Scope.
  String? get networkInsightsAccessScopeId;

  /// The ID of the finding.
  String? get findingId;

  /// The finding components.
  _i3.BuiltList<_i2.PathComponent>? get findingComponents;
  @override
  List<Object?> get props => [
        networkInsightsAccessScopeAnalysisId,
        networkInsightsAccessScopeId,
        findingId,
        findingComponents,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AccessScopeAnalysisFinding');
    helper.add(
      'networkInsightsAccessScopeAnalysisId',
      networkInsightsAccessScopeAnalysisId,
    );
    helper.add(
      'networkInsightsAccessScopeId',
      networkInsightsAccessScopeId,
    );
    helper.add(
      'findingId',
      findingId,
    );
    helper.add(
      'findingComponents',
      findingComponents,
    );
    return helper.toString();
  }
}

class AccessScopeAnalysisFindingEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<AccessScopeAnalysisFinding> {
  const AccessScopeAnalysisFindingEc2QuerySerializer()
      : super('AccessScopeAnalysisFinding');

  @override
  Iterable<Type> get types => const [
        AccessScopeAnalysisFinding,
        _$AccessScopeAnalysisFinding,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AccessScopeAnalysisFinding deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccessScopeAnalysisFindingBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'networkInsightsAccessScopeAnalysisId':
          if (value != null) {
            result.networkInsightsAccessScopeAnalysisId =
                (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'networkInsightsAccessScopeId':
          if (value != null) {
            result.networkInsightsAccessScopeId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'findingId':
          if (value != null) {
            result.findingId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'findingComponentSet':
          if (value != null) {
            result.findingComponents.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.PathComponent)],
              ),
            ) as _i3.BuiltList<_i2.PathComponent>));
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
    final payload = (object as AccessScopeAnalysisFinding);
    final result = <Object?>[
      const _i4.XmlElementName(
        'AccessScopeAnalysisFindingResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.networkInsightsAccessScopeAnalysisId != null) {
      result
        ..add(const _i4.XmlElementName('NetworkInsightsAccessScopeAnalysisId'))
        ..add(serializers.serialize(
          payload.networkInsightsAccessScopeAnalysisId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.networkInsightsAccessScopeId != null) {
      result
        ..add(const _i4.XmlElementName('NetworkInsightsAccessScopeId'))
        ..add(serializers.serialize(
          payload.networkInsightsAccessScopeId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.findingId != null) {
      result
        ..add(const _i4.XmlElementName('FindingId'))
        ..add(serializers.serialize(
          payload.findingId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.findingComponents != null) {
      result
        ..add(const _i4.XmlElementName('FindingComponentSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.findingComponents!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.PathComponent)],
          ),
        ));
    }
    return result;
  }
}
