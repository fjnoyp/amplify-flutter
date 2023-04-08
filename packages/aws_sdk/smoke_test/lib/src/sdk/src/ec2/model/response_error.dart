// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.response_error; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_error_code.dart'
    as _i2;

part 'response_error.g.dart';

/// Describes the error that's returned when you cannot delete a launch template version.
abstract class ResponseError
    with _i1.AWSEquatable<ResponseError>
    implements Built<ResponseError, ResponseErrorBuilder> {
  /// Describes the error that's returned when you cannot delete a launch template version.
  factory ResponseError({
    _i2.LaunchTemplateErrorCode? code,
    String? message,
  }) {
    return _$ResponseError._(
      code: code,
      message: message,
    );
  }

  /// Describes the error that's returned when you cannot delete a launch template version.
  factory ResponseError.build([void Function(ResponseErrorBuilder) updates]) =
      _$ResponseError;

  const ResponseError._();

  static const List<_i3.SmithySerializer> serializers = [
    ResponseErrorEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ResponseErrorBuilder b) {}

  /// The error code.
  _i2.LaunchTemplateErrorCode? get code;

  /// The error message, if applicable.
  String? get message;
  @override
  List<Object?> get props => [
        code,
        message,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ResponseError');
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

class ResponseErrorEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<ResponseError> {
  const ResponseErrorEc2QuerySerializer() : super('ResponseError');

  @override
  Iterable<Type> get types => const [
        ResponseError,
        _$ResponseError,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ResponseError deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResponseErrorBuilder();
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
              specifiedType: const FullType(_i2.LaunchTemplateErrorCode),
            ) as _i2.LaunchTemplateErrorCode);
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
    final payload = (object as ResponseError);
    final result = <Object?>[
      const _i3.XmlElementName(
        'ResponseErrorResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.code != null) {
      result
        ..add(const _i3.XmlElementName('Code'))
        ..add(serializers.serialize(
          payload.code!,
          specifiedType: const FullType.nullable(_i2.LaunchTemplateErrorCode),
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
