// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.get_transit_gateway_prefix_list_references_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_prefix_list_reference.dart'
    as _i2;

part 'get_transit_gateway_prefix_list_references_result.g.dart';

abstract class GetTransitGatewayPrefixListReferencesResult
    with
        _i1.AWSEquatable<GetTransitGatewayPrefixListReferencesResult>
    implements
        Built<GetTransitGatewayPrefixListReferencesResult,
            GetTransitGatewayPrefixListReferencesResultBuilder> {
  factory GetTransitGatewayPrefixListReferencesResult({
    List<_i2.TransitGatewayPrefixListReference>?
        transitGatewayPrefixListReferences,
    String? nextToken,
  }) {
    return _$GetTransitGatewayPrefixListReferencesResult._(
      transitGatewayPrefixListReferences:
          transitGatewayPrefixListReferences == null
              ? null
              : _i3.BuiltList(transitGatewayPrefixListReferences),
      nextToken: nextToken,
    );
  }

  factory GetTransitGatewayPrefixListReferencesResult.build(
      [void Function(GetTransitGatewayPrefixListReferencesResultBuilder)
          updates]) = _$GetTransitGatewayPrefixListReferencesResult;

  const GetTransitGatewayPrefixListReferencesResult._();

  /// Constructs a [GetTransitGatewayPrefixListReferencesResult] from a [payload] and [response].
  factory GetTransitGatewayPrefixListReferencesResult.fromResponse(
    GetTransitGatewayPrefixListReferencesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    GetTransitGatewayPrefixListReferencesResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetTransitGatewayPrefixListReferencesResultBuilder b) {}

  /// Information about the prefix list references.
  _i3.BuiltList<_i2.TransitGatewayPrefixListReference>?
      get transitGatewayPrefixListReferences;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        transitGatewayPrefixListReferences,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GetTransitGatewayPrefixListReferencesResult');
    helper.add(
      'transitGatewayPrefixListReferences',
      transitGatewayPrefixListReferences,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class GetTransitGatewayPrefixListReferencesResultEc2QuerySerializer extends _i4
    .StructuredSmithySerializer<GetTransitGatewayPrefixListReferencesResult> {
  const GetTransitGatewayPrefixListReferencesResultEc2QuerySerializer()
      : super('GetTransitGatewayPrefixListReferencesResult');

  @override
  Iterable<Type> get types => const [
        GetTransitGatewayPrefixListReferencesResult,
        _$GetTransitGatewayPrefixListReferencesResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetTransitGatewayPrefixListReferencesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetTransitGatewayPrefixListReferencesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'transitGatewayPrefixListReferenceSet':
          if (value != null) {
            result.transitGatewayPrefixListReferences
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.TransitGatewayPrefixListReference)],
              ),
            ) as _i3.BuiltList<_i2.TransitGatewayPrefixListReference>));
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
    final payload = (object as GetTransitGatewayPrefixListReferencesResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'GetTransitGatewayPrefixListReferencesResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.transitGatewayPrefixListReferences != null) {
      result
        ..add(const _i4.XmlElementName('TransitGatewayPrefixListReferenceSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.transitGatewayPrefixListReferences!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.TransitGatewayPrefixListReference)],
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
