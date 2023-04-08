// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.transit_gateway_route_table; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_route_table_state.dart'
    as _i2;

part 'transit_gateway_route_table.g.dart';

/// Describes a transit gateway route table.
abstract class TransitGatewayRouteTable
    with _i1.AWSEquatable<TransitGatewayRouteTable>
    implements
        Built<TransitGatewayRouteTable, TransitGatewayRouteTableBuilder> {
  /// Describes a transit gateway route table.
  factory TransitGatewayRouteTable({
    String? transitGatewayRouteTableId,
    String? transitGatewayId,
    _i2.TransitGatewayRouteTableState? state,
    bool? defaultAssociationRouteTable,
    bool? defaultPropagationRouteTable,
    DateTime? creationTime,
    List<_i3.Tag>? tags,
  }) {
    defaultAssociationRouteTable ??= false;
    defaultPropagationRouteTable ??= false;
    return _$TransitGatewayRouteTable._(
      transitGatewayRouteTableId: transitGatewayRouteTableId,
      transitGatewayId: transitGatewayId,
      state: state,
      defaultAssociationRouteTable: defaultAssociationRouteTable,
      defaultPropagationRouteTable: defaultPropagationRouteTable,
      creationTime: creationTime,
      tags: tags == null ? null : _i4.BuiltList(tags),
    );
  }

  /// Describes a transit gateway route table.
  factory TransitGatewayRouteTable.build(
          [void Function(TransitGatewayRouteTableBuilder) updates]) =
      _$TransitGatewayRouteTable;

  const TransitGatewayRouteTable._();

  static const List<_i5.SmithySerializer> serializers = [
    TransitGatewayRouteTableEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TransitGatewayRouteTableBuilder b) {
    b.defaultAssociationRouteTable = false;
    b.defaultPropagationRouteTable = false;
  }

  /// The ID of the transit gateway route table.
  String? get transitGatewayRouteTableId;

  /// The ID of the transit gateway.
  String? get transitGatewayId;

  /// The state of the transit gateway route table.
  _i2.TransitGatewayRouteTableState? get state;

  /// Indicates whether this is the default association route table for the transit gateway.
  bool get defaultAssociationRouteTable;

  /// Indicates whether this is the default propagation route table for the transit gateway.
  bool get defaultPropagationRouteTable;

  /// The creation time.
  DateTime? get creationTime;

  /// Any tags assigned to the route table.
  _i4.BuiltList<_i3.Tag>? get tags;
  @override
  List<Object?> get props => [
        transitGatewayRouteTableId,
        transitGatewayId,
        state,
        defaultAssociationRouteTable,
        defaultPropagationRouteTable,
        creationTime,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TransitGatewayRouteTable');
    helper.add(
      'transitGatewayRouteTableId',
      transitGatewayRouteTableId,
    );
    helper.add(
      'transitGatewayId',
      transitGatewayId,
    );
    helper.add(
      'state',
      state,
    );
    helper.add(
      'defaultAssociationRouteTable',
      defaultAssociationRouteTable,
    );
    helper.add(
      'defaultPropagationRouteTable',
      defaultPropagationRouteTable,
    );
    helper.add(
      'creationTime',
      creationTime,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class TransitGatewayRouteTableEc2QuerySerializer
    extends _i5.StructuredSmithySerializer<TransitGatewayRouteTable> {
  const TransitGatewayRouteTableEc2QuerySerializer()
      : super('TransitGatewayRouteTable');

  @override
  Iterable<Type> get types => const [
        TransitGatewayRouteTable,
        _$TransitGatewayRouteTable,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayRouteTable deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayRouteTableBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'transitGatewayRouteTableId':
          if (value != null) {
            result.transitGatewayRouteTableId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'transitGatewayId':
          if (value != null) {
            result.transitGatewayId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'state':
          if (value != null) {
            result.state = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.TransitGatewayRouteTableState),
            ) as _i2.TransitGatewayRouteTableState);
          }
          break;
        case 'defaultAssociationRouteTable':
          result.defaultAssociationRouteTable = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'defaultPropagationRouteTable':
          result.defaultPropagationRouteTable = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'creationTime':
          if (value != null) {
            result.creationTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'tagSet':
          if (value != null) {
            result.tags.replace((const _i5.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i5.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.Tag)],
              ),
            ) as _i4.BuiltList<_i3.Tag>));
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
    final payload = (object as TransitGatewayRouteTable);
    final result = <Object?>[
      const _i5.XmlElementName(
        'TransitGatewayRouteTableResponse',
        _i5.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.transitGatewayRouteTableId != null) {
      result
        ..add(const _i5.XmlElementName('TransitGatewayRouteTableId'))
        ..add(serializers.serialize(
          payload.transitGatewayRouteTableId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.transitGatewayId != null) {
      result
        ..add(const _i5.XmlElementName('TransitGatewayId'))
        ..add(serializers.serialize(
          payload.transitGatewayId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.state != null) {
      result
        ..add(const _i5.XmlElementName('State'))
        ..add(serializers.serialize(
          payload.state!,
          specifiedType:
              const FullType.nullable(_i2.TransitGatewayRouteTableState),
        ));
    }
    result
      ..add(const _i5.XmlElementName('DefaultAssociationRouteTable'))
      ..add(serializers.serialize(
        payload.defaultAssociationRouteTable,
        specifiedType: const FullType(bool),
      ));
    result
      ..add(const _i5.XmlElementName('DefaultPropagationRouteTable'))
      ..add(serializers.serialize(
        payload.defaultPropagationRouteTable,
        specifiedType: const FullType(bool),
      ));
    if (payload.creationTime != null) {
      result
        ..add(const _i5.XmlElementName('CreationTime'))
        ..add(serializers.serialize(
          payload.creationTime!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.tags != null) {
      result
        ..add(const _i5.XmlElementName('TagSet'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.tags!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.Tag)],
          ),
        ));
    }
    return result;
  }
}
