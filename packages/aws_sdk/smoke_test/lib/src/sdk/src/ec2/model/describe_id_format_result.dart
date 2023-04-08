// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_id_format_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/id_format.dart' as _i2;

part 'describe_id_format_result.g.dart';

abstract class DescribeIdFormatResult
    with _i1.AWSEquatable<DescribeIdFormatResult>
    implements Built<DescribeIdFormatResult, DescribeIdFormatResultBuilder> {
  factory DescribeIdFormatResult({List<_i2.IdFormat>? statuses}) {
    return _$DescribeIdFormatResult._(
        statuses: statuses == null ? null : _i3.BuiltList(statuses));
  }

  factory DescribeIdFormatResult.build(
          [void Function(DescribeIdFormatResultBuilder) updates]) =
      _$DescribeIdFormatResult;

  const DescribeIdFormatResult._();

  /// Constructs a [DescribeIdFormatResult] from a [payload] and [response].
  factory DescribeIdFormatResult.fromResponse(
    DescribeIdFormatResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeIdFormatResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeIdFormatResultBuilder b) {}

  /// Information about the ID format for the resource.
  _i3.BuiltList<_i2.IdFormat>? get statuses;
  @override
  List<Object?> get props => [statuses];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeIdFormatResult');
    helper.add(
      'statuses',
      statuses,
    );
    return helper.toString();
  }
}

class DescribeIdFormatResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeIdFormatResult> {
  const DescribeIdFormatResultEc2QuerySerializer()
      : super('DescribeIdFormatResult');

  @override
  Iterable<Type> get types => const [
        DescribeIdFormatResult,
        _$DescribeIdFormatResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeIdFormatResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeIdFormatResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
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
    final payload = (object as DescribeIdFormatResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeIdFormatResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
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
