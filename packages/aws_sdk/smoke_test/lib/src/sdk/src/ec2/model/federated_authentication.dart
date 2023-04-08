// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.federated_authentication; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'federated_authentication.g.dart';

/// Describes the IAM SAML identity providers used for federated authentication.
abstract class FederatedAuthentication
    with _i1.AWSEquatable<FederatedAuthentication>
    implements Built<FederatedAuthentication, FederatedAuthenticationBuilder> {
  /// Describes the IAM SAML identity providers used for federated authentication.
  factory FederatedAuthentication({
    String? samlProviderArn,
    String? selfServiceSamlProviderArn,
  }) {
    return _$FederatedAuthentication._(
      samlProviderArn: samlProviderArn,
      selfServiceSamlProviderArn: selfServiceSamlProviderArn,
    );
  }

  /// Describes the IAM SAML identity providers used for federated authentication.
  factory FederatedAuthentication.build(
          [void Function(FederatedAuthenticationBuilder) updates]) =
      _$FederatedAuthentication;

  const FederatedAuthentication._();

  static const List<_i2.SmithySerializer> serializers = [
    FederatedAuthenticationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(FederatedAuthenticationBuilder b) {}

  /// The Amazon Resource Name (ARN) of the IAM SAML identity provider.
  String? get samlProviderArn;

  /// The Amazon Resource Name (ARN) of the IAM SAML identity provider for the self-service portal.
  String? get selfServiceSamlProviderArn;
  @override
  List<Object?> get props => [
        samlProviderArn,
        selfServiceSamlProviderArn,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('FederatedAuthentication');
    helper.add(
      'samlProviderArn',
      samlProviderArn,
    );
    helper.add(
      'selfServiceSamlProviderArn',
      selfServiceSamlProviderArn,
    );
    return helper.toString();
  }
}

class FederatedAuthenticationEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<FederatedAuthentication> {
  const FederatedAuthenticationEc2QuerySerializer()
      : super('FederatedAuthentication');

  @override
  Iterable<Type> get types => const [
        FederatedAuthentication,
        _$FederatedAuthentication,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  FederatedAuthentication deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FederatedAuthenticationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'samlProviderArn':
          if (value != null) {
            result.samlProviderArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'selfServiceSamlProviderArn':
          if (value != null) {
            result.selfServiceSamlProviderArn = (serializers.deserialize(
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
    final payload = (object as FederatedAuthentication);
    final result = <Object?>[
      const _i2.XmlElementName(
        'FederatedAuthenticationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.samlProviderArn != null) {
      result
        ..add(const _i2.XmlElementName('SamlProviderArn'))
        ..add(serializers.serialize(
          payload.samlProviderArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.selfServiceSamlProviderArn != null) {
      result
        ..add(const _i2.XmlElementName('SelfServiceSamlProviderArn'))
        ..add(serializers.serialize(
          payload.selfServiceSamlProviderArn!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
