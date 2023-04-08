// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_fleet_success_item; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_state_code.dart' as _i2;

part 'delete_fleet_success_item.g.dart';

/// Describes an EC2 Fleet that was successfully deleted.
abstract class DeleteFleetSuccessItem
    with _i1.AWSEquatable<DeleteFleetSuccessItem>
    implements Built<DeleteFleetSuccessItem, DeleteFleetSuccessItemBuilder> {
  /// Describes an EC2 Fleet that was successfully deleted.
  factory DeleteFleetSuccessItem({
    _i2.FleetStateCode? currentFleetState,
    _i2.FleetStateCode? previousFleetState,
    String? fleetId,
  }) {
    return _$DeleteFleetSuccessItem._(
      currentFleetState: currentFleetState,
      previousFleetState: previousFleetState,
      fleetId: fleetId,
    );
  }

  /// Describes an EC2 Fleet that was successfully deleted.
  factory DeleteFleetSuccessItem.build(
          [void Function(DeleteFleetSuccessItemBuilder) updates]) =
      _$DeleteFleetSuccessItem;

  const DeleteFleetSuccessItem._();

  static const List<_i3.SmithySerializer> serializers = [
    DeleteFleetSuccessItemEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteFleetSuccessItemBuilder b) {}

  /// The current state of the EC2 Fleet.
  _i2.FleetStateCode? get currentFleetState;

  /// The previous state of the EC2 Fleet.
  _i2.FleetStateCode? get previousFleetState;

  /// The ID of the EC2 Fleet.
  String? get fleetId;
  @override
  List<Object?> get props => [
        currentFleetState,
        previousFleetState,
        fleetId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteFleetSuccessItem');
    helper.add(
      'currentFleetState',
      currentFleetState,
    );
    helper.add(
      'previousFleetState',
      previousFleetState,
    );
    helper.add(
      'fleetId',
      fleetId,
    );
    return helper.toString();
  }
}

class DeleteFleetSuccessItemEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DeleteFleetSuccessItem> {
  const DeleteFleetSuccessItemEc2QuerySerializer()
      : super('DeleteFleetSuccessItem');

  @override
  Iterable<Type> get types => const [
        DeleteFleetSuccessItem,
        _$DeleteFleetSuccessItem,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteFleetSuccessItem deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteFleetSuccessItemBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'currentFleetState':
          if (value != null) {
            result.currentFleetState = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.FleetStateCode),
            ) as _i2.FleetStateCode);
          }
          break;
        case 'previousFleetState':
          if (value != null) {
            result.previousFleetState = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.FleetStateCode),
            ) as _i2.FleetStateCode);
          }
          break;
        case 'fleetId':
          if (value != null) {
            result.fleetId = (serializers.deserialize(
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
    final payload = (object as DeleteFleetSuccessItem);
    final result = <Object?>[
      const _i3.XmlElementName(
        'DeleteFleetSuccessItemResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.currentFleetState != null) {
      result
        ..add(const _i3.XmlElementName('CurrentFleetState'))
        ..add(serializers.serialize(
          payload.currentFleetState!,
          specifiedType: const FullType.nullable(_i2.FleetStateCode),
        ));
    }
    if (payload.previousFleetState != null) {
      result
        ..add(const _i3.XmlElementName('PreviousFleetState'))
        ..add(serializers.serialize(
          payload.previousFleetState!,
          specifiedType: const FullType.nullable(_i2.FleetStateCode),
        ));
    }
    if (payload.fleetId != null) {
      result
        ..add(const _i3.XmlElementName('FleetId'))
        ..add(serializers.serialize(
          payload.fleetId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
