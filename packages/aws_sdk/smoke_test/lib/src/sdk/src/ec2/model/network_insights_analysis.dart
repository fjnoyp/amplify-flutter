// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.network_insights_analysis; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i7;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i8;
import 'package:smoke_test/src/sdk/src/ec2/model/alternate_path_hint.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/analysis_status.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/explanation.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/path_component.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i6;

part 'network_insights_analysis.g.dart';

/// Describes a network insights analysis.
abstract class NetworkInsightsAnalysis
    with _i1.AWSEquatable<NetworkInsightsAnalysis>
    implements Built<NetworkInsightsAnalysis, NetworkInsightsAnalysisBuilder> {
  /// Describes a network insights analysis.
  factory NetworkInsightsAnalysis({
    String? networkInsightsAnalysisId,
    String? networkInsightsAnalysisArn,
    String? networkInsightsPathId,
    List<String>? filterInArns,
    DateTime? startDate,
    _i2.AnalysisStatus? status,
    String? statusMessage,
    String? warningMessage,
    bool? networkPathFound,
    List<_i3.PathComponent>? forwardPathComponents,
    List<_i3.PathComponent>? returnPathComponents,
    List<_i4.Explanation>? explanations,
    List<_i5.AlternatePathHint>? alternatePathHints,
    List<_i6.Tag>? tags,
  }) {
    networkPathFound ??= false;
    return _$NetworkInsightsAnalysis._(
      networkInsightsAnalysisId: networkInsightsAnalysisId,
      networkInsightsAnalysisArn: networkInsightsAnalysisArn,
      networkInsightsPathId: networkInsightsPathId,
      filterInArns: filterInArns == null ? null : _i7.BuiltList(filterInArns),
      startDate: startDate,
      status: status,
      statusMessage: statusMessage,
      warningMessage: warningMessage,
      networkPathFound: networkPathFound,
      forwardPathComponents: forwardPathComponents == null
          ? null
          : _i7.BuiltList(forwardPathComponents),
      returnPathComponents: returnPathComponents == null
          ? null
          : _i7.BuiltList(returnPathComponents),
      explanations: explanations == null ? null : _i7.BuiltList(explanations),
      alternatePathHints:
          alternatePathHints == null ? null : _i7.BuiltList(alternatePathHints),
      tags: tags == null ? null : _i7.BuiltList(tags),
    );
  }

  /// Describes a network insights analysis.
  factory NetworkInsightsAnalysis.build(
          [void Function(NetworkInsightsAnalysisBuilder) updates]) =
      _$NetworkInsightsAnalysis;

  const NetworkInsightsAnalysis._();

  static const List<_i8.SmithySerializer> serializers = [
    NetworkInsightsAnalysisEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NetworkInsightsAnalysisBuilder b) {
    b.networkPathFound = false;
  }

  /// The ID of the network insights analysis.
  String? get networkInsightsAnalysisId;

  /// The Amazon Resource Name (ARN) of the network insights analysis.
  String? get networkInsightsAnalysisArn;

  /// The ID of the path.
  String? get networkInsightsPathId;

  /// The Amazon Resource Names (ARN) of the Amazon Web Services resources that the path must traverse.
  _i7.BuiltList<String>? get filterInArns;

  /// The time the analysis started.
  DateTime? get startDate;

  /// The status of the network insights analysis.
  _i2.AnalysisStatus? get status;

  /// The status message, if the status is `failed`.
  String? get statusMessage;

  /// The warning message.
  String? get warningMessage;

  /// Indicates whether the destination is reachable from the source.
  bool get networkPathFound;

  /// The components in the path from source to destination.
  _i7.BuiltList<_i3.PathComponent>? get forwardPathComponents;

  /// The components in the path from destination to source.
  _i7.BuiltList<_i3.PathComponent>? get returnPathComponents;

  /// The explanations. For more information, see [Reachability Analyzer explanation codes](https://docs.aws.amazon.com/vpc/latest/reachability/explanation-codes.html).
  _i7.BuiltList<_i4.Explanation>? get explanations;

  /// Potential intermediate components.
  _i7.BuiltList<_i5.AlternatePathHint>? get alternatePathHints;

  /// The tags.
  _i7.BuiltList<_i6.Tag>? get tags;
  @override
  List<Object?> get props => [
        networkInsightsAnalysisId,
        networkInsightsAnalysisArn,
        networkInsightsPathId,
        filterInArns,
        startDate,
        status,
        statusMessage,
        warningMessage,
        networkPathFound,
        forwardPathComponents,
        returnPathComponents,
        explanations,
        alternatePathHints,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NetworkInsightsAnalysis');
    helper.add(
      'networkInsightsAnalysisId',
      networkInsightsAnalysisId,
    );
    helper.add(
      'networkInsightsAnalysisArn',
      networkInsightsAnalysisArn,
    );
    helper.add(
      'networkInsightsPathId',
      networkInsightsPathId,
    );
    helper.add(
      'filterInArns',
      filterInArns,
    );
    helper.add(
      'startDate',
      startDate,
    );
    helper.add(
      'status',
      status,
    );
    helper.add(
      'statusMessage',
      statusMessage,
    );
    helper.add(
      'warningMessage',
      warningMessage,
    );
    helper.add(
      'networkPathFound',
      networkPathFound,
    );
    helper.add(
      'forwardPathComponents',
      forwardPathComponents,
    );
    helper.add(
      'returnPathComponents',
      returnPathComponents,
    );
    helper.add(
      'explanations',
      explanations,
    );
    helper.add(
      'alternatePathHints',
      alternatePathHints,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class NetworkInsightsAnalysisEc2QuerySerializer
    extends _i8.StructuredSmithySerializer<NetworkInsightsAnalysis> {
  const NetworkInsightsAnalysisEc2QuerySerializer()
      : super('NetworkInsightsAnalysis');

  @override
  Iterable<Type> get types => const [
        NetworkInsightsAnalysis,
        _$NetworkInsightsAnalysis,
      ];
  @override
  Iterable<_i8.ShapeId> get supportedProtocols => const [
        _i8.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  NetworkInsightsAnalysis deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NetworkInsightsAnalysisBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'networkInsightsAnalysisId':
          if (value != null) {
            result.networkInsightsAnalysisId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'networkInsightsAnalysisArn':
          if (value != null) {
            result.networkInsightsAnalysisArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'networkInsightsPathId':
          if (value != null) {
            result.networkInsightsPathId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'filterInArnSet':
          if (value != null) {
            result.filterInArns.replace((const _i8.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i8.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i7.BuiltList,
                [FullType(String)],
              ),
            ) as _i7.BuiltList<String>));
          }
          break;
        case 'startDate':
          if (value != null) {
            result.startDate = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'status':
          if (value != null) {
            result.status = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.AnalysisStatus),
            ) as _i2.AnalysisStatus);
          }
          break;
        case 'statusMessage':
          if (value != null) {
            result.statusMessage = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'warningMessage':
          if (value != null) {
            result.warningMessage = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'networkPathFound':
          result.networkPathFound = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'forwardPathComponentSet':
          if (value != null) {
            result.forwardPathComponents
                .replace((const _i8.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i8.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i7.BuiltList,
                [FullType(_i3.PathComponent)],
              ),
            ) as _i7.BuiltList<_i3.PathComponent>));
          }
          break;
        case 'returnPathComponentSet':
          if (value != null) {
            result.returnPathComponents
                .replace((const _i8.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i8.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i7.BuiltList,
                [FullType(_i3.PathComponent)],
              ),
            ) as _i7.BuiltList<_i3.PathComponent>));
          }
          break;
        case 'explanationSet':
          if (value != null) {
            result.explanations.replace((const _i8.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i8.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i7.BuiltList,
                [FullType(_i4.Explanation)],
              ),
            ) as _i7.BuiltList<_i4.Explanation>));
          }
          break;
        case 'alternatePathHintSet':
          if (value != null) {
            result.alternatePathHints.replace((const _i8.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i8.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i7.BuiltList,
                [FullType(_i5.AlternatePathHint)],
              ),
            ) as _i7.BuiltList<_i5.AlternatePathHint>));
          }
          break;
        case 'tagSet':
          if (value != null) {
            result.tags.replace((const _i8.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i8.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i7.BuiltList,
                [FullType(_i6.Tag)],
              ),
            ) as _i7.BuiltList<_i6.Tag>));
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
    final payload = (object as NetworkInsightsAnalysis);
    final result = <Object?>[
      const _i8.XmlElementName(
        'NetworkInsightsAnalysisResponse',
        _i8.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.networkInsightsAnalysisId != null) {
      result
        ..add(const _i8.XmlElementName('NetworkInsightsAnalysisId'))
        ..add(serializers.serialize(
          payload.networkInsightsAnalysisId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.networkInsightsAnalysisArn != null) {
      result
        ..add(const _i8.XmlElementName('NetworkInsightsAnalysisArn'))
        ..add(serializers.serialize(
          payload.networkInsightsAnalysisArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.networkInsightsPathId != null) {
      result
        ..add(const _i8.XmlElementName('NetworkInsightsPathId'))
        ..add(serializers.serialize(
          payload.networkInsightsPathId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.filterInArns != null) {
      result
        ..add(const _i8.XmlElementName('FilterInArnSet'))
        ..add(const _i8.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i8.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.filterInArns!,
          specifiedType: const FullType.nullable(
            _i7.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.startDate != null) {
      result
        ..add(const _i8.XmlElementName('StartDate'))
        ..add(serializers.serialize(
          payload.startDate!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.status != null) {
      result
        ..add(const _i8.XmlElementName('Status'))
        ..add(serializers.serialize(
          payload.status!,
          specifiedType: const FullType.nullable(_i2.AnalysisStatus),
        ));
    }
    if (payload.statusMessage != null) {
      result
        ..add(const _i8.XmlElementName('StatusMessage'))
        ..add(serializers.serialize(
          payload.statusMessage!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.warningMessage != null) {
      result
        ..add(const _i8.XmlElementName('WarningMessage'))
        ..add(serializers.serialize(
          payload.warningMessage!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i8.XmlElementName('NetworkPathFound'))
      ..add(serializers.serialize(
        payload.networkPathFound,
        specifiedType: const FullType(bool),
      ));
    if (payload.forwardPathComponents != null) {
      result
        ..add(const _i8.XmlElementName('ForwardPathComponentSet'))
        ..add(const _i8.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i8.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.forwardPathComponents!,
          specifiedType: const FullType.nullable(
            _i7.BuiltList,
            [FullType(_i3.PathComponent)],
          ),
        ));
    }
    if (payload.returnPathComponents != null) {
      result
        ..add(const _i8.XmlElementName('ReturnPathComponentSet'))
        ..add(const _i8.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i8.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.returnPathComponents!,
          specifiedType: const FullType.nullable(
            _i7.BuiltList,
            [FullType(_i3.PathComponent)],
          ),
        ));
    }
    if (payload.explanations != null) {
      result
        ..add(const _i8.XmlElementName('ExplanationSet'))
        ..add(const _i8.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i8.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.explanations!,
          specifiedType: const FullType.nullable(
            _i7.BuiltList,
            [FullType(_i4.Explanation)],
          ),
        ));
    }
    if (payload.alternatePathHints != null) {
      result
        ..add(const _i8.XmlElementName('AlternatePathHintSet'))
        ..add(const _i8.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i8.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.alternatePathHints!,
          specifiedType: const FullType.nullable(
            _i7.BuiltList,
            [FullType(_i5.AlternatePathHint)],
          ),
        ));
    }
    if (payload.tags != null) {
      result
        ..add(const _i8.XmlElementName('TagSet'))
        ..add(const _i8.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i8.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tags!,
          specifiedType: const FullType.nullable(
            _i7.BuiltList,
            [FullType(_i6.Tag)],
          ),
        ));
    }
    return result;
  }
}
