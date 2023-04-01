// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library rest_xml_v2.s3.model.environment_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_xml_v2/src/s3/model/retry_mode.dart' as _i2;
import 'package:smithy/smithy.dart' as _i3;

part 'environment_config.g.dart';

/// Config settings that can be set as environment variables.
abstract class EnvironmentConfig
    with _i1.AWSEquatable<EnvironmentConfig>
    implements Built<EnvironmentConfig, EnvironmentConfigBuilder> {
  /// Config settings that can be set as environment variables.
  factory EnvironmentConfig({
    String? awsAccessKeyId,
    String? awsSecretAccessKey,
    String? awsDefaultRegion,
    _i2.RetryMode? awsRetryMode,
    String? awsSessionToken,
    String? awsProfile,
  }) {
    return _$EnvironmentConfig._(
      awsAccessKeyId: awsAccessKeyId,
      awsSecretAccessKey: awsSecretAccessKey,
      awsDefaultRegion: awsDefaultRegion,
      awsRetryMode: awsRetryMode,
      awsSessionToken: awsSessionToken,
      awsProfile: awsProfile,
    );
  }

  /// Config settings that can be set as environment variables.
  factory EnvironmentConfig.build(
      [void Function(EnvironmentConfigBuilder) updates]) = _$EnvironmentConfig;

  const EnvironmentConfig._();

  static const List<_i3.SmithySerializer> serializers = [
    EnvironmentConfigRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(EnvironmentConfigBuilder b) {}
  String? get awsAccessKeyId;
  String? get awsSecretAccessKey;
  String? get awsDefaultRegion;

  /// Controls the strategy used for retries.
  _i2.RetryMode? get awsRetryMode;
  String? get awsSessionToken;
  String? get awsProfile;
  @override
  List<Object?> get props => [
        awsAccessKeyId,
        awsSecretAccessKey,
        awsDefaultRegion,
        awsRetryMode,
        awsSessionToken,
        awsProfile,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('EnvironmentConfig');
    helper.add(
      'awsAccessKeyId',
      awsAccessKeyId,
    );
    helper.add(
      'awsSecretAccessKey',
      awsSecretAccessKey,
    );
    helper.add(
      'awsDefaultRegion',
      awsDefaultRegion,
    );
    helper.add(
      'awsRetryMode',
      awsRetryMode,
    );
    helper.add(
      'awsSessionToken',
      awsSessionToken,
    );
    helper.add(
      'awsProfile',
      awsProfile,
    );
    return helper.toString();
  }
}

class EnvironmentConfigRestXmlSerializer
    extends _i3.StructuredSmithySerializer<EnvironmentConfig> {
  const EnvironmentConfigRestXmlSerializer() : super('EnvironmentConfig');

  @override
  Iterable<Type> get types => const [
        EnvironmentConfig,
        _$EnvironmentConfig,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  EnvironmentConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EnvironmentConfigBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'AWS_ACCESS_KEY_ID':
          if (value != null) {
            result.awsAccessKeyId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'AWS_DEFAULT_REGION':
          if (value != null) {
            result.awsDefaultRegion = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'AWS_PROFILE':
          if (value != null) {
            result.awsProfile = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'AWS_RETRY_MODE':
          if (value != null) {
            result.awsRetryMode = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.RetryMode),
            ) as _i2.RetryMode);
          }
          break;
        case 'AWS_SECRET_ACCESS_KEY':
          if (value != null) {
            result.awsSecretAccessKey = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'AWS_SESSION_TOKEN':
          if (value != null) {
            result.awsSessionToken = (serializers.deserialize(
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
    final payload = (object as EnvironmentConfig);
    final result = <Object?>[
      const _i3.XmlElementName(
        'EnvironmentConfig',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.awsAccessKeyId != null) {
      result
        ..add(const _i3.XmlElementName('AWS_ACCESS_KEY_ID'))
        ..add(serializers.serialize(
          payload.awsAccessKeyId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.awsDefaultRegion != null) {
      result
        ..add(const _i3.XmlElementName('AWS_DEFAULT_REGION'))
        ..add(serializers.serialize(
          payload.awsDefaultRegion!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.awsProfile != null) {
      result
        ..add(const _i3.XmlElementName('AWS_PROFILE'))
        ..add(serializers.serialize(
          payload.awsProfile!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.awsRetryMode != null) {
      result
        ..add(const _i3.XmlElementName('AWS_RETRY_MODE'))
        ..add(serializers.serialize(
          payload.awsRetryMode!,
          specifiedType: const FullType.nullable(_i2.RetryMode),
        ));
    }
    if (payload.awsSecretAccessKey != null) {
      result
        ..add(const _i3.XmlElementName('AWS_SECRET_ACCESS_KEY'))
        ..add(serializers.serialize(
          payload.awsSecretAccessKey!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.awsSessionToken != null) {
      result
        ..add(const _i3.XmlElementName('AWS_SESSION_TOKEN'))
        ..add(serializers.serialize(
          payload.awsSessionToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
