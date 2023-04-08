// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_ipam_scopes_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_scope.dart' as _i2;

part 'describe_ipam_scopes_result.g.dart';

abstract class DescribeIpamScopesResult
    with _i1.AWSEquatable<DescribeIpamScopesResult>
    implements
        Built<DescribeIpamScopesResult, DescribeIpamScopesResultBuilder> {
  factory DescribeIpamScopesResult({
    String? nextToken,
    List<_i2.IpamScope>? ipamScopes,
  }) {
    return _$DescribeIpamScopesResult._(
      nextToken: nextToken,
      ipamScopes: ipamScopes == null ? null : _i3.BuiltList(ipamScopes),
    );
  }

  factory DescribeIpamScopesResult.build(
          [void Function(DescribeIpamScopesResultBuilder) updates]) =
      _$DescribeIpamScopesResult;

  const DescribeIpamScopesResult._();

  /// Constructs a [DescribeIpamScopesResult] from a [payload] and [response].
  factory DescribeIpamScopesResult.fromResponse(
    DescribeIpamScopesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeIpamScopesResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeIpamScopesResultBuilder b) {}

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;

  /// The scopes you want information on.
  _i3.BuiltList<_i2.IpamScope>? get ipamScopes;
  @override
  List<Object?> get props => [
        nextToken,
        ipamScopes,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeIpamScopesResult');
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'ipamScopes',
      ipamScopes,
    );
    return helper.toString();
  }
}

class DescribeIpamScopesResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeIpamScopesResult> {
  const DescribeIpamScopesResultEc2QuerySerializer()
      : super('DescribeIpamScopesResult');

  @override
  Iterable<Type> get types => const [
        DescribeIpamScopesResult,
        _$DescribeIpamScopesResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeIpamScopesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeIpamScopesResultBuilder();
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
        case 'ipamScopeSet':
          if (value != null) {
            result.ipamScopes.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.IpamScope)],
              ),
            ) as _i3.BuiltList<_i2.IpamScope>));
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
    final payload = (object as DescribeIpamScopesResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeIpamScopesResultResponse',
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
    if (payload.ipamScopes != null) {
      result
        ..add(const _i4.XmlElementName('IpamScopeSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.ipamScopes!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.IpamScope)],
          ),
        ));
    }
    return result;
  }
}
