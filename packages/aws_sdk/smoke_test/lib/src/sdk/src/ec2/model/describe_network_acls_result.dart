// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_network_acls_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/network_acl.dart' as _i2;

part 'describe_network_acls_result.g.dart';

abstract class DescribeNetworkAclsResult
    with _i1.AWSEquatable<DescribeNetworkAclsResult>
    implements
        Built<DescribeNetworkAclsResult, DescribeNetworkAclsResultBuilder> {
  factory DescribeNetworkAclsResult({
    List<_i2.NetworkAcl>? networkAcls,
    String? nextToken,
  }) {
    return _$DescribeNetworkAclsResult._(
      networkAcls: networkAcls == null ? null : _i3.BuiltList(networkAcls),
      nextToken: nextToken,
    );
  }

  factory DescribeNetworkAclsResult.build(
          [void Function(DescribeNetworkAclsResultBuilder) updates]) =
      _$DescribeNetworkAclsResult;

  const DescribeNetworkAclsResult._();

  /// Constructs a [DescribeNetworkAclsResult] from a [payload] and [response].
  factory DescribeNetworkAclsResult.fromResponse(
    DescribeNetworkAclsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeNetworkAclsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeNetworkAclsResultBuilder b) {}

  /// Information about one or more network ACLs.
  _i3.BuiltList<_i2.NetworkAcl>? get networkAcls;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        networkAcls,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeNetworkAclsResult');
    helper.add(
      'networkAcls',
      networkAcls,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeNetworkAclsResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeNetworkAclsResult> {
  const DescribeNetworkAclsResultEc2QuerySerializer()
      : super('DescribeNetworkAclsResult');

  @override
  Iterable<Type> get types => const [
        DescribeNetworkAclsResult,
        _$DescribeNetworkAclsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeNetworkAclsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeNetworkAclsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'networkAclSet':
          if (value != null) {
            result.networkAcls.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.NetworkAcl)],
              ),
            ) as _i3.BuiltList<_i2.NetworkAcl>));
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
    final payload = (object as DescribeNetworkAclsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeNetworkAclsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.networkAcls != null) {
      result
        ..add(const _i4.XmlElementName('NetworkAclSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.networkAcls!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.NetworkAcl)],
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
