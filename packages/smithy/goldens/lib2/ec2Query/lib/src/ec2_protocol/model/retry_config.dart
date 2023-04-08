// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library ec2_query_v2.ec2_protocol.model.retry_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ec2_query_v2/src/ec2_protocol/model/retry_mode.dart' as _i2;
import 'package:smithy/smithy.dart' as _i3;

part 'retry_config.g.dart';

/// Configuration specific to retries.
abstract class RetryConfig
    with _i1.AWSEquatable<RetryConfig>
    implements Built<RetryConfig, RetryConfigBuilder> {
  /// Configuration specific to retries.
  factory RetryConfig({
    _i2.RetryMode? mode,
    int? maxAttempts,
  }) {
    return _$RetryConfig._(
      mode: mode,
      maxAttempts: maxAttempts,
    );
  }

  /// Configuration specific to retries.
  factory RetryConfig.build([void Function(RetryConfigBuilder) updates]) =
      _$RetryConfig;

  const RetryConfig._();

  static const List<_i3.SmithySerializer> serializers = [
    RetryConfigEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RetryConfigBuilder b) {}

  /// Controls the strategy used for retries.
  _i2.RetryMode? get mode;
  int? get maxAttempts;
  @override
  List<Object?> get props => [
        mode,
        maxAttempts,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RetryConfig');
    helper.add(
      'mode',
      mode,
    );
    helper.add(
      'maxAttempts',
      maxAttempts,
    );
    return helper.toString();
  }
}

class RetryConfigEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<RetryConfig> {
  const RetryConfigEc2QuerySerializer() : super('RetryConfig');

  @override
  Iterable<Type> get types => const [
        RetryConfig,
        _$RetryConfig,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RetryConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RetryConfigBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'mode':
          if (value != null) {
            result.mode = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.RetryMode),
            ) as _i2.RetryMode);
          }
          break;
        case 'max_attempts':
          if (value != null) {
            result.maxAttempts = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
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
    final payload = (object as RetryConfig);
    final result = <Object?>[
      const _i3.XmlElementName(
        'RetryConfigResponse',
        _i3.XmlNamespace('https://example.com/'),
      )
    ];
    if (payload.mode != null) {
      result
        ..add(const _i3.XmlElementName('Mode'))
        ..add(serializers.serialize(
          payload.mode!,
          specifiedType: const FullType.nullable(_i2.RetryMode),
        ));
    }
    if (payload.maxAttempts != null) {
      result
        ..add(const _i3.XmlElementName('Max_attempts'))
        ..add(serializers.serialize(
          payload.maxAttempts!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    return result;
  }
}
