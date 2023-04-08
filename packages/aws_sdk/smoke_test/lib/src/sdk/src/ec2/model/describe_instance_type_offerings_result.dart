// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_instance_type_offerings_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type_offering.dart'
    as _i2;

part 'describe_instance_type_offerings_result.g.dart';

abstract class DescribeInstanceTypeOfferingsResult
    with
        _i1.AWSEquatable<DescribeInstanceTypeOfferingsResult>
    implements
        Built<DescribeInstanceTypeOfferingsResult,
            DescribeInstanceTypeOfferingsResultBuilder> {
  factory DescribeInstanceTypeOfferingsResult({
    List<_i2.InstanceTypeOffering>? instanceTypeOfferings,
    String? nextToken,
  }) {
    return _$DescribeInstanceTypeOfferingsResult._(
      instanceTypeOfferings: instanceTypeOfferings == null
          ? null
          : _i3.BuiltList(instanceTypeOfferings),
      nextToken: nextToken,
    );
  }

  factory DescribeInstanceTypeOfferingsResult.build(
          [void Function(DescribeInstanceTypeOfferingsResultBuilder) updates]) =
      _$DescribeInstanceTypeOfferingsResult;

  const DescribeInstanceTypeOfferingsResult._();

  /// Constructs a [DescribeInstanceTypeOfferingsResult] from a [payload] and [response].
  factory DescribeInstanceTypeOfferingsResult.fromResponse(
    DescribeInstanceTypeOfferingsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeInstanceTypeOfferingsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeInstanceTypeOfferingsResultBuilder b) {}

  /// The instance types offered.
  _i3.BuiltList<_i2.InstanceTypeOffering>? get instanceTypeOfferings;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        instanceTypeOfferings,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeInstanceTypeOfferingsResult');
    helper.add(
      'instanceTypeOfferings',
      instanceTypeOfferings,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeInstanceTypeOfferingsResultEc2QuerySerializer extends _i4
    .StructuredSmithySerializer<DescribeInstanceTypeOfferingsResult> {
  const DescribeInstanceTypeOfferingsResultEc2QuerySerializer()
      : super('DescribeInstanceTypeOfferingsResult');

  @override
  Iterable<Type> get types => const [
        DescribeInstanceTypeOfferingsResult,
        _$DescribeInstanceTypeOfferingsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeInstanceTypeOfferingsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeInstanceTypeOfferingsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'instanceTypeOfferingSet':
          if (value != null) {
            result.instanceTypeOfferings
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.InstanceTypeOffering)],
              ),
            ) as _i3.BuiltList<_i2.InstanceTypeOffering>));
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
    final payload = (object as DescribeInstanceTypeOfferingsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeInstanceTypeOfferingsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.instanceTypeOfferings != null) {
      result
        ..add(const _i4.XmlElementName('InstanceTypeOfferingSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.instanceTypeOfferings!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.InstanceTypeOffering)],
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
