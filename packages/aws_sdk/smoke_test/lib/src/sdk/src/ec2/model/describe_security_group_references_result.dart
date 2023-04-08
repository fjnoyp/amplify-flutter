// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_security_group_references_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/security_group_reference.dart'
    as _i2;

part 'describe_security_group_references_result.g.dart';

abstract class DescribeSecurityGroupReferencesResult
    with
        _i1.AWSEquatable<DescribeSecurityGroupReferencesResult>
    implements
        Built<DescribeSecurityGroupReferencesResult,
            DescribeSecurityGroupReferencesResultBuilder> {
  factory DescribeSecurityGroupReferencesResult(
      {List<_i2.SecurityGroupReference>? securityGroupReferenceSet}) {
    return _$DescribeSecurityGroupReferencesResult._(
        securityGroupReferenceSet: securityGroupReferenceSet == null
            ? null
            : _i3.BuiltList(securityGroupReferenceSet));
  }

  factory DescribeSecurityGroupReferencesResult.build(
      [void Function(DescribeSecurityGroupReferencesResultBuilder)
          updates]) = _$DescribeSecurityGroupReferencesResult;

  const DescribeSecurityGroupReferencesResult._();

  /// Constructs a [DescribeSecurityGroupReferencesResult] from a [payload] and [response].
  factory DescribeSecurityGroupReferencesResult.fromResponse(
    DescribeSecurityGroupReferencesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeSecurityGroupReferencesResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeSecurityGroupReferencesResultBuilder b) {}

  /// Information about the VPCs with the referencing security groups.
  _i3.BuiltList<_i2.SecurityGroupReference>? get securityGroupReferenceSet;
  @override
  List<Object?> get props => [securityGroupReferenceSet];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeSecurityGroupReferencesResult');
    helper.add(
      'securityGroupReferenceSet',
      securityGroupReferenceSet,
    );
    return helper.toString();
  }
}

class DescribeSecurityGroupReferencesResultEc2QuerySerializer extends _i4
    .StructuredSmithySerializer<DescribeSecurityGroupReferencesResult> {
  const DescribeSecurityGroupReferencesResultEc2QuerySerializer()
      : super('DescribeSecurityGroupReferencesResult');

  @override
  Iterable<Type> get types => const [
        DescribeSecurityGroupReferencesResult,
        _$DescribeSecurityGroupReferencesResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeSecurityGroupReferencesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeSecurityGroupReferencesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'securityGroupReferenceSet':
          if (value != null) {
            result.securityGroupReferenceSet
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.SecurityGroupReference)],
              ),
            ) as _i3.BuiltList<_i2.SecurityGroupReference>));
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
    final payload = (object as DescribeSecurityGroupReferencesResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeSecurityGroupReferencesResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.securityGroupReferenceSet != null) {
      result
        ..add(const _i4.XmlElementName('SecurityGroupReferenceSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.securityGroupReferenceSet!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.SecurityGroupReference)],
          ),
        ));
    }
    return result;
  }
}
