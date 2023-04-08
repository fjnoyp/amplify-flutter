// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.client_certificate_revocation_list_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/client_certificate_revocation_list_status_code.dart'
    as _i2;

part 'client_certificate_revocation_list_status.g.dart';

/// Describes the state of a client certificate revocation list.
abstract class ClientCertificateRevocationListStatus
    with
        _i1.AWSEquatable<ClientCertificateRevocationListStatus>
    implements
        Built<ClientCertificateRevocationListStatus,
            ClientCertificateRevocationListStatusBuilder> {
  /// Describes the state of a client certificate revocation list.
  factory ClientCertificateRevocationListStatus({
    _i2.ClientCertificateRevocationListStatusCode? code,
    String? message,
  }) {
    return _$ClientCertificateRevocationListStatus._(
      code: code,
      message: message,
    );
  }

  /// Describes the state of a client certificate revocation list.
  factory ClientCertificateRevocationListStatus.build(
      [void Function(ClientCertificateRevocationListStatusBuilder)
          updates]) = _$ClientCertificateRevocationListStatus;

  const ClientCertificateRevocationListStatus._();

  static const List<_i3.SmithySerializer> serializers = [
    ClientCertificateRevocationListStatusEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ClientCertificateRevocationListStatusBuilder b) {}

  /// The state of the client certificate revocation list.
  _i2.ClientCertificateRevocationListStatusCode? get code;

  /// A message about the status of the client certificate revocation list, if applicable.
  String? get message;
  @override
  List<Object?> get props => [
        code,
        message,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ClientCertificateRevocationListStatus');
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

class ClientCertificateRevocationListStatusEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<ClientCertificateRevocationListStatus> {
  const ClientCertificateRevocationListStatusEc2QuerySerializer()
      : super('ClientCertificateRevocationListStatus');

  @override
  Iterable<Type> get types => const [
        ClientCertificateRevocationListStatus,
        _$ClientCertificateRevocationListStatus,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ClientCertificateRevocationListStatus deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClientCertificateRevocationListStatusBuilder();
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
                  const FullType(_i2.ClientCertificateRevocationListStatusCode),
            ) as _i2.ClientCertificateRevocationListStatusCode);
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
    final payload = (object as ClientCertificateRevocationListStatus);
    final result = <Object?>[
      const _i3.XmlElementName(
        'ClientCertificateRevocationListStatusResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.code != null) {
      result
        ..add(const _i3.XmlElementName('Code'))
        ..add(serializers.serialize(
          payload.code!,
          specifiedType: const FullType.nullable(
              _i2.ClientCertificateRevocationListStatusCode),
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
