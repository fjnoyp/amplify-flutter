// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.model.delete_access_key_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_access_key_request.g.dart';

abstract class DeleteAccessKeyRequest
    with
        _i1.HttpInput<DeleteAccessKeyRequest>,
        _i2.AWSEquatable<DeleteAccessKeyRequest>
    implements Built<DeleteAccessKeyRequest, DeleteAccessKeyRequestBuilder> {
  factory DeleteAccessKeyRequest({
    String? userName,
    required String accessKeyId,
  }) {
    return _$DeleteAccessKeyRequest._(
      userName: userName,
      accessKeyId: accessKeyId,
    );
  }

  factory DeleteAccessKeyRequest.build(
          [void Function(DeleteAccessKeyRequestBuilder) updates]) =
      _$DeleteAccessKeyRequest;

  const DeleteAccessKeyRequest._();

  factory DeleteAccessKeyRequest.fromRequest(
    DeleteAccessKeyRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DeleteAccessKeyRequestAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteAccessKeyRequestBuilder b) {}

  /// The name of the user whose access key pair you want to delete.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
  String? get userName;

  /// The access key ID for the access key ID and secret access key you want to delete.
  ///
  /// This parameter allows (through its [regex pattern](http://wikipedia.org/wiki/regex)) a string of characters that can consist of any upper or lowercased letter or digit.
  String get accessKeyId;
  @override
  DeleteAccessKeyRequest getPayload() => this;
  @override
  List<Object?> get props => [
        userName,
        accessKeyId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteAccessKeyRequest');
    helper.add(
      'userName',
      userName,
    );
    helper.add(
      'accessKeyId',
      accessKeyId,
    );
    return helper.toString();
  }
}

class DeleteAccessKeyRequestAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteAccessKeyRequest> {
  const DeleteAccessKeyRequestAwsQuerySerializer()
      : super('DeleteAccessKeyRequest');

  @override
  Iterable<Type> get types => const [
        DeleteAccessKeyRequest,
        _$DeleteAccessKeyRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DeleteAccessKeyRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteAccessKeyRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'UserName':
          if (value != null) {
            result.userName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'AccessKeyId':
          result.accessKeyId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as DeleteAccessKeyRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DeleteAccessKeyRequestResponse',
        _i1.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    if (payload.userName != null) {
      result
        ..add(const _i1.XmlElementName('UserName'))
        ..add(serializers.serialize(
          payload.userName!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('AccessKeyId'))
      ..add(serializers.serialize(
        payload.accessKeyId,
        specifiedType: const FullType(String),
      ));
    return result;
  }
}
