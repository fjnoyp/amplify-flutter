// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library ec2_query_v1.ec2_protocol.model.complex_error; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ec2_query_v1/src/ec2_protocol/model/complex_nested_error_data.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i2;

part 'complex_error.g.dart';

/// This error is thrown when a request is invalid.
abstract class ComplexError
    with _i1.AWSEquatable<ComplexError>
    implements
        Built<ComplexError, ComplexErrorBuilder>,
        _i2.SmithyHttpException {
  /// This error is thrown when a request is invalid.
  factory ComplexError({
    String? topLevel,
    _i3.ComplexNestedErrorData? nested,
  }) {
    return _$ComplexError._(
      topLevel: topLevel,
      nested: nested,
    );
  }

  /// This error is thrown when a request is invalid.
  factory ComplexError.build([void Function(ComplexErrorBuilder) updates]) =
      _$ComplexError;

  const ComplexError._();

  /// Constructs a [ComplexError] from a [payload] and [response].
  factory ComplexError.fromResponse(
    ComplexError payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    ComplexErrorEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ComplexErrorBuilder b) {}
  String? get topLevel;
  _i3.ComplexNestedErrorData? get nested;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'aws.protocoltests.ec2',
        shape: 'ComplexError',
      );
  @override
  String? get message => null;
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int? get statusCode;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [
        topLevel,
        nested,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ComplexError');
    helper.add(
      'topLevel',
      topLevel,
    );
    helper.add(
      'nested',
      nested,
    );
    return helper.toString();
  }
}

class ComplexErrorEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ComplexError> {
  const ComplexErrorEc2QuerySerializer() : super('ComplexError');

  @override
  Iterable<Type> get types => const [
        ComplexError,
        _$ComplexError,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ComplexError deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ComplexErrorBuilder();
    final errorsIterator = serialized.iterator;
    while (errorsIterator.moveNext()) {
      final key = errorsIterator.current;
      errorsIterator.moveNext();
      if (key == 'Errors') {
        serialized = errorsIterator.current as Iterable;
      }
    }
    final errorIterator = serialized.iterator;
    while (errorIterator.moveNext()) {
      final key = errorIterator.current;
      errorIterator.moveNext();
      if (key == 'Error') {
        serialized = errorIterator.current as Iterable;
      }
    }
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'TopLevel':
          if (value != null) {
            result.topLevel = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Nested':
          if (value != null) {
            result.nested.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.ComplexNestedErrorData),
            ) as _i3.ComplexNestedErrorData));
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
    final payload = (object as ComplexError);
    final result = <Object?>[
      const _i2.XmlElementName(
        'ComplexErrorResponse',
        _i2.XmlNamespace('https://example.com/'),
      )
    ];
    if (payload.topLevel != null) {
      result
        ..add(const _i2.XmlElementName('TopLevel'))
        ..add(serializers.serialize(
          payload.topLevel!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.nested != null) {
      result
        ..add(const _i2.XmlElementName('Nested'))
        ..add(serializers.serialize(
          payload.nested!,
          specifiedType: const FullType(_i3.ComplexNestedErrorData),
        ));
    }
    return result;
  }
}
