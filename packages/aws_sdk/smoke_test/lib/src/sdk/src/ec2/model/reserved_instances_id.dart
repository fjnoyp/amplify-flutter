// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.reserved_instances_id; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'reserved_instances_id.g.dart';

/// Describes the ID of a Reserved Instance.
abstract class ReservedInstancesId
    with _i1.AWSEquatable<ReservedInstancesId>
    implements Built<ReservedInstancesId, ReservedInstancesIdBuilder> {
  /// Describes the ID of a Reserved Instance.
  factory ReservedInstancesId({String? reservedInstancesId}) {
    return _$ReservedInstancesId._(reservedInstancesId: reservedInstancesId);
  }

  /// Describes the ID of a Reserved Instance.
  factory ReservedInstancesId.build(
          [void Function(ReservedInstancesIdBuilder) updates]) =
      _$ReservedInstancesId;

  const ReservedInstancesId._();

  static const List<_i2.SmithySerializer> serializers = [
    ReservedInstancesIdEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ReservedInstancesIdBuilder b) {}

  /// The ID of the Reserved Instance.
  String? get reservedInstancesId;
  @override
  List<Object?> get props => [reservedInstancesId];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ReservedInstancesId');
    helper.add(
      'reservedInstancesId',
      reservedInstancesId,
    );
    return helper.toString();
  }
}

class ReservedInstancesIdEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ReservedInstancesId> {
  const ReservedInstancesIdEc2QuerySerializer() : super('ReservedInstancesId');

  @override
  Iterable<Type> get types => const [
        ReservedInstancesId,
        _$ReservedInstancesId,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ReservedInstancesId deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReservedInstancesIdBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'reservedInstancesId':
          if (value != null) {
            result.reservedInstancesId = (serializers.deserialize(
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
    final payload = (object as ReservedInstancesId);
    final result = <Object?>[
      const _i2.XmlElementName(
        'ReservedInstancesIdResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.reservedInstancesId != null) {
      result
        ..add(const _i2.XmlElementName('ReservedInstancesId'))
        ..add(serializers.serialize(
          payload.reservedInstancesId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
