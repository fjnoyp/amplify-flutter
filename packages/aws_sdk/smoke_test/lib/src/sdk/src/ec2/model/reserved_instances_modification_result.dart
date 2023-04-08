// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.reserved_instances_modification_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/reserved_instances_configuration.dart'
    as _i2;

part 'reserved_instances_modification_result.g.dart';

/// Describes the modification request/s.
abstract class ReservedInstancesModificationResult
    with
        _i1.AWSEquatable<ReservedInstancesModificationResult>
    implements
        Built<ReservedInstancesModificationResult,
            ReservedInstancesModificationResultBuilder> {
  /// Describes the modification request/s.
  factory ReservedInstancesModificationResult({
    String? reservedInstancesId,
    _i2.ReservedInstancesConfiguration? targetConfiguration,
  }) {
    return _$ReservedInstancesModificationResult._(
      reservedInstancesId: reservedInstancesId,
      targetConfiguration: targetConfiguration,
    );
  }

  /// Describes the modification request/s.
  factory ReservedInstancesModificationResult.build(
          [void Function(ReservedInstancesModificationResultBuilder) updates]) =
      _$ReservedInstancesModificationResult;

  const ReservedInstancesModificationResult._();

  static const List<_i3.SmithySerializer> serializers = [
    ReservedInstancesModificationResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ReservedInstancesModificationResultBuilder b) {}

  /// The ID for the Reserved Instances that were created as part of the modification request. This field is only available when the modification is fulfilled.
  String? get reservedInstancesId;

  /// The target Reserved Instances configurations supplied as part of the modification request.
  _i2.ReservedInstancesConfiguration? get targetConfiguration;
  @override
  List<Object?> get props => [
        reservedInstancesId,
        targetConfiguration,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ReservedInstancesModificationResult');
    helper.add(
      'reservedInstancesId',
      reservedInstancesId,
    );
    helper.add(
      'targetConfiguration',
      targetConfiguration,
    );
    return helper.toString();
  }
}

class ReservedInstancesModificationResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<ReservedInstancesModificationResult> {
  const ReservedInstancesModificationResultEc2QuerySerializer()
      : super('ReservedInstancesModificationResult');

  @override
  Iterable<Type> get types => const [
        ReservedInstancesModificationResult,
        _$ReservedInstancesModificationResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ReservedInstancesModificationResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReservedInstancesModificationResultBuilder();
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
        case 'targetConfiguration':
          if (value != null) {
            result.targetConfiguration.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ReservedInstancesConfiguration),
            ) as _i2.ReservedInstancesConfiguration));
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
    final payload = (object as ReservedInstancesModificationResult);
    final result = <Object?>[
      const _i3.XmlElementName(
        'ReservedInstancesModificationResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.reservedInstancesId != null) {
      result
        ..add(const _i3.XmlElementName('ReservedInstancesId'))
        ..add(serializers.serialize(
          payload.reservedInstancesId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.targetConfiguration != null) {
      result
        ..add(const _i3.XmlElementName('TargetConfiguration'))
        ..add(serializers.serialize(
          payload.targetConfiguration!,
          specifiedType: const FullType(_i2.ReservedInstancesConfiguration),
        ));
    }
    return result;
  }
}
