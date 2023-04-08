// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library ec2_query_v2.ec2_protocol.model.scoped_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/client_config.dart' as _i4;
import 'package:ec2_query_v2/src/ec2_protocol/model/environment_config.dart'
    as _i2;
import 'package:ec2_query_v2/src/ec2_protocol/model/file_config_settings.dart'
    as _i3;
import 'package:ec2_query_v2/src/ec2_protocol/model/operation_config.dart'
    as _i5;
import 'package:smithy/smithy.dart' as _i7;

part 'scoped_config.g.dart';

/// Config settings that are scoped to different sources, such as environment variables or the AWS config file.
abstract class ScopedConfig
    with _i1.AWSEquatable<ScopedConfig>
    implements Built<ScopedConfig, ScopedConfigBuilder> {
  /// Config settings that are scoped to different sources, such as environment variables or the AWS config file.
  factory ScopedConfig({
    _i2.EnvironmentConfig? environment,
    Map<String, _i3.FileConfigSettings>? configFile,
    Map<String, _i3.FileConfigSettings>? credentialsFile,
    _i4.ClientConfig? client,
    _i5.OperationConfig? operation,
  }) {
    return _$ScopedConfig._(
      environment: environment,
      configFile: configFile == null ? null : _i6.BuiltMap(configFile),
      credentialsFile:
          credentialsFile == null ? null : _i6.BuiltMap(credentialsFile),
      client: client,
      operation: operation,
    );
  }

  /// Config settings that are scoped to different sources, such as environment variables or the AWS config file.
  factory ScopedConfig.build([void Function(ScopedConfigBuilder) updates]) =
      _$ScopedConfig;

  const ScopedConfig._();

  static const List<_i7.SmithySerializer> serializers = [
    ScopedConfigEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ScopedConfigBuilder b) {}

  /// Config settings that can be set as environment variables.
  _i2.EnvironmentConfig? get environment;

  /// A shape representing a parsed config file, which is a map of profile names to configuration sets.
  _i6.BuiltMap<String, _i3.FileConfigSettings>? get configFile;

  /// A shape representing a parsed config file, which is a map of profile names to configuration sets.
  _i6.BuiltMap<String, _i3.FileConfigSettings>? get credentialsFile;

  /// Configuration that is set on the constructed client.
  _i4.ClientConfig? get client;

  /// Configuration that is set for the scope of a single operation.
  _i5.OperationConfig? get operation;
  @override
  List<Object?> get props => [
        environment,
        configFile,
        credentialsFile,
        client,
        operation,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ScopedConfig');
    helper.add(
      'environment',
      environment,
    );
    helper.add(
      'configFile',
      configFile,
    );
    helper.add(
      'credentialsFile',
      credentialsFile,
    );
    helper.add(
      'client',
      client,
    );
    helper.add(
      'operation',
      operation,
    );
    return helper.toString();
  }
}

class ScopedConfigEc2QuerySerializer
    extends _i7.StructuredSmithySerializer<ScopedConfig> {
  const ScopedConfigEc2QuerySerializer() : super('ScopedConfig');

  @override
  Iterable<Type> get types => const [
        ScopedConfig,
        _$ScopedConfig,
      ];
  @override
  Iterable<_i7.ShapeId> get supportedProtocols => const [
        _i7.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ScopedConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ScopedConfigBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'environment':
          if (value != null) {
            result.environment.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.EnvironmentConfig),
            ) as _i2.EnvironmentConfig));
          }
          break;
        case 'configFile':
          if (value != null) {
            result.configFile
                .replace(const _i7.XmlBuiltMapSerializer().deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i6.BuiltMap,
                [
                  FullType(String),
                  FullType(_i3.FileConfigSettings),
                ],
              ),
            ));
          }
          break;
        case 'credentialsFile':
          if (value != null) {
            result.credentialsFile
                .replace(const _i7.XmlBuiltMapSerializer().deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i6.BuiltMap,
                [
                  FullType(String),
                  FullType(_i3.FileConfigSettings),
                ],
              ),
            ));
          }
          break;
        case 'client':
          if (value != null) {
            result.client.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.ClientConfig),
            ) as _i4.ClientConfig));
          }
          break;
        case 'operation':
          if (value != null) {
            result.operation.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.OperationConfig),
            ) as _i5.OperationConfig));
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
    final payload = (object as ScopedConfig);
    final result = <Object?>[
      const _i7.XmlElementName(
        'ScopedConfigResponse',
        _i7.XmlNamespace('https://example.com/'),
      )
    ];
    if (payload.environment != null) {
      result
        ..add(const _i7.XmlElementName('Environment'))
        ..add(serializers.serialize(
          payload.environment!,
          specifiedType: const FullType(_i2.EnvironmentConfig),
        ));
    }
    if (payload.configFile != null) {
      result
        ..add(const _i7.XmlElementName('ConfigFile'))
        ..add(const _i7.XmlBuiltMapSerializer().serialize(
          serializers,
          payload.configFile!,
          specifiedType: const FullType.nullable(
            _i6.BuiltMap,
            [
              FullType(String),
              FullType(_i3.FileConfigSettings),
            ],
          ),
        ));
    }
    if (payload.credentialsFile != null) {
      result
        ..add(const _i7.XmlElementName('CredentialsFile'))
        ..add(const _i7.XmlBuiltMapSerializer().serialize(
          serializers,
          payload.credentialsFile!,
          specifiedType: const FullType.nullable(
            _i6.BuiltMap,
            [
              FullType(String),
              FullType(_i3.FileConfigSettings),
            ],
          ),
        ));
    }
    if (payload.client != null) {
      result
        ..add(const _i7.XmlElementName('Client'))
        ..add(serializers.serialize(
          payload.client!,
          specifiedType: const FullType(_i4.ClientConfig),
        ));
    }
    if (payload.operation != null) {
      result
        ..add(const _i7.XmlElementName('Operation'))
        ..add(serializers.serialize(
          payload.operation!,
          specifiedType: const FullType(_i5.OperationConfig),
        ));
    }
    return result;
  }
}
