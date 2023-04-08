// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.model.get_ssh_public_key_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/ssh_public_key.dart' as _i2;

part 'get_ssh_public_key_response.g.dart';

/// Contains the response to a successful GetSSHPublicKey request.
abstract class GetSshPublicKeyResponse
    with _i1.AWSEquatable<GetSshPublicKeyResponse>
    implements Built<GetSshPublicKeyResponse, GetSshPublicKeyResponseBuilder> {
  /// Contains the response to a successful GetSSHPublicKey request.
  factory GetSshPublicKeyResponse({_i2.SshPublicKey? sshPublicKey}) {
    return _$GetSshPublicKeyResponse._(sshPublicKey: sshPublicKey);
  }

  /// Contains the response to a successful GetSSHPublicKey request.
  factory GetSshPublicKeyResponse.build(
          [void Function(GetSshPublicKeyResponseBuilder) updates]) =
      _$GetSshPublicKeyResponse;

  const GetSshPublicKeyResponse._();

  /// Constructs a [GetSshPublicKeyResponse] from a [payload] and [response].
  factory GetSshPublicKeyResponse.fromResponse(
    GetSshPublicKeyResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    GetSshPublicKeyResponseAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetSshPublicKeyResponseBuilder b) {}

  /// A structure containing details about the SSH public key.
  _i2.SshPublicKey? get sshPublicKey;
  @override
  List<Object?> get props => [sshPublicKey];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetSshPublicKeyResponse');
    helper.add(
      'sshPublicKey',
      sshPublicKey,
    );
    return helper.toString();
  }
}

class GetSshPublicKeyResponseAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<GetSshPublicKeyResponse> {
  const GetSshPublicKeyResponseAwsQuerySerializer()
      : super('GetSshPublicKeyResponse');

  @override
  Iterable<Type> get types => const [
        GetSshPublicKeyResponse,
        _$GetSshPublicKeyResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetSshPublicKeyResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetSshPublicKeyResponseBuilder();
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
        case 'SSHPublicKey':
          if (value != null) {
            result.sshPublicKey.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.SshPublicKey),
            ) as _i2.SshPublicKey));
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
    final payload = (object as GetSshPublicKeyResponse);
    final result = <Object?>[
      const _i3.XmlElementName(
        'GetSshPublicKeyResponseResponse',
        _i3.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    if (payload.sshPublicKey != null) {
      result
        ..add(const _i3.XmlElementName('SSHPublicKey'))
        ..add(serializers.serialize(
          payload.sshPublicKey!,
          specifiedType: const FullType(_i2.SshPublicKey),
        ));
    }
    return result;
  }
}
