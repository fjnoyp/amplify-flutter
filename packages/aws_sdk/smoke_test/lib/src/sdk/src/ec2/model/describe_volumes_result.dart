// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_volumes_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/volume.dart' as _i2;

part 'describe_volumes_result.g.dart';

abstract class DescribeVolumesResult
    with _i1.AWSEquatable<DescribeVolumesResult>
    implements Built<DescribeVolumesResult, DescribeVolumesResultBuilder> {
  factory DescribeVolumesResult({
    List<_i2.Volume>? volumes,
    String? nextToken,
  }) {
    return _$DescribeVolumesResult._(
      volumes: volumes == null ? null : _i3.BuiltList(volumes),
      nextToken: nextToken,
    );
  }

  factory DescribeVolumesResult.build(
          [void Function(DescribeVolumesResultBuilder) updates]) =
      _$DescribeVolumesResult;

  const DescribeVolumesResult._();

  /// Constructs a [DescribeVolumesResult] from a [payload] and [response].
  factory DescribeVolumesResult.fromResponse(
    DescribeVolumesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeVolumesResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeVolumesResultBuilder b) {}

  /// Information about the volumes.
  _i3.BuiltList<_i2.Volume>? get volumes;

  /// The `NextToken` value to include in a future `DescribeVolumes` request. When the results of a `DescribeVolumes` request exceed `MaxResults`, this value can be used to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        volumes,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeVolumesResult');
    helper.add(
      'volumes',
      volumes,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeVolumesResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeVolumesResult> {
  const DescribeVolumesResultEc2QuerySerializer()
      : super('DescribeVolumesResult');

  @override
  Iterable<Type> get types => const [
        DescribeVolumesResult,
        _$DescribeVolumesResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeVolumesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeVolumesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'volumeSet':
          if (value != null) {
            result.volumes.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.Volume)],
              ),
            ) as _i3.BuiltList<_i2.Volume>));
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
    final payload = (object as DescribeVolumesResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeVolumesResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.volumes != null) {
      result
        ..add(const _i4.XmlElementName('VolumeSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.volumes!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.Volume)],
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
