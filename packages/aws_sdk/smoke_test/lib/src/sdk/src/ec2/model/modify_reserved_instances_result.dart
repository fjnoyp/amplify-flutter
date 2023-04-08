// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.modify_reserved_instances_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'modify_reserved_instances_result.g.dart';

/// Contains the output of ModifyReservedInstances.
abstract class ModifyReservedInstancesResult
    with
        _i1.AWSEquatable<ModifyReservedInstancesResult>
    implements
        Built<ModifyReservedInstancesResult,
            ModifyReservedInstancesResultBuilder> {
  /// Contains the output of ModifyReservedInstances.
  factory ModifyReservedInstancesResult(
      {String? reservedInstancesModificationId}) {
    return _$ModifyReservedInstancesResult._(
        reservedInstancesModificationId: reservedInstancesModificationId);
  }

  /// Contains the output of ModifyReservedInstances.
  factory ModifyReservedInstancesResult.build(
          [void Function(ModifyReservedInstancesResultBuilder) updates]) =
      _$ModifyReservedInstancesResult;

  const ModifyReservedInstancesResult._();

  /// Constructs a [ModifyReservedInstancesResult] from a [payload] and [response].
  factory ModifyReservedInstancesResult.fromResponse(
    ModifyReservedInstancesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    ModifyReservedInstancesResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyReservedInstancesResultBuilder b) {}

  /// The ID for the modification.
  String? get reservedInstancesModificationId;
  @override
  List<Object?> get props => [reservedInstancesModificationId];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifyReservedInstancesResult');
    helper.add(
      'reservedInstancesModificationId',
      reservedInstancesModificationId,
    );
    return helper.toString();
  }
}

class ModifyReservedInstancesResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ModifyReservedInstancesResult> {
  const ModifyReservedInstancesResultEc2QuerySerializer()
      : super('ModifyReservedInstancesResult');

  @override
  Iterable<Type> get types => const [
        ModifyReservedInstancesResult,
        _$ModifyReservedInstancesResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyReservedInstancesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyReservedInstancesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'reservedInstancesModificationId':
          if (value != null) {
            result.reservedInstancesModificationId = (serializers.deserialize(
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
    final payload = (object as ModifyReservedInstancesResult);
    final result = <Object?>[
      const _i2.XmlElementName(
        'ModifyReservedInstancesResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.reservedInstancesModificationId != null) {
      result
        ..add(const _i2.XmlElementName('ReservedInstancesModificationId'))
        ..add(serializers.serialize(
          payload.reservedInstancesModificationId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
