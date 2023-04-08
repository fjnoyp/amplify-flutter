// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.cloud_formation.model.stack_instance_not_found_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'stack_instance_not_found_exception.g.dart';

/// The specified stack instance doesn't exist.
abstract class StackInstanceNotFoundException
    with
        _i1.AWSEquatable<StackInstanceNotFoundException>
    implements
        Built<StackInstanceNotFoundException,
            StackInstanceNotFoundExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The specified stack instance doesn't exist.
  factory StackInstanceNotFoundException({String? message}) {
    return _$StackInstanceNotFoundException._(message: message);
  }

  /// The specified stack instance doesn't exist.
  factory StackInstanceNotFoundException.build(
          [void Function(StackInstanceNotFoundExceptionBuilder) updates]) =
      _$StackInstanceNotFoundException;

  const StackInstanceNotFoundException._();

  /// Constructs a [StackInstanceNotFoundException] from a [payload] and [response].
  factory StackInstanceNotFoundException.fromResponse(
    StackInstanceNotFoundException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    StackInstanceNotFoundExceptionAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StackInstanceNotFoundExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.cloudformation',
        shape: 'StackInstanceNotFoundException',
      );
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int get statusCode => 404;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [message];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('StackInstanceNotFoundException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class StackInstanceNotFoundExceptionAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<StackInstanceNotFoundException> {
  const StackInstanceNotFoundExceptionAwsQuerySerializer()
      : super('StackInstanceNotFoundException');

  @override
  Iterable<Type> get types => const [
        StackInstanceNotFoundException,
        _$StackInstanceNotFoundException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  StackInstanceNotFoundException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StackInstanceNotFoundExceptionBuilder();
    final errorIterator = serialized.iterator;
    while (errorIterator.moveNext()) {
      final key = errorIterator.current;
      errorIterator.moveNext();
      if (key == 'Error') {
        serialized = errorIterator.current as Iterable;
      }
    }
    final responseIterator = serialized.iterator;
    while (responseIterator.moveNext()) {
      final key = responseIterator.current as String;
      responseIterator.moveNext();
      if (key.endsWith('Result')) {
        serialized = responseIterator.current as Iterable;
      }
    }
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Message':
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
    final payload = (object as StackInstanceNotFoundException);
    final result = <Object?>[
      const _i2.XmlElementName(
        'StackInstanceNotFoundExceptionResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
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
