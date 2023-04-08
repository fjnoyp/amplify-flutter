// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.failed_queued_purchase_deletion; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_queued_reserved_instances_error.dart'
    as _i2;

part 'failed_queued_purchase_deletion.g.dart';

/// Describes a Reserved Instance whose queued purchase was not deleted.
abstract class FailedQueuedPurchaseDeletion
    with
        _i1.AWSEquatable<FailedQueuedPurchaseDeletion>
    implements
        Built<FailedQueuedPurchaseDeletion,
            FailedQueuedPurchaseDeletionBuilder> {
  /// Describes a Reserved Instance whose queued purchase was not deleted.
  factory FailedQueuedPurchaseDeletion({
    _i2.DeleteQueuedReservedInstancesError? error,
    String? reservedInstancesId,
  }) {
    return _$FailedQueuedPurchaseDeletion._(
      error: error,
      reservedInstancesId: reservedInstancesId,
    );
  }

  /// Describes a Reserved Instance whose queued purchase was not deleted.
  factory FailedQueuedPurchaseDeletion.build(
          [void Function(FailedQueuedPurchaseDeletionBuilder) updates]) =
      _$FailedQueuedPurchaseDeletion;

  const FailedQueuedPurchaseDeletion._();

  static const List<_i3.SmithySerializer> serializers = [
    FailedQueuedPurchaseDeletionEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(FailedQueuedPurchaseDeletionBuilder b) {}

  /// The error.
  _i2.DeleteQueuedReservedInstancesError? get error;

  /// The ID of the Reserved Instance.
  String? get reservedInstancesId;
  @override
  List<Object?> get props => [
        error,
        reservedInstancesId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('FailedQueuedPurchaseDeletion');
    helper.add(
      'error',
      error,
    );
    helper.add(
      'reservedInstancesId',
      reservedInstancesId,
    );
    return helper.toString();
  }
}

class FailedQueuedPurchaseDeletionEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<FailedQueuedPurchaseDeletion> {
  const FailedQueuedPurchaseDeletionEc2QuerySerializer()
      : super('FailedQueuedPurchaseDeletion');

  @override
  Iterable<Type> get types => const [
        FailedQueuedPurchaseDeletion,
        _$FailedQueuedPurchaseDeletion,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  FailedQueuedPurchaseDeletion deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FailedQueuedPurchaseDeletionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'error':
          if (value != null) {
            result.error.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i2.DeleteQueuedReservedInstancesError),
            ) as _i2.DeleteQueuedReservedInstancesError));
          }
          break;
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
    final payload = (object as FailedQueuedPurchaseDeletion);
    final result = <Object?>[
      const _i3.XmlElementName(
        'FailedQueuedPurchaseDeletionResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.error != null) {
      result
        ..add(const _i3.XmlElementName('Error'))
        ..add(serializers.serialize(
          payload.error!,
          specifiedType: const FullType(_i2.DeleteQueuedReservedInstancesError),
        ));
    }
    if (payload.reservedInstancesId != null) {
      result
        ..add(const _i3.XmlElementName('ReservedInstancesId'))
        ..add(serializers.serialize(
          payload.reservedInstancesId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
