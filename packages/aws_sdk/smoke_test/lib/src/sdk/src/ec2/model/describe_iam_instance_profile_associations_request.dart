// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_iam_instance_profile_associations_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart' as _i3;

part 'describe_iam_instance_profile_associations_request.g.dart';

abstract class DescribeIamInstanceProfileAssociationsRequest
    with
        _i1.HttpInput<DescribeIamInstanceProfileAssociationsRequest>,
        _i2.AWSEquatable<DescribeIamInstanceProfileAssociationsRequest>
    implements
        Built<DescribeIamInstanceProfileAssociationsRequest,
            DescribeIamInstanceProfileAssociationsRequestBuilder> {
  factory DescribeIamInstanceProfileAssociationsRequest({
    List<String>? associationIds,
    List<_i3.Filter>? filters,
    int? maxResults,
    String? nextToken,
  }) {
    maxResults ??= 0;
    return _$DescribeIamInstanceProfileAssociationsRequest._(
      associationIds:
          associationIds == null ? null : _i4.BuiltList(associationIds),
      filters: filters == null ? null : _i4.BuiltList(filters),
      maxResults: maxResults,
      nextToken: nextToken,
    );
  }

  factory DescribeIamInstanceProfileAssociationsRequest.build(
      [void Function(DescribeIamInstanceProfileAssociationsRequestBuilder)
          updates]) = _$DescribeIamInstanceProfileAssociationsRequest;

  const DescribeIamInstanceProfileAssociationsRequest._();

  factory DescribeIamInstanceProfileAssociationsRequest.fromRequest(
    DescribeIamInstanceProfileAssociationsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeIamInstanceProfileAssociationsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeIamInstanceProfileAssociationsRequestBuilder b) {
    b.maxResults = 0;
  }

  /// The IAM instance profile associations.
  _i4.BuiltList<String>? get associationIds;

  /// The filters.
  ///
  /// *   `instance-id` \- The ID of the instance.
  ///
  /// *   `state` \- The state of the association (`associating` | `associated` | `disassociating`).
  _i4.BuiltList<_i3.Filter>? get filters;

  /// The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned `NextToken` value.
  int get maxResults;

  /// The token to request the next page of results.
  String? get nextToken;
  @override
  DescribeIamInstanceProfileAssociationsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        associationIds,
        filters,
        maxResults,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeIamInstanceProfileAssociationsRequest');
    helper.add(
      'associationIds',
      associationIds,
    );
    helper.add(
      'filters',
      filters,
    );
    helper.add(
      'maxResults',
      maxResults,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeIamInstanceProfileAssociationsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<
        DescribeIamInstanceProfileAssociationsRequest> {
  const DescribeIamInstanceProfileAssociationsRequestEc2QuerySerializer()
      : super('DescribeIamInstanceProfileAssociationsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeIamInstanceProfileAssociationsRequest,
        _$DescribeIamInstanceProfileAssociationsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeIamInstanceProfileAssociationsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeIamInstanceProfileAssociationsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'AssociationId':
          if (value != null) {
            result.associationIds.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'AssociationId',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(String)],
              ),
            ) as _i4.BuiltList<String>));
          }
          break;
        case 'Filter':
          if (value != null) {
            result.filters.replace((const _i1.XmlBuiltListSerializer(
              memberName: 'Filter',
              indexer: _i1.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.Filter)],
              ),
            ) as _i4.BuiltList<_i3.Filter>));
          }
          break;
        case 'MaxResults':
          result.maxResults = (serializers.deserialize(
            value!,
            specifiedType: const FullType(int),
          ) as int);
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
    final payload = (object as DescribeIamInstanceProfileAssociationsRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DescribeIamInstanceProfileAssociationsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.associationIds != null) {
      result
        ..add(const _i1.XmlElementName('AssociationId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'AssociationId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.associationIds!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.filters != null) {
      result
        ..add(const _i1.XmlElementName('Filter'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'Filter',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.filters!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.Filter)],
          ),
        ));
    }
    result
      ..add(const _i1.XmlElementName('MaxResults'))
      ..add(serializers.serialize(
        payload.maxResults,
        specifiedType: const FullType(int),
      ));
    if (payload.nextToken != null) {
      result
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
