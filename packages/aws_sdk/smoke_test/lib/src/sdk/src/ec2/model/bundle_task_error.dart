// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.bundle_task_error; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'bundle_task_error.g.dart';

/// Describes an error for BundleInstance.
abstract class BundleTaskError
    with _i1.AWSEquatable<BundleTaskError>
    implements Built<BundleTaskError, BundleTaskErrorBuilder> {
  /// Describes an error for BundleInstance.
  factory BundleTaskError({
    String? code,
    String? message,
  }) {
    return _$BundleTaskError._(
      code: code,
      message: message,
    );
  }

  /// Describes an error for BundleInstance.
  factory BundleTaskError.build(
      [void Function(BundleTaskErrorBuilder) updates]) = _$BundleTaskError;

  const BundleTaskError._();

  static const List<_i2.SmithySerializer> serializers = [
    BundleTaskErrorEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(BundleTaskErrorBuilder b) {}

  /// The error code.
  String? get code;

  /// The error message.
  String? get message;
  @override
  List<Object?> get props => [
        code,
        message,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('BundleTaskError');
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

class BundleTaskErrorEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<BundleTaskError> {
  const BundleTaskErrorEc2QuerySerializer() : super('BundleTaskError');

  @override
  Iterable<Type> get types => const [
        BundleTaskError,
        _$BundleTaskError,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  BundleTaskError deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BundleTaskErrorBuilder();
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
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as BundleTaskError);
    final result = <Object?>[
      const _i2.XmlElementName(
        'BundleTaskErrorResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.code != null) {
      result
        ..add(const _i2.XmlElementName('Code'))
        ..add(serializers.serialize(
          payload.code!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.message != null) {
      result
        ..add(const _i2.XmlElementName('Message'))
        ..add(serializers.serialize(
          payload.message!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
