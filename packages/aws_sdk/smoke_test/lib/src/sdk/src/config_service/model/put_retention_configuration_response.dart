// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.config_service.model.put_retention_configuration_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/retention_configuration.dart'
    as _i2;

part 'put_retention_configuration_response.g.dart';

abstract class PutRetentionConfigurationResponse
    with
        _i1.AWSEquatable<PutRetentionConfigurationResponse>
    implements
        Built<PutRetentionConfigurationResponse,
            PutRetentionConfigurationResponseBuilder> {
  factory PutRetentionConfigurationResponse(
      {_i2.RetentionConfiguration? retentionConfiguration}) {
    return _$PutRetentionConfigurationResponse._(
        retentionConfiguration: retentionConfiguration);
  }

  factory PutRetentionConfigurationResponse.build(
          [void Function(PutRetentionConfigurationResponseBuilder) updates]) =
      _$PutRetentionConfigurationResponse;

  const PutRetentionConfigurationResponse._();

  /// Constructs a [PutRetentionConfigurationResponse] from a [payload] and [response].
  factory PutRetentionConfigurationResponse.fromResponse(
    PutRetentionConfigurationResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    PutRetentionConfigurationResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutRetentionConfigurationResponseBuilder b) {}

  /// Returns a retention configuration object.
  _i2.RetentionConfiguration? get retentionConfiguration;
  @override
  List<Object?> get props => [retentionConfiguration];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('PutRetentionConfigurationResponse');
    helper.add(
      'retentionConfiguration',
      retentionConfiguration,
    );
    return helper.toString();
  }
}

class PutRetentionConfigurationResponseAwsJson11Serializer
    extends _i3.StructuredSmithySerializer<PutRetentionConfigurationResponse> {
  const PutRetentionConfigurationResponseAwsJson11Serializer()
      : super('PutRetentionConfigurationResponse');

  @override
  Iterable<Type> get types => const [
        PutRetentionConfigurationResponse,
        _$PutRetentionConfigurationResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  PutRetentionConfigurationResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PutRetentionConfigurationResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'RetentionConfiguration':
          if (value != null) {
            result.retentionConfiguration.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.RetentionConfiguration),
            ) as _i2.RetentionConfiguration));
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
    final payload = (object as PutRetentionConfigurationResponse);
    final result = <Object?>[];
    if (payload.retentionConfiguration != null) {
      result
        ..add('RetentionConfiguration')
        ..add(serializers.serialize(
          payload.retentionConfiguration!,
          specifiedType: const FullType(_i2.RetentionConfiguration),
        ));
    }
    return result;
  }
}