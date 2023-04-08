// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_queued_reserved_instances_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/failed_queued_purchase_deletion.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/successful_queued_purchase_deletion.dart'
    as _i2;

part 'delete_queued_reserved_instances_result.g.dart';

abstract class DeleteQueuedReservedInstancesResult
    with
        _i1.AWSEquatable<DeleteQueuedReservedInstancesResult>
    implements
        Built<DeleteQueuedReservedInstancesResult,
            DeleteQueuedReservedInstancesResultBuilder> {
  factory DeleteQueuedReservedInstancesResult({
    List<_i2.SuccessfulQueuedPurchaseDeletion>?
        successfulQueuedPurchaseDeletions,
    List<_i3.FailedQueuedPurchaseDeletion>? failedQueuedPurchaseDeletions,
  }) {
    return _$DeleteQueuedReservedInstancesResult._(
      successfulQueuedPurchaseDeletions:
          successfulQueuedPurchaseDeletions == null
              ? null
              : _i4.BuiltList(successfulQueuedPurchaseDeletions),
      failedQueuedPurchaseDeletions: failedQueuedPurchaseDeletions == null
          ? null
          : _i4.BuiltList(failedQueuedPurchaseDeletions),
    );
  }

  factory DeleteQueuedReservedInstancesResult.build(
          [void Function(DeleteQueuedReservedInstancesResultBuilder) updates]) =
      _$DeleteQueuedReservedInstancesResult;

  const DeleteQueuedReservedInstancesResult._();

  /// Constructs a [DeleteQueuedReservedInstancesResult] from a [payload] and [response].
  factory DeleteQueuedReservedInstancesResult.fromResponse(
    DeleteQueuedReservedInstancesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i5.SmithySerializer> serializers = [
    DeleteQueuedReservedInstancesResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteQueuedReservedInstancesResultBuilder b) {}

  /// Information about the queued purchases that were successfully deleted.
  _i4.BuiltList<_i2.SuccessfulQueuedPurchaseDeletion>?
      get successfulQueuedPurchaseDeletions;

  /// Information about the queued purchases that could not be deleted.
  _i4.BuiltList<_i3.FailedQueuedPurchaseDeletion>?
      get failedQueuedPurchaseDeletions;
  @override
  List<Object?> get props => [
        successfulQueuedPurchaseDeletions,
        failedQueuedPurchaseDeletions,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteQueuedReservedInstancesResult');
    helper.add(
      'successfulQueuedPurchaseDeletions',
      successfulQueuedPurchaseDeletions,
    );
    helper.add(
      'failedQueuedPurchaseDeletions',
      failedQueuedPurchaseDeletions,
    );
    return helper.toString();
  }
}

class DeleteQueuedReservedInstancesResultEc2QuerySerializer extends _i5
    .StructuredSmithySerializer<DeleteQueuedReservedInstancesResult> {
  const DeleteQueuedReservedInstancesResultEc2QuerySerializer()
      : super('DeleteQueuedReservedInstancesResult');

  @override
  Iterable<Type> get types => const [
        DeleteQueuedReservedInstancesResult,
        _$DeleteQueuedReservedInstancesResult,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteQueuedReservedInstancesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteQueuedReservedInstancesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'successfulQueuedPurchaseDeletionSet':
          if (value != null) {
            result.successfulQueuedPurchaseDeletions
                .replace((const _i5.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i5.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i2.SuccessfulQueuedPurchaseDeletion)],
              ),
            ) as _i4.BuiltList<_i2.SuccessfulQueuedPurchaseDeletion>));
          }
          break;
        case 'failedQueuedPurchaseDeletionSet':
          if (value != null) {
            result.failedQueuedPurchaseDeletions
                .replace((const _i5.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i5.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.FailedQueuedPurchaseDeletion)],
              ),
            ) as _i4.BuiltList<_i3.FailedQueuedPurchaseDeletion>));
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
    final payload = (object as DeleteQueuedReservedInstancesResult);
    final result = <Object?>[
      const _i5.XmlElementName(
        'DeleteQueuedReservedInstancesResultResponse',
        _i5.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.successfulQueuedPurchaseDeletions != null) {
      result
        ..add(const _i5.XmlElementName('SuccessfulQueuedPurchaseDeletionSet'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.successfulQueuedPurchaseDeletions!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i2.SuccessfulQueuedPurchaseDeletion)],
          ),
        ));
    }
    if (payload.failedQueuedPurchaseDeletions != null) {
      result
        ..add(const _i5.XmlElementName('FailedQueuedPurchaseDeletionSet'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.failedQueuedPurchaseDeletions!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.FailedQueuedPurchaseDeletion)],
          ),
        ));
    }
    return result;
  }
}
