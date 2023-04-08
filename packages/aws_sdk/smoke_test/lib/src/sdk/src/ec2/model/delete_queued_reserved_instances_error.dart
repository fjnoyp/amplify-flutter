// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.delete_queued_reserved_instances_error; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/delete_queued_reserved_instances_error_code.dart'
    as _i2;

part 'delete_queued_reserved_instances_error.g.dart';

/// Describes the error for a Reserved Instance whose queued purchase could not be deleted.
abstract class DeleteQueuedReservedInstancesError
    with
        _i1.AWSEquatable<DeleteQueuedReservedInstancesError>
    implements
        Built<DeleteQueuedReservedInstancesError,
            DeleteQueuedReservedInstancesErrorBuilder> {
  /// Describes the error for a Reserved Instance whose queued purchase could not be deleted.
  factory DeleteQueuedReservedInstancesError({
    _i2.DeleteQueuedReservedInstancesErrorCode? code,
    String? message,
  }) {
    return _$DeleteQueuedReservedInstancesError._(
      code: code,
      message: message,
    );
  }

  /// Describes the error for a Reserved Instance whose queued purchase could not be deleted.
  factory DeleteQueuedReservedInstancesError.build(
          [void Function(DeleteQueuedReservedInstancesErrorBuilder) updates]) =
      _$DeleteQueuedReservedInstancesError;

  const DeleteQueuedReservedInstancesError._();

  static const List<_i3.SmithySerializer> serializers = [
    DeleteQueuedReservedInstancesErrorEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteQueuedReservedInstancesErrorBuilder b) {}

  /// The error code.
  _i2.DeleteQueuedReservedInstancesErrorCode? get code;

  /// The error message.
  String? get message;
  @override
  List<Object?> get props => [
        code,
        message,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteQueuedReservedInstancesError');
    helper.add(
      'code',
      code,
    );
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class DeleteQueuedReservedInstancesErrorEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DeleteQueuedReservedInstancesError> {
  const DeleteQueuedReservedInstancesErrorEc2QuerySerializer()
      : super('DeleteQueuedReservedInstancesError');

  @override
  Iterable<Type> get types => const [
        DeleteQueuedReservedInstancesError,
        _$DeleteQueuedReservedInstancesError,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeleteQueuedReservedInstancesError deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteQueuedReservedInstancesErrorBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'code':
          if (value != null) {
            result.code = (serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i2.DeleteQueuedReservedInstancesErrorCode),
            ) as _i2.DeleteQueuedReservedInstancesErrorCode);
          }
          break;
        case 'message':
          if (value != null) {
            result.message = (serializers.deserialize(
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
    final payload = (object as DeleteQueuedReservedInstancesError);
    final result = <Object?>[
      const _i3.XmlElementName(
        'DeleteQueuedReservedInstancesErrorResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.code != null) {
      result
        ..add(const _i3.XmlElementName('Code'))
        ..add(serializers.serialize(
          payload.code!,
          specifiedType: const FullType.nullable(
              _i2.DeleteQueuedReservedInstancesErrorCode),
        ));
    }
    if (payload.message != null) {
      result
        ..add(const _i3.XmlElementName('Message'))
        ..add(serializers.serialize(
          payload.message!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
