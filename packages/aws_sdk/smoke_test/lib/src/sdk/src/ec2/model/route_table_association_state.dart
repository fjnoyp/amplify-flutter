// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.route_table_association_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/route_table_association_state_code.dart'
    as _i2;

part 'route_table_association_state.g.dart';

/// Describes the state of an association between a route table and a subnet or gateway.
abstract class RouteTableAssociationState
    with _i1.AWSEquatable<RouteTableAssociationState>
    implements
        Built<RouteTableAssociationState, RouteTableAssociationStateBuilder> {
  /// Describes the state of an association between a route table and a subnet or gateway.
  factory RouteTableAssociationState({
    _i2.RouteTableAssociationStateCode? state,
    String? statusMessage,
  }) {
    return _$RouteTableAssociationState._(
      state: state,
      statusMessage: statusMessage,
    );
  }

  /// Describes the state of an association between a route table and a subnet or gateway.
  factory RouteTableAssociationState.build(
          [void Function(RouteTableAssociationStateBuilder) updates]) =
      _$RouteTableAssociationState;

  const RouteTableAssociationState._();

  static const List<_i3.SmithySerializer> serializers = [
    RouteTableAssociationStateEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RouteTableAssociationStateBuilder b) {}

  /// The state of the association.
  _i2.RouteTableAssociationStateCode? get state;

  /// The status message, if applicable.
  String? get statusMessage;
  @override
  List<Object?> get props => [
        state,
        statusMessage,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RouteTableAssociationState');
    helper.add(
      'state',
      state,
    );
    helper.add(
      'statusMessage',
      statusMessage,
    );
    return helper.toString();
  }
}

class RouteTableAssociationStateEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<RouteTableAssociationState> {
  const RouteTableAssociationStateEc2QuerySerializer()
      : super('RouteTableAssociationState');

  @override
  Iterable<Type> get types => const [
        RouteTableAssociationState,
        _$RouteTableAssociationState,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RouteTableAssociationState deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RouteTableAssociationStateBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'state':
          if (value != null) {
            result.state = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.RouteTableAssociationStateCode),
            ) as _i2.RouteTableAssociationStateCode);
          }
          break;
        case 'statusMessage':
          if (value != null) {
            result.statusMessage = (serializers.deserialize(
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
    final payload = (object as RouteTableAssociationState);
    final result = <Object?>[
      const _i3.XmlElementName(
        'RouteTableAssociationStateResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.state != null) {
      result
        ..add(const _i3.XmlElementName('State'))
        ..add(serializers.serialize(
          payload.state!,
          specifiedType:
              const FullType.nullable(_i2.RouteTableAssociationStateCode),
        ));
    }
    if (payload.statusMessage != null) {
      result
        ..add(const _i3.XmlElementName('StatusMessage'))
        ..add(serializers.serialize(
          payload.statusMessage!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
