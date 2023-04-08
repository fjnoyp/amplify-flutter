// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.import_image_license_configuration_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'import_image_license_configuration_request.g.dart';

/// The request information of license configurations.
abstract class ImportImageLicenseConfigurationRequest
    with
        _i1.AWSEquatable<ImportImageLicenseConfigurationRequest>
    implements
        Built<ImportImageLicenseConfigurationRequest,
            ImportImageLicenseConfigurationRequestBuilder> {
  /// The request information of license configurations.
  factory ImportImageLicenseConfigurationRequest(
      {String? licenseConfigurationArn}) {
    return _$ImportImageLicenseConfigurationRequest._(
        licenseConfigurationArn: licenseConfigurationArn);
  }

  /// The request information of license configurations.
  factory ImportImageLicenseConfigurationRequest.build(
      [void Function(ImportImageLicenseConfigurationRequestBuilder)
          updates]) = _$ImportImageLicenseConfigurationRequest;

  const ImportImageLicenseConfigurationRequest._();

  static const List<_i2.SmithySerializer> serializers = [
    ImportImageLicenseConfigurationRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ImportImageLicenseConfigurationRequestBuilder b) {}

  /// The ARN of a license configuration.
  String? get licenseConfigurationArn;
  @override
  List<Object?> get props => [licenseConfigurationArn];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ImportImageLicenseConfigurationRequest');
    helper.add(
      'licenseConfigurationArn',
      licenseConfigurationArn,
    );
    return helper.toString();
  }
}

class ImportImageLicenseConfigurationRequestEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<ImportImageLicenseConfigurationRequest> {
  const ImportImageLicenseConfigurationRequestEc2QuerySerializer()
      : super('ImportImageLicenseConfigurationRequest');

  @override
  Iterable<Type> get types => const [
        ImportImageLicenseConfigurationRequest,
        _$ImportImageLicenseConfigurationRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ImportImageLicenseConfigurationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImportImageLicenseConfigurationRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'LicenseConfigurationArn':
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
    final payload = (object as ImportImageLicenseConfigurationRequest);
    final result = <Object?>[
      const _i2.XmlElementName(
        'ImportImageLicenseConfigurationRequestResponse',
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
