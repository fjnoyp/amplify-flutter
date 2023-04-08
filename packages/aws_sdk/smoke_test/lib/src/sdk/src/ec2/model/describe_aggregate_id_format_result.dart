// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_aggregate_id_format_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/id_format.dart' as _i2;

part 'describe_aggregate_id_format_result.g.dart';

abstract class DescribeAggregateIdFormatResult
    with
        _i1.AWSEquatable<DescribeAggregateIdFormatResult>
    implements
        Built<DescribeAggregateIdFormatResult,
            DescribeAggregateIdFormatResultBuilder> {
  factory DescribeAggregateIdFormatResult({
    bool? useLongIdsAggregated,
    List<_i2.IdFormat>? statuses,
  }) {
    useLongIdsAggregated ??= false;
    return _$DescribeAggregateIdFormatResult._(
      useLongIdsAggregated: useLongIdsAggregated,
      statuses: statuses == null ? null : _i3.BuiltList(statuses),
    );
  }

  factory DescribeAggregateIdFormatResult.build(
          [void Function(DescribeAggregateIdFormatResultBuilder) updates]) =
      _$DescribeAggregateIdFormatResult;

  const DescribeAggregateIdFormatResult._();

  /// Constructs a [DescribeAggregateIdFormatResult] from a [payload] and [response].
  factory DescribeAggregateIdFormatResult.fromResponse(
    DescribeAggregateIdFormatResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeAggregateIdFormatResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeAggregateIdFormatResultBuilder b) {
    b.useLongIdsAggregated = false;
  }

  /// Indicates whether all resource types in the Region are configured to use longer IDs. This value is only `true` if all users are configured to use longer IDs for all resources types in the Region.
  bool get useLongIdsAggregated;

  /// Information about each resource's ID format.
  _i3.BuiltList<_i2.IdFormat>? get statuses;
  @override
  List<Object?> get props => [
        useLongIdsAggregated,
        statuses,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeAggregateIdFormatResult');
    helper.add(
      'useLongIdsAggregated',
      useLongIdsAggregated,
    );
    helper.add(
      'statuses',
      statuses,
    );
    return helper.toString();
  }
}

class DescribeAggregateIdFormatResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeAggregateIdFormatResult> {
  const DescribeAggregateIdFormatResultEc2QuerySerializer()
      : super('DescribeAggregateIdFormatResult');

  @override
  Iterable<Type> get types => const [
        DescribeAggregateIdFormatResult,
        _$DescribeAggregateIdFormatResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeAggregateIdFormatResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeAggregateIdFormatResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'useLongIdsAggregated':
          result.useLongIdsAggregated = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'statusSet':
          if (value != null) {
            result.statuses.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.IdFormat)],
              ),
            ) as _i3.BuiltList<_i2.IdFormat>));
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
    final payload = (object as DescribeAggregateIdFormatResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeAggregateIdFormatResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i4.XmlElementName('UseLongIdsAggregated'))
      ..add(serializers.serialize(
        payload.useLongIdsAggregated,
        specifiedType: const FullType(bool),
      ));
    if (payload.statuses != null) {
      result
        ..add(const _i4.XmlElementName('StatusSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.statuses!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.IdFormat)],
          ),
        ));
    }
    return result;
  }
}
