// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.model.duplicate_ssh_public_key_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'duplicate_ssh_public_key_exception.g.dart';

/// The request was rejected because the SSH public key is already associated with the specified IAM user.
abstract class DuplicateSshPublicKeyException
    with
        _i1.AWSEquatable<DuplicateSshPublicKeyException>
    implements
        Built<DuplicateSshPublicKeyException,
            DuplicateSshPublicKeyExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The request was rejected because the SSH public key is already associated with the specified IAM user.
  factory DuplicateSshPublicKeyException({String? message}) {
    return _$DuplicateSshPublicKeyException._(message: message);
  }

  /// The request was rejected because the SSH public key is already associated with the specified IAM user.
  factory DuplicateSshPublicKeyException.build(
          [void Function(DuplicateSshPublicKeyExceptionBuilder) updates]) =
      _$DuplicateSshPublicKeyException;

  const DuplicateSshPublicKeyException._();

  /// Constructs a [DuplicateSshPublicKeyException] from a [payload] and [response].
  factory DuplicateSshPublicKeyException.fromResponse(
    DuplicateSshPublicKeyException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    DuplicateSshPublicKeyExceptionAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DuplicateSshPublicKeyExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.iam',
        shape: 'DuplicateSSHPublicKeyException',
      );
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int get statusCode => 400;
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
        newBuiltValueToStringHelper('DuplicateSshPublicKeyException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class DuplicateSshPublicKeyExceptionAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<DuplicateSshPublicKeyException> {
  const DuplicateSshPublicKeyExceptionAwsQuerySerializer()
      : super('DuplicateSshPublicKeyException');

  @override
  Iterable<Type> get types => const [
        DuplicateSshPublicKeyException,
        _$DuplicateSshPublicKeyException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DuplicateSshPublicKeyException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DuplicateSshPublicKeyExceptionBuilder();
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
    final payload = (object as DuplicateSshPublicKeyException);
    final result = <Object?>[
      const _i2.XmlElementName(
        'DuplicateSshPublicKeyExceptionResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    if (payload.message != null) {
      result
        ..add(const _i2.XmlElementName('message'))
        ..add(serializers.serialize(
          payload.message!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
