// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_iam_instance_profile_associations_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/iam_instance_profile_association.dart'
    as _i2;

part 'describe_iam_instance_profile_associations_result.g.dart';

abstract class DescribeIamInstanceProfileAssociationsResult
    with
        _i1.AWSEquatable<DescribeIamInstanceProfileAssociationsResult>
    implements
        Built<DescribeIamInstanceProfileAssociationsResult,
            DescribeIamInstanceProfileAssociationsResultBuilder> {
  factory DescribeIamInstanceProfileAssociationsResult({
    List<_i2.IamInstanceProfileAssociation>? iamInstanceProfileAssociations,
    String? nextToken,
  }) {
    return _$DescribeIamInstanceProfileAssociationsResult._(
      iamInstanceProfileAssociations: iamInstanceProfileAssociations == null
          ? null
          : _i3.BuiltList(iamInstanceProfileAssociations),
      nextToken: nextToken,
    );
  }

  factory DescribeIamInstanceProfileAssociationsResult.build(
      [void Function(DescribeIamInstanceProfileAssociationsResultBuilder)
          updates]) = _$DescribeIamInstanceProfileAssociationsResult;

  const DescribeIamInstanceProfileAssociationsResult._();

  /// Constructs a [DescribeIamInstanceProfileAssociationsResult] from a [payload] and [response].
  factory DescribeIamInstanceProfileAssociationsResult.fromResponse(
    DescribeIamInstanceProfileAssociationsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeIamInstanceProfileAssociationsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeIamInstanceProfileAssociationsResultBuilder b) {}

  /// Information about the IAM instance profile associations.
  _i3.BuiltList<_i2.IamInstanceProfileAssociation>?
      get iamInstanceProfileAssociations;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        iamInstanceProfileAssociations,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeIamInstanceProfileAssociationsResult');
    helper.add(
      'iamInstanceProfileAssociations',
      iamInstanceProfileAssociations,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeIamInstanceProfileAssociationsResultEc2QuerySerializer extends _i4
    .StructuredSmithySerializer<DescribeIamInstanceProfileAssociationsResult> {
  const DescribeIamInstanceProfileAssociationsResultEc2QuerySerializer()
      : super('DescribeIamInstanceProfileAssociationsResult');

  @override
  Iterable<Type> get types => const [
        DescribeIamInstanceProfileAssociationsResult,
        _$DescribeIamInstanceProfileAssociationsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeIamInstanceProfileAssociationsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeIamInstanceProfileAssociationsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'iamInstanceProfileAssociationSet':
          if (value != null) {
            result.iamInstanceProfileAssociations
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.IamInstanceProfileAssociation)],
              ),
            ) as _i3.BuiltList<_i2.IamInstanceProfileAssociation>));
          }
          break;
        case 'nextToken':
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
    final payload = (object as DescribeIamInstanceProfileAssociationsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeIamInstanceProfileAssociationsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.iamInstanceProfileAssociations != null) {
      result
        ..add(const _i4.XmlElementName('IamInstanceProfileAssociationSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.iamInstanceProfileAssociations!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.IamInstanceProfileAssociation)],
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
