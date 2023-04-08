// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.certificate_authentication; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'certificate_authentication.g.dart';

/// Information about the client certificate used for authentication.
abstract class CertificateAuthentication
    with _i1.AWSEquatable<CertificateAuthentication>
    implements
        Built<CertificateAuthentication, CertificateAuthenticationBuilder> {
  /// Information about the client certificate used for authentication.
  factory CertificateAuthentication({String? clientRootCertificateChain}) {
    return _$CertificateAuthentication._(
        clientRootCertificateChain: clientRootCertificateChain);
  }

  /// Information about the client certificate used for authentication.
  factory CertificateAuthentication.build(
          [void Function(CertificateAuthenticationBuilder) updates]) =
      _$CertificateAuthentication;

  const CertificateAuthentication._();

  static const List<_i2.SmithySerializer> serializers = [
    CertificateAuthenticationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CertificateAuthenticationBuilder b) {}

  /// The ARN of the client certificate.
  String? get clientRootCertificateChain;
  @override
  List<Object?> get props => [clientRootCertificateChain];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CertificateAuthentication');
    helper.add(
      'clientRootCertificateChain',
      clientRootCertificateChain,
    );
    return helper.toString();
  }
}

class CertificateAuthenticationEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CertificateAuthentication> {
  const CertificateAuthenticationEc2QuerySerializer()
      : super('CertificateAuthentication');

  @override
  Iterable<Type> get types => const [
        CertificateAuthentication,
        _$CertificateAuthentication,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CertificateAuthentication deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CertificateAuthenticationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'clientRootCertificateChain':
          if (value != null) {
            result.clientRootCertificateChain = (serializers.deserialize(
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
    final payload = (object as CertificateAuthentication);
    final result = <Object?>[
      const _i2.XmlElementName(
        'CertificateAuthenticationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.clientRootCertificateChain != null) {
      result
        ..add(const _i2.XmlElementName('ClientRootCertificateChain'))
        ..add(serializers.serialize(
          payload.clientRootCertificateChain!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
