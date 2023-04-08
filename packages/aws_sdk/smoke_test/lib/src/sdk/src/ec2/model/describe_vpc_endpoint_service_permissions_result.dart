// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_vpc_endpoint_service_permissions_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/allowed_principal.dart' as _i2;

part 'describe_vpc_endpoint_service_permissions_result.g.dart';

abstract class DescribeVpcEndpointServicePermissionsResult
    with
        _i1.AWSEquatable<DescribeVpcEndpointServicePermissionsResult>
    implements
        Built<DescribeVpcEndpointServicePermissionsResult,
            DescribeVpcEndpointServicePermissionsResultBuilder> {
  factory DescribeVpcEndpointServicePermissionsResult({
    List<_i2.AllowedPrincipal>? allowedPrincipals,
    String? nextToken,
  }) {
    return _$DescribeVpcEndpointServicePermissionsResult._(
      allowedPrincipals:
          allowedPrincipals == null ? null : _i3.BuiltList(allowedPrincipals),
      nextToken: nextToken,
    );
  }

  factory DescribeVpcEndpointServicePermissionsResult.build(
      [void Function(DescribeVpcEndpointServicePermissionsResultBuilder)
          updates]) = _$DescribeVpcEndpointServicePermissionsResult;

  const DescribeVpcEndpointServicePermissionsResult._();

  /// Constructs a [DescribeVpcEndpointServicePermissionsResult] from a [payload] and [response].
  factory DescribeVpcEndpointServicePermissionsResult.fromResponse(
    DescribeVpcEndpointServicePermissionsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeVpcEndpointServicePermissionsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeVpcEndpointServicePermissionsResultBuilder b) {}

  /// Information about one or more allowed principals.
  _i3.BuiltList<_i2.AllowedPrincipal>? get allowedPrincipals;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        allowedPrincipals,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeVpcEndpointServicePermissionsResult');
    helper.add(
      'allowedPrincipals',
      allowedPrincipals,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeVpcEndpointServicePermissionsResultEc2QuerySerializer extends _i4
    .StructuredSmithySerializer<DescribeVpcEndpointServicePermissionsResult> {
  const DescribeVpcEndpointServicePermissionsResultEc2QuerySerializer()
      : super('DescribeVpcEndpointServicePermissionsResult');

  @override
  Iterable<Type> get types => const [
        DescribeVpcEndpointServicePermissionsResult,
        _$DescribeVpcEndpointServicePermissionsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeVpcEndpointServicePermissionsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeVpcEndpointServicePermissionsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'allowedPrincipals':
          if (value != null) {
            result.allowedPrincipals.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.AllowedPrincipal)],
              ),
            ) as _i3.BuiltList<_i2.AllowedPrincipal>));
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
    final payload = (object as DescribeVpcEndpointServicePermissionsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeVpcEndpointServicePermissionsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.allowedPrincipals != null) {
      result
        ..add(const _i4.XmlElementName('AllowedPrincipals'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.allowedPrincipals!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.AllowedPrincipal)],
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
