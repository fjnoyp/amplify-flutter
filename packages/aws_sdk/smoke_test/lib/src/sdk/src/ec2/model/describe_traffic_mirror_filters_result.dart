// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_traffic_mirror_filters_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/traffic_mirror_filter.dart'
    as _i2;

part 'describe_traffic_mirror_filters_result.g.dart';

abstract class DescribeTrafficMirrorFiltersResult
    with
        _i1.AWSEquatable<DescribeTrafficMirrorFiltersResult>
    implements
        Built<DescribeTrafficMirrorFiltersResult,
            DescribeTrafficMirrorFiltersResultBuilder> {
  factory DescribeTrafficMirrorFiltersResult({
    List<_i2.TrafficMirrorFilter>? trafficMirrorFilters,
    String? nextToken,
  }) {
    return _$DescribeTrafficMirrorFiltersResult._(
      trafficMirrorFilters: trafficMirrorFilters == null
          ? null
          : _i3.BuiltList(trafficMirrorFilters),
      nextToken: nextToken,
    );
  }

  factory DescribeTrafficMirrorFiltersResult.build(
          [void Function(DescribeTrafficMirrorFiltersResultBuilder) updates]) =
      _$DescribeTrafficMirrorFiltersResult;

  const DescribeTrafficMirrorFiltersResult._();

  /// Constructs a [DescribeTrafficMirrorFiltersResult] from a [payload] and [response].
  factory DescribeTrafficMirrorFiltersResult.fromResponse(
    DescribeTrafficMirrorFiltersResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeTrafficMirrorFiltersResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeTrafficMirrorFiltersResultBuilder b) {}

  /// Information about one or more Traffic Mirror filters.
  _i3.BuiltList<_i2.TrafficMirrorFilter>? get trafficMirrorFilters;

  /// The token to use to retrieve the next page of results. The value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        trafficMirrorFilters,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeTrafficMirrorFiltersResult');
    helper.add(
      'trafficMirrorFilters',
      trafficMirrorFilters,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeTrafficMirrorFiltersResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeTrafficMirrorFiltersResult> {
  const DescribeTrafficMirrorFiltersResultEc2QuerySerializer()
      : super('DescribeTrafficMirrorFiltersResult');

  @override
  Iterable<Type> get types => const [
        DescribeTrafficMirrorFiltersResult,
        _$DescribeTrafficMirrorFiltersResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeTrafficMirrorFiltersResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeTrafficMirrorFiltersResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'trafficMirrorFilterSet':
          if (value != null) {
            result.trafficMirrorFilters
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.TrafficMirrorFilter)],
              ),
            ) as _i3.BuiltList<_i2.TrafficMirrorFilter>));
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
    final payload = (object as DescribeTrafficMirrorFiltersResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeTrafficMirrorFiltersResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.trafficMirrorFilters != null) {
      result
        ..add(const _i4.XmlElementName('TrafficMirrorFilterSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.trafficMirrorFilters!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.TrafficMirrorFilter)],
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
