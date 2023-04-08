// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_regions_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/region.dart' as _i2;

part 'describe_regions_result.g.dart';

abstract class DescribeRegionsResult
    with _i1.AWSEquatable<DescribeRegionsResult>
    implements Built<DescribeRegionsResult, DescribeRegionsResultBuilder> {
  factory DescribeRegionsResult({List<_i2.Region>? regions}) {
    return _$DescribeRegionsResult._(
        regions: regions == null ? null : _i3.BuiltList(regions));
  }

  factory DescribeRegionsResult.build(
          [void Function(DescribeRegionsResultBuilder) updates]) =
      _$DescribeRegionsResult;

  const DescribeRegionsResult._();

  /// Constructs a [DescribeRegionsResult] from a [payload] and [response].
  factory DescribeRegionsResult.fromResponse(
    DescribeRegionsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeRegionsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeRegionsResultBuilder b) {}

  /// Information about the Regions.
  _i3.BuiltList<_i2.Region>? get regions;
  @override
  List<Object?> get props => [regions];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeRegionsResult');
    helper.add(
      'regions',
      regions,
    );
    return helper.toString();
  }
}

class DescribeRegionsResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeRegionsResult> {
  const DescribeRegionsResultEc2QuerySerializer()
      : super('DescribeRegionsResult');

  @override
  Iterable<Type> get types => const [
        DescribeRegionsResult,
        _$DescribeRegionsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeRegionsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeRegionsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'regionInfo':
          if (value != null) {
            result.regions.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.Region)],
              ),
            ) as _i3.BuiltList<_i2.Region>));
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
    final payload = (object as DescribeRegionsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeRegionsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.regions != null) {
      result
        ..add(const _i4.XmlElementName('RegionInfo'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.regions!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.Region)],
          ),
        ));
    }
    return result;
  }
}
