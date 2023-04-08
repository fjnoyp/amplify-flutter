// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_transit_gateway_peering_attachments_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_peering_attachment.dart'
    as _i2;

part 'describe_transit_gateway_peering_attachments_result.g.dart';

abstract class DescribeTransitGatewayPeeringAttachmentsResult
    with
        _i1.AWSEquatable<DescribeTransitGatewayPeeringAttachmentsResult>
    implements
        Built<DescribeTransitGatewayPeeringAttachmentsResult,
            DescribeTransitGatewayPeeringAttachmentsResultBuilder> {
  factory DescribeTransitGatewayPeeringAttachmentsResult({
    List<_i2.TransitGatewayPeeringAttachment>? transitGatewayPeeringAttachments,
    String? nextToken,
  }) {
    return _$DescribeTransitGatewayPeeringAttachmentsResult._(
      transitGatewayPeeringAttachments: transitGatewayPeeringAttachments == null
          ? null
          : _i3.BuiltList(transitGatewayPeeringAttachments),
      nextToken: nextToken,
    );
  }

  factory DescribeTransitGatewayPeeringAttachmentsResult.build(
      [void Function(DescribeTransitGatewayPeeringAttachmentsResultBuilder)
          updates]) = _$DescribeTransitGatewayPeeringAttachmentsResult;

  const DescribeTransitGatewayPeeringAttachmentsResult._();

  /// Constructs a [DescribeTransitGatewayPeeringAttachmentsResult] from a [payload] and [response].
  factory DescribeTransitGatewayPeeringAttachmentsResult.fromResponse(
    DescribeTransitGatewayPeeringAttachmentsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeTransitGatewayPeeringAttachmentsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeTransitGatewayPeeringAttachmentsResultBuilder b) {}

  /// The transit gateway peering attachments.
  _i3.BuiltList<_i2.TransitGatewayPeeringAttachment>?
      get transitGatewayPeeringAttachments;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        transitGatewayPeeringAttachments,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeTransitGatewayPeeringAttachmentsResult');
    helper.add(
      'transitGatewayPeeringAttachments',
      transitGatewayPeeringAttachments,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeTransitGatewayPeeringAttachmentsResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<
        DescribeTransitGatewayPeeringAttachmentsResult> {
  const DescribeTransitGatewayPeeringAttachmentsResultEc2QuerySerializer()
      : super('DescribeTransitGatewayPeeringAttachmentsResult');

  @override
  Iterable<Type> get types => const [
        DescribeTransitGatewayPeeringAttachmentsResult,
        _$DescribeTransitGatewayPeeringAttachmentsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeTransitGatewayPeeringAttachmentsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeTransitGatewayPeeringAttachmentsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'transitGatewayPeeringAttachments':
          if (value != null) {
            result.transitGatewayPeeringAttachments
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.TransitGatewayPeeringAttachment)],
              ),
            ) as _i3.BuiltList<_i2.TransitGatewayPeeringAttachment>));
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
    final payload = (object as DescribeTransitGatewayPeeringAttachmentsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeTransitGatewayPeeringAttachmentsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.transitGatewayPeeringAttachments != null) {
      result
        ..add(const _i4.XmlElementName('TransitGatewayPeeringAttachments'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.transitGatewayPeeringAttachments!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.TransitGatewayPeeringAttachment)],
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
