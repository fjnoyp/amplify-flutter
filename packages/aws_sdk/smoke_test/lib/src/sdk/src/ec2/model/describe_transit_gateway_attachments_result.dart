// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_transit_gateway_attachments_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_attachment.dart'
    as _i2;

part 'describe_transit_gateway_attachments_result.g.dart';

abstract class DescribeTransitGatewayAttachmentsResult
    with
        _i1.AWSEquatable<DescribeTransitGatewayAttachmentsResult>
    implements
        Built<DescribeTransitGatewayAttachmentsResult,
            DescribeTransitGatewayAttachmentsResultBuilder> {
  factory DescribeTransitGatewayAttachmentsResult({
    List<_i2.TransitGatewayAttachment>? transitGatewayAttachments,
    String? nextToken,
  }) {
    return _$DescribeTransitGatewayAttachmentsResult._(
      transitGatewayAttachments: transitGatewayAttachments == null
          ? null
          : _i3.BuiltList(transitGatewayAttachments),
      nextToken: nextToken,
    );
  }

  factory DescribeTransitGatewayAttachmentsResult.build(
      [void Function(DescribeTransitGatewayAttachmentsResultBuilder)
          updates]) = _$DescribeTransitGatewayAttachmentsResult;

  const DescribeTransitGatewayAttachmentsResult._();

  /// Constructs a [DescribeTransitGatewayAttachmentsResult] from a [payload] and [response].
  factory DescribeTransitGatewayAttachmentsResult.fromResponse(
    DescribeTransitGatewayAttachmentsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeTransitGatewayAttachmentsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeTransitGatewayAttachmentsResultBuilder b) {}

  /// Information about the attachments.
  _i3.BuiltList<_i2.TransitGatewayAttachment>? get transitGatewayAttachments;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        transitGatewayAttachments,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeTransitGatewayAttachmentsResult');
    helper.add(
      'transitGatewayAttachments',
      transitGatewayAttachments,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeTransitGatewayAttachmentsResultEc2QuerySerializer extends _i4
    .StructuredSmithySerializer<DescribeTransitGatewayAttachmentsResult> {
  const DescribeTransitGatewayAttachmentsResultEc2QuerySerializer()
      : super('DescribeTransitGatewayAttachmentsResult');

  @override
  Iterable<Type> get types => const [
        DescribeTransitGatewayAttachmentsResult,
        _$DescribeTransitGatewayAttachmentsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeTransitGatewayAttachmentsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeTransitGatewayAttachmentsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'transitGatewayAttachments':
          if (value != null) {
            result.transitGatewayAttachments
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.TransitGatewayAttachment)],
              ),
            ) as _i3.BuiltList<_i2.TransitGatewayAttachment>));
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
    final payload = (object as DescribeTransitGatewayAttachmentsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeTransitGatewayAttachmentsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.transitGatewayAttachments != null) {
      result
        ..add(const _i4.XmlElementName('TransitGatewayAttachments'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.transitGatewayAttachments!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.TransitGatewayAttachment)],
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
