// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.unsuccessful_item_error; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'unsuccessful_item_error.g.dart';

/// Information about the error that occurred. For more information about errors, see [Error codes](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/errors-overview.html).
abstract class UnsuccessfulItemError
    with _i1.AWSEquatable<UnsuccessfulItemError>
    implements Built<UnsuccessfulItemError, UnsuccessfulItemErrorBuilder> {
  /// Information about the error that occurred. For more information about errors, see [Error codes](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/errors-overview.html).
  factory UnsuccessfulItemError({
    String? code,
    String? message,
  }) {
    return _$UnsuccessfulItemError._(
      code: code,
      message: message,
    );
  }

  /// Information about the error that occurred. For more information about errors, see [Error codes](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/errors-overview.html).
  factory UnsuccessfulItemError.build(
          [void Function(UnsuccessfulItemErrorBuilder) updates]) =
      _$UnsuccessfulItemError;

  const UnsuccessfulItemError._();

  static const List<_i2.SmithySerializer> serializers = [
    UnsuccessfulItemErrorEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UnsuccessfulItemErrorBuilder b) {}

  /// The error code.
  String? get code;

  /// The error message accompanying the error code.
  String? get message;
  @override
  List<Object?> get props => [
        code,
        message,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UnsuccessfulItemError');
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

class UnsuccessfulItemErrorEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<UnsuccessfulItemError> {
  const UnsuccessfulItemErrorEc2QuerySerializer()
      : super('UnsuccessfulItemError');

  @override
  Iterable<Type> get types => const [
        UnsuccessfulItemError,
        _$UnsuccessfulItemError,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  UnsuccessfulItemError deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UnsuccessfulItemErrorBuilder();
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
    final payload = (object as UnsuccessfulItemError);
    final result = <Object?>[
      const _i2.XmlElementName(
        'UnsuccessfulItemErrorResponse',
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
