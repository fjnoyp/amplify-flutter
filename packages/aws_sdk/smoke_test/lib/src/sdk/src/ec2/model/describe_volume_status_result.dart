// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_volume_status_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/volume_status_item.dart'
    as _i2;

part 'describe_volume_status_result.g.dart';

abstract class DescribeVolumeStatusResult
    with _i1.AWSEquatable<DescribeVolumeStatusResult>
    implements
        Built<DescribeVolumeStatusResult, DescribeVolumeStatusResultBuilder> {
  factory DescribeVolumeStatusResult({
    String? nextToken,
    List<_i2.VolumeStatusItem>? volumeStatuses,
  }) {
    return _$DescribeVolumeStatusResult._(
      nextToken: nextToken,
      volumeStatuses:
          volumeStatuses == null ? null : _i3.BuiltList(volumeStatuses),
    );
  }

  factory DescribeVolumeStatusResult.build(
          [void Function(DescribeVolumeStatusResultBuilder) updates]) =
      _$DescribeVolumeStatusResult;

  const DescribeVolumeStatusResult._();

  /// Constructs a [DescribeVolumeStatusResult] from a [payload] and [response].
  factory DescribeVolumeStatusResult.fromResponse(
    DescribeVolumeStatusResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeVolumeStatusResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeVolumeStatusResultBuilder b) {}

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;

  /// Information about the status of the volumes.
  _i3.BuiltList<_i2.VolumeStatusItem>? get volumeStatuses;
  @override
  List<Object?> get props => [
        nextToken,
        volumeStatuses,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeVolumeStatusResult');
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'volumeStatuses',
      volumeStatuses,
    );
    return helper.toString();
  }
}

class DescribeVolumeStatusResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeVolumeStatusResult> {
  const DescribeVolumeStatusResultEc2QuerySerializer()
      : super('DescribeVolumeStatusResult');

  @override
  Iterable<Type> get types => const [
        DescribeVolumeStatusResult,
        _$DescribeVolumeStatusResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeVolumeStatusResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeVolumeStatusResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'nextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'volumeStatusSet':
          if (value != null) {
            result.volumeStatuses.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.VolumeStatusItem)],
              ),
            ) as _i3.BuiltList<_i2.VolumeStatusItem>));
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
    final payload = (object as DescribeVolumeStatusResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeVolumeStatusResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.nextToken != null) {
      result
        ..add(const _i4.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.volumeStatuses != null) {
      result
        ..add(const _i4.XmlElementName('VolumeStatusSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.volumeStatuses!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.VolumeStatusItem)],
          ),
        ));
    }
    return result;
  }
}
