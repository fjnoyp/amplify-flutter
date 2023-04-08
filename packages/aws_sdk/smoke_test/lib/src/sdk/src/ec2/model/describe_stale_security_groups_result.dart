// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_stale_security_groups_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/stale_security_group.dart'
    as _i2;

part 'describe_stale_security_groups_result.g.dart';

abstract class DescribeStaleSecurityGroupsResult
    with
        _i1.AWSEquatable<DescribeStaleSecurityGroupsResult>
    implements
        Built<DescribeStaleSecurityGroupsResult,
            DescribeStaleSecurityGroupsResultBuilder> {
  factory DescribeStaleSecurityGroupsResult({
    String? nextToken,
    List<_i2.StaleSecurityGroup>? staleSecurityGroupSet,
  }) {
    return _$DescribeStaleSecurityGroupsResult._(
      nextToken: nextToken,
      staleSecurityGroupSet: staleSecurityGroupSet == null
          ? null
          : _i3.BuiltList(staleSecurityGroupSet),
    );
  }

  factory DescribeStaleSecurityGroupsResult.build(
          [void Function(DescribeStaleSecurityGroupsResultBuilder) updates]) =
      _$DescribeStaleSecurityGroupsResult;

  const DescribeStaleSecurityGroupsResult._();

  /// Constructs a [DescribeStaleSecurityGroupsResult] from a [payload] and [response].
  factory DescribeStaleSecurityGroupsResult.fromResponse(
    DescribeStaleSecurityGroupsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeStaleSecurityGroupsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeStaleSecurityGroupsResultBuilder b) {}

  /// The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.
  String? get nextToken;

  /// Information about the stale security groups.
  _i3.BuiltList<_i2.StaleSecurityGroup>? get staleSecurityGroupSet;
  @override
  List<Object?> get props => [
        nextToken,
        staleSecurityGroupSet,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeStaleSecurityGroupsResult');
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'staleSecurityGroupSet',
      staleSecurityGroupSet,
    );
    return helper.toString();
  }
}

class DescribeStaleSecurityGroupsResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeStaleSecurityGroupsResult> {
  const DescribeStaleSecurityGroupsResultEc2QuerySerializer()
      : super('DescribeStaleSecurityGroupsResult');

  @override
  Iterable<Type> get types => const [
        DescribeStaleSecurityGroupsResult,
        _$DescribeStaleSecurityGroupsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeStaleSecurityGroupsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeStaleSecurityGroupsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'nextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'staleSecurityGroupSet':
          if (value != null) {
            result.staleSecurityGroupSet
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.StaleSecurityGroup)],
              ),
            ) as _i3.BuiltList<_i2.StaleSecurityGroup>));
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
    final payload = (object as DescribeStaleSecurityGroupsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeStaleSecurityGroupsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.nextToken != null) {
      result
        ..add(const _i4.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.staleSecurityGroupSet != null) {
      result
        ..add(const _i4.XmlElementName('StaleSecurityGroupSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.staleSecurityGroupSet!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.StaleSecurityGroup)],
          ),
        ));
    }
    return result;
  }
}
