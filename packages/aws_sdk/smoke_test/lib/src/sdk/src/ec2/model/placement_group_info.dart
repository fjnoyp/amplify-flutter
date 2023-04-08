// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.placement_group_info; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/placement_group_strategy.dart'
    as _i2;

part 'placement_group_info.g.dart';

/// Describes the placement group support of the instance type.
abstract class PlacementGroupInfo
    with _i1.AWSEquatable<PlacementGroupInfo>
    implements Built<PlacementGroupInfo, PlacementGroupInfoBuilder> {
  /// Describes the placement group support of the instance type.
  factory PlacementGroupInfo(
      {List<_i2.PlacementGroupStrategy>? supportedStrategies}) {
    return _$PlacementGroupInfo._(
        supportedStrategies: supportedStrategies == null
            ? null
            : _i3.BuiltList(supportedStrategies));
  }

  /// Describes the placement group support of the instance type.
  factory PlacementGroupInfo.build(
          [void Function(PlacementGroupInfoBuilder) updates]) =
      _$PlacementGroupInfo;

  const PlacementGroupInfo._();

  static const List<_i4.SmithySerializer> serializers = [
    PlacementGroupInfoEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PlacementGroupInfoBuilder b) {}

  /// The supported placement group types.
  _i3.BuiltList<_i2.PlacementGroupStrategy>? get supportedStrategies;
  @override
  List<Object?> get props => [supportedStrategies];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PlacementGroupInfo');
    helper.add(
      'supportedStrategies',
      supportedStrategies,
    );
    return helper.toString();
  }
}

class PlacementGroupInfoEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<PlacementGroupInfo> {
  const PlacementGroupInfoEc2QuerySerializer() : super('PlacementGroupInfo');

  @override
  Iterable<Type> get types => const [
        PlacementGroupInfo,
        _$PlacementGroupInfo,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  PlacementGroupInfo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlacementGroupInfoBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'supportedStrategies':
          if (value != null) {
            result.supportedStrategies
                .replace((const _i4.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i4.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.PlacementGroupStrategy)],
              ),
            ) as _i3.BuiltList<_i2.PlacementGroupStrategy>));
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
    final payload = (object as PlacementGroupInfo);
    final result = <Object?>[
      const _i4.XmlElementName(
        'PlacementGroupInfoResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.supportedStrategies != null) {
      result
        ..add(const _i4.XmlElementName('SupportedStrategies'))
        ..add(const _i4.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i4.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.supportedStrategies!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.PlacementGroupStrategy)],
          ),
        ));
    }
    return result;
  }
}
