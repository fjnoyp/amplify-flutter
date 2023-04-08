// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.describe_placement_groups_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/placement_group.dart' as _i2;

part 'describe_placement_groups_result.g.dart';

abstract class DescribePlacementGroupsResult
    with
        _i1.AWSEquatable<DescribePlacementGroupsResult>
    implements
        Built<DescribePlacementGroupsResult,
            DescribePlacementGroupsResultBuilder> {
  factory DescribePlacementGroupsResult(
      {List<_i2.PlacementGroup>? placementGroups}) {
    return _$DescribePlacementGroupsResult._(
        placementGroups:
            placementGroups == null ? null : _i3.BuiltList(placementGroups));
  }

  factory DescribePlacementGroupsResult.build(
          [void Function(DescribePlacementGroupsResultBuilder) updates]) =
      _$DescribePlacementGroupsResult;

  const DescribePlacementGroupsResult._();

  /// Constructs a [DescribePlacementGroupsResult] from a [payload] and [response].
  factory DescribePlacementGroupsResult.fromResponse(
    DescribePlacementGroupsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribePlacementGroupsResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribePlacementGroupsResultBuilder b) {}

  /// Information about the placement groups.
  _i3.BuiltList<_i2.PlacementGroup>? get placementGroups;
  @override
  List<Object?> get props => [placementGroups];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribePlacementGroupsResult');
    helper.add(
      'placementGroups',
      placementGroups,
    );
    return helper.toString();
  }
}

class DescribePlacementGroupsResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<DescribePlacementGroupsResult> {
  const DescribePlacementGroupsResultEc2QuerySerializer()
      : super('DescribePlacementGroupsResult');

  @override
  Iterable<Type> get types => const [
        DescribePlacementGroupsResult,
        _$DescribePlacementGroupsResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribePlacementGroupsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribePlacementGroupsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'placementGroupSet':
          if (value != null) {
            result.placementGroups.replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.PlacementGroup)],
              ),
            ) as _i3.BuiltList<_i2.PlacementGroup>));
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
    final payload = (object as DescribePlacementGroupsResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribePlacementGroupsResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.placementGroups != null) {
      result
        ..add(const _i4.XmlElementName('PlacementGroupSet'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.placementGroups!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.PlacementGroup)],
          ),
        ));
    }
    return result;
  }
}
