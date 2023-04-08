// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.get_transit_gateway_attachment_propagations_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_attachment_propagation.dart'
    as _i2;

part 'get_transit_gateway_attachment_propagations_result.g.dart';

abstract class GetTransitGatewayAttachmentPropagationsResult
    with
        _i1.AWSEquatable<GetTransitGatewayAttachmentPropagationsResult>
    implements
        Built<GetTransitGatewayAttachmentPropagationsResult,
            GetTransitGatewayAttachmentPropagationsResultBuilder> {
  factory GetTransitGatewayAttachmentPropagationsResult({
    List<_i2.TransitGatewayAttachmentPropagation>?
        transitGatewayAttachmentPropagations,
    String? nextToken,
  }) {
    return _$GetTransitGatewayAttachmentPropagationsResult._(
      transitGatewayAttachmentPropagations:
          transitGatewayAttachmentPropagations == null
              ? null
              : _i3.BuiltList(transitGatewayAttachmentPropagations),
      nextToken: nextToken,
    );
  }

  factory GetTransitGatewayAttachmentPropagationsResult.build(
      [void Function(GetTransitGatewayAttachmentPropagationsResultBuilder)
          updates]) = _$GetTransitGatewayAttachmentPropagationsResult;

  const GetTransitGatewayAttachmentPropagationsResult._();

  /// Constructs a [GetTransitGatewayAttachmentPropagationsResult] from a [payload] and [response].
  factory GetTransitGatewayAttachmentPropagationsResult.fromResponse(
    GetTransitGatewayAttachmentPropagationsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    GetTransitGatewayAttachmentPropagationsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetTransitGatewayAttachmentPropagationsResultBuilder b) {}

  /// Information about the propagation route tables.
  _i3.BuiltList<_i2.TransitGatewayAttachmentPropagation>?
      get transitGatewayAttachmentPropagations;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        transitGatewayAttachmentPropagations,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'GetTransitGatewayAttachmentPropagationsResult');
    helper.add(
      'transitGatewayAttachmentPropagations',
      transitGatewayAttachmentPropagations,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class GetTransitGatewayAttachmentPropagationsResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<
        GetTransitGatewayAttachmentPropagationsResult> {
  const GetTransitGatewayAttachmentPropagationsResultEc2QuerySerializer()
      : super('GetTransitGatewayAttachmentPropagationsResult');

  @override
  Iterable<Type> get types => const [
        GetTransitGatewayAttachmentPropagationsResult,
        _$GetTransitGatewayAttachmentPropagationsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetTransitGatewayAttachmentPropagationsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetTransitGatewayAttachmentPropagationsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'transitGatewayAttachmentPropagations':
          if (value != null) {
            result.transitGatewayAttachmentPropagations
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.TransitGatewayAttachmentPropagation)],
              ),
            ) as _i3.BuiltList<_i2.TransitGatewayAttachmentPropagation>));
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
    final payload = (object as GetTransitGatewayAttachmentPropagationsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'GetTransitGatewayAttachmentPropagationsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.transitGatewayAttachmentPropagations != null) {
      result
        ..add(const _i4.XmlElementName('TransitGatewayAttachmentPropagations'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.transitGatewayAttachmentPropagations!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.TransitGatewayAttachmentPropagation)],
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
