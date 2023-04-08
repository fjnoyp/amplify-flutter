// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.import_image_license_configuration_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'import_image_license_configuration_response.g.dart';

/// The response information for license configurations.
abstract class ImportImageLicenseConfigurationResponse
    with
        _i1.AWSEquatable<ImportImageLicenseConfigurationResponse>
    implements
        Built<ImportImageLicenseConfigurationResponse,
            ImportImageLicenseConfigurationResponseBuilder> {
  /// The response information for license configurations.
  factory ImportImageLicenseConfigurationResponse(
      {String? licenseConfigurationArn}) {
    return _$ImportImageLicenseConfigurationResponse._(
        licenseConfigurationArn: licenseConfigurationArn);
  }

  /// The response information for license configurations.
  factory ImportImageLicenseConfigurationResponse.build(
      [void Function(ImportImageLicenseConfigurationResponseBuilder)
          updates]) = _$ImportImageLicenseConfigurationResponse;

  const ImportImageLicenseConfigurationResponse._();

  static const List<_i2.SmithySerializer> serializers = [
    ImportImageLicenseConfigurationResponseEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ImportImageLicenseConfigurationResponseBuilder b) {}

  /// The ARN of a license configuration.
  String? get licenseConfigurationArn;
  @override
  List<Object?> get props => [licenseConfigurationArn];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ImportImageLicenseConfigurationResponse');
    helper.add(
      'licenseConfigurationArn',
      licenseConfigurationArn,
    );
    return helper.toString();
  }
}

class ImportImageLicenseConfigurationResponseEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<ImportImageLicenseConfigurationResponse> {
  const ImportImageLicenseConfigurationResponseEc2QuerySerializer()
      : super('ImportImageLicenseConfigurationResponse');

  @override
  Iterable<Type> get types => const [
        ImportImageLicenseConfigurationResponse,
        _$ImportImageLicenseConfigurationResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ImportImageLicenseConfigurationResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImportImageLicenseConfigurationResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'licenseConfigurationArn':
          if (value != null) {
            result.licenseConfigurationArn = (serializers.deserialize(
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
    final payload = (object as ImportImageLicenseConfigurationResponse);
    final result = <Object?>[
      const _i2.XmlElementName(
        'ImportImageLicenseConfigurationResponseResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.licenseConfigurationArn != null) {
      result
        ..add(const _i2.XmlElementName('LicenseConfigurationArn'))
        ..add(serializers.serialize(
          payload.licenseConfigurationArn!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
