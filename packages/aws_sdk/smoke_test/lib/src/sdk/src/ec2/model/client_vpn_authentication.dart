// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.client_vpn_authentication; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/ec2/model/certificate_authentication.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/client_vpn_authentication_type.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/directory_service_authentication.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/federated_authentication.dart'
    as _i5;

part 'client_vpn_authentication.g.dart';

/// Describes the authentication methods used by a Client VPN endpoint. For more information, see [Authentication](https://docs.aws.amazon.com/vpn/latest/clientvpn-admin/client-authentication.html) in the _Client VPN Administrator Guide_.
abstract class ClientVpnAuthentication
    with _i1.AWSEquatable<ClientVpnAuthentication>
    implements Built<ClientVpnAuthentication, ClientVpnAuthenticationBuilder> {
  /// Describes the authentication methods used by a Client VPN endpoint. For more information, see [Authentication](https://docs.aws.amazon.com/vpn/latest/clientvpn-admin/client-authentication.html) in the _Client VPN Administrator Guide_.
  factory ClientVpnAuthentication({
    _i2.ClientVpnAuthenticationType? type,
    _i3.DirectoryServiceAuthentication? activeDirectory,
    _i4.CertificateAuthentication? mutualAuthentication,
    _i5.FederatedAuthentication? federatedAuthentication,
  }) {
    return _$ClientVpnAuthentication._(
      type: type,
      activeDirectory: activeDirectory,
      mutualAuthentication: mutualAuthentication,
      federatedAuthentication: federatedAuthentication,
    );
  }

  /// Describes the authentication methods used by a Client VPN endpoint. For more information, see [Authentication](https://docs.aws.amazon.com/vpn/latest/clientvpn-admin/client-authentication.html) in the _Client VPN Administrator Guide_.
  factory ClientVpnAuthentication.build(
          [void Function(ClientVpnAuthenticationBuilder) updates]) =
      _$ClientVpnAuthentication;

  const ClientVpnAuthentication._();

  static const List<_i6.SmithySerializer> serializers = [
    ClientVpnAuthenticationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ClientVpnAuthenticationBuilder b) {}

  /// The authentication type used.
  _i2.ClientVpnAuthenticationType? get type;

  /// Information about the Active Directory, if applicable.
  _i3.DirectoryServiceAuthentication? get activeDirectory;

  /// Information about the authentication certificates, if applicable.
  _i4.CertificateAuthentication? get mutualAuthentication;

  /// Information about the IAM SAML identity provider, if applicable.
  _i5.FederatedAuthentication? get federatedAuthentication;
  @override
  List<Object?> get props => [
        type,
        activeDirectory,
        mutualAuthentication,
        federatedAuthentication,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ClientVpnAuthentication');
    helper.add(
      'type',
      type,
    );
    helper.add(
      'activeDirectory',
      activeDirectory,
    );
    helper.add(
      'mutualAuthentication',
      mutualAuthentication,
    );
    helper.add(
      'federatedAuthentication',
      federatedAuthentication,
    );
    return helper.toString();
  }
}

class ClientVpnAuthenticationEc2QuerySerializer
    extends _i6.StructuredSmithySerializer<ClientVpnAuthentication> {
  const ClientVpnAuthenticationEc2QuerySerializer()
      : super('ClientVpnAuthentication');

  @override
  Iterable<Type> get types => const [
        ClientVpnAuthentication,
        _$ClientVpnAuthentication,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ClientVpnAuthentication deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ClientVpnAuthenticationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'type':
          if (value != null) {
            result.type = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ClientVpnAuthenticationType),
            ) as _i2.ClientVpnAuthenticationType);
          }
          break;
        case 'activeDirectory':
          if (value != null) {
            result.activeDirectory.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.DirectoryServiceAuthentication),
            ) as _i3.DirectoryServiceAuthentication));
          }
          break;
        case 'mutualAuthentication':
          if (value != null) {
            result.mutualAuthentication.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.CertificateAuthentication),
            ) as _i4.CertificateAuthentication));
          }
          break;
        case 'federatedAuthentication':
          if (value != null) {
            result.federatedAuthentication.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.FederatedAuthentication),
            ) as _i5.FederatedAuthentication));
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
    final payload = (object as ClientVpnAuthentication);
    final result = <Object?>[
      const _i6.XmlElementName(
        'ClientVpnAuthenticationResponse',
        _i6.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.type != null) {
      result
        ..add(const _i6.XmlElementName('Type'))
        ..add(serializers.serialize(
          payload.type!,
          specifiedType:
              const FullType.nullable(_i2.ClientVpnAuthenticationType),
        ));
    }
    if (payload.activeDirectory != null) {
      result
        ..add(const _i6.XmlElementName('ActiveDirectory'))
        ..add(serializers.serialize(
          payload.activeDirectory!,
          specifiedType: const FullType(_i3.DirectoryServiceAuthentication),
        ));
    }
    if (payload.mutualAuthentication != null) {
      result
        ..add(const _i6.XmlElementName('MutualAuthentication'))
        ..add(serializers.serialize(
          payload.mutualAuthentication!,
          specifiedType: const FullType(_i4.CertificateAuthentication),
        ));
    }
    if (payload.federatedAuthentication != null) {
      result
        ..add(const _i6.XmlElementName('FederatedAuthentication'))
        ..add(serializers.serialize(
          payload.federatedAuthentication!,
          specifiedType: const FullType(_i5.FederatedAuthentication),
        ));
    }
    return result;
  }
}
