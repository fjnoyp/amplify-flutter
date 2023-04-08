// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_volumes_modifications_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/volume_modification.dart'
    as _i2;

part 'describe_volumes_modifications_result.g.dart';

abstract class DescribeVolumesModificationsResult
    with
        _i1.AWSEquatable<DescribeVolumesModificationsResult>
    implements
        Built<DescribeVolumesModificationsResult,
            DescribeVolumesModificationsResultBuilder> {
  factory DescribeVolumesModificationsResult({
    List<_i2.VolumeModification>? volumesModifications,
    String? nextToken,
  }) {
    return _$DescribeVolumesModificationsResult._(
      volumesModifications: volumesModifications == null
          ? null
          : _i3.BuiltList(volumesModifications),
      nextToken: nextToken,
    );
  }

  factory DescribeVolumesModificationsResult.build(
          [void Function(DescribeVolumesModificationsResultBuilder) updates]) =
      _$DescribeVolumesModificationsResult;

  const DescribeVolumesModificationsResult._();

  /// Constructs a [DescribeVolumesModificationsResult] from a [payload] and [response].
  factory DescribeVolumesModificationsResult.fromResponse(
    DescribeVolumesModificationsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeVolumesModificationsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeVolumesModificationsResultBuilder b) {}

  /// Information about the volume modifications.
  _i3.BuiltList<_i2.VolumeModification>? get volumesModifications;

  /// Token for pagination, null if there are no more results
  String? get nextToken;
  @override
  List<Object?> get props => [
        volumesModifications,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeVolumesModificationsResult');
    helper.add(
      'volumesModifications',
      volumesModifications,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeVolumesModificationsResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeVolumesModificationsResult> {
  const DescribeVolumesModificationsResultEc2QuerySerializer()
      : super('DescribeVolumesModificationsResult');

  @override
  Iterable<Type> get types => const [
        DescribeVolumesModificationsResult,
        _$DescribeVolumesModificationsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeVolumesModificationsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeVolumesModificationsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'volumeModificationSet':
          if (value != null) {
            result.volumesModifications
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.VolumeModification)],
              ),
            ) as _i3.BuiltList<_i2.VolumeModification>));
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
    final payload = (object as DescribeVolumesModificationsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeVolumesModificationsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.volumesModifications != null) {
      result
        ..add(const _i4.XmlElementName('VolumeModificationSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.volumesModifications!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.VolumeModification)],
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
