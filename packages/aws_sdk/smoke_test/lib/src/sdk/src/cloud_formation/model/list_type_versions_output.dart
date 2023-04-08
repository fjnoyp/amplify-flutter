// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.cloud_formation.model.list_type_versions_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/type_version_summary.dart'
    as _i2;

part 'list_type_versions_output.g.dart';

abstract class ListTypeVersionsOutput
    with _i1.AWSEquatable<ListTypeVersionsOutput>
    implements Built<ListTypeVersionsOutput, ListTypeVersionsOutputBuilder> {
  factory ListTypeVersionsOutput({
    List<_i2.TypeVersionSummary>? typeVersionSummaries,
    String? nextToken,
  }) {
    return _$ListTypeVersionsOutput._(
      typeVersionSummaries: typeVersionSummaries == null
          ? null
          : _i3.BuiltList(typeVersionSummaries),
      nextToken: nextToken,
    );
  }

  factory ListTypeVersionsOutput.build(
          [void Function(ListTypeVersionsOutputBuilder) updates]) =
      _$ListTypeVersionsOutput;

  const ListTypeVersionsOutput._();

  /// Constructs a [ListTypeVersionsOutput] from a [payload] and [response].
  factory ListTypeVersionsOutput.fromResponse(
    ListTypeVersionsOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    ListTypeVersionsOutputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListTypeVersionsOutputBuilder b) {}

  /// A list of `TypeVersionSummary` structures that contain information about the specified extension's versions.
  _i3.BuiltList<_i2.TypeVersionSummary>? get typeVersionSummaries;

  /// If the request doesn't return all of the remaining results, `NextToken` is set to a token. To retrieve the next set of results, call this action again and assign that token to the request object's `NextToken` parameter. If the request returns all results, `NextToken` is set to `null`.
  String? get nextToken;
  @override
  List<Object?> get props => [
        typeVersionSummaries,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ListTypeVersionsOutput');
    helper.add(
      'typeVersionSummaries',
      typeVersionSummaries,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class ListTypeVersionsOutputAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<ListTypeVersionsOutput> {
  const ListTypeVersionsOutputAwsQuerySerializer()
      : super('ListTypeVersionsOutput');

  @override
  Iterable<Type> get types => const [
        ListTypeVersionsOutput,
        _$ListTypeVersionsOutput,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ListTypeVersionsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListTypeVersionsOutputBuilder();
    final responseIterator = serialized.iterator;
    while (responseIterator.moveNext()) {
      final key = responseIterator.current as String;
      responseIterator.moveNext();
      if (key.endsWith('Result')) {
        serialized = responseIterator.current as Iterable;
      }
    }
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'TypeVersionSummaries':
          if (value != null) {
            result.typeVersionSummaries.replace(
                (const _i4.XmlBuiltListSerializer(
                        indexer: _i4.XmlIndexer.awsQueryList)
                    .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.TypeVersionSummary)],
              ),
            ) as _i3.BuiltList<_i2.TypeVersionSummary>));
          }
          break;
        case 'NextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as ListTypeVersionsOutput);
    final result = <Object?>[
      const _i4.XmlElementName(
        'ListTypeVersionsOutputResponse',
        _i4.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    if (payload.typeVersionSummaries != null) {
      result
        ..add(const _i4.XmlElementName('TypeVersionSummaries'))
        ..add(const _i4.XmlBuiltListSerializer(
                indexer: _i4.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          payload.typeVersionSummaries!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.TypeVersionSummary)],
          ),
        ));
    }
    if (payload.nextToken != null) {
      result
        ..add(const _i4.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
