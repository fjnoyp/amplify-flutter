// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.transit_gateway_policy_table; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_policy_table_state.dart'
    as _i2;

part 'transit_gateway_policy_table.g.dart';

/// Describes a transit gateway policy table.
abstract class TransitGatewayPolicyTable
    with _i1.AWSEquatable<TransitGatewayPolicyTable>
    implements
        Built<TransitGatewayPolicyTable, TransitGatewayPolicyTableBuilder> {
  /// Describes a transit gateway policy table.
  factory TransitGatewayPolicyTable({
    String? transitGatewayPolicyTableId,
    String? transitGatewayId,
    _i2.TransitGatewayPolicyTableState? state,
    DateTime? creationTime,
    List<_i3.Tag>? tags,
  }) {
    return _$TransitGatewayPolicyTable._(
      transitGatewayPolicyTableId: transitGatewayPolicyTableId,
      transitGatewayId: transitGatewayId,
      state: state,
      creationTime: creationTime,
      tags: tags == null ? null : _i4.BuiltList(tags),
    );
  }

  /// Describes a transit gateway policy table.
  factory TransitGatewayPolicyTable.build(
          [void Function(TransitGatewayPolicyTableBuilder) updates]) =
      _$TransitGatewayPolicyTable;

  const TransitGatewayPolicyTable._();

  static const List<_i5.SmithySerializer> serializers = [
    TransitGatewayPolicyTableEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TransitGatewayPolicyTableBuilder b) {}

  /// The ID of the transit gateway policy table.
  String? get transitGatewayPolicyTableId;

  /// The ID of the transit gateway.
  String? get transitGatewayId;

  /// The state of the transit gateway policy table
  _i2.TransitGatewayPolicyTableState? get state;

  /// The timestamp when the transit gateway policy table was created.
  DateTime? get creationTime;

  /// he key-value pairs associated with the transit gateway policy table.
  _i4.BuiltList<_i3.Tag>? get tags;
  @override
  List<Object?> get props => [
        transitGatewayPolicyTableId,
        transitGatewayId,
        state,
        creationTime,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TransitGatewayPolicyTable');
    helper.add(
      'transitGatewayPolicyTableId',
      transitGatewayPolicyTableId,
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

class TransitGatewayPolicyTableEc2QuerySerializer
    extends _i5.StructuredSmithySerializer<TransitGatewayPolicyTable> {
  const TransitGatewayPolicyTableEc2QuerySerializer()
      : super('TransitGatewayPolicyTable');

  @override
  Iterable<Type> get types => const [
        TransitGatewayPolicyTable,
        _$TransitGatewayPolicyTable,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayPolicyTable deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayPolicyTableBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'transitGatewayPolicyTableId':
          if (value != null) {
            result.transitGatewayPolicyTableId = (serializers.deserialize(
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
              specifiedType: const FullType(_i2.TransitGatewayPolicyTableState),
            ) as _i2.TransitGatewayPolicyTableState);
          }
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
    final payload = (object as TransitGatewayPolicyTable);
    final result = <Object?>[
      const _i5.XmlElementName(
        'TransitGatewayPolicyTableResponse',
        _i5.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.transitGatewayPolicyTableId != null) {
      result
        ..add(const _i5.XmlElementName('TransitGatewayPolicyTableId'))
        ..add(serializers.serialize(
          payload.transitGatewayPolicyTableId!,
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
              const FullType.nullable(_i2.TransitGatewayPolicyTableState),
        ));
    }
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
