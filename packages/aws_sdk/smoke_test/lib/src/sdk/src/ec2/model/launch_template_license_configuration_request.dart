// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.launch_template_license_configuration_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'launch_template_license_configuration_request.g.dart';

/// Describes a license configuration.
abstract class LaunchTemplateLicenseConfigurationRequest
    with
        _i1.AWSEquatable<LaunchTemplateLicenseConfigurationRequest>
    implements
        Built<LaunchTemplateLicenseConfigurationRequest,
            LaunchTemplateLicenseConfigurationRequestBuilder> {
  /// Describes a license configuration.
  factory LaunchTemplateLicenseConfigurationRequest(
      {String? licenseConfigurationArn}) {
    return _$LaunchTemplateLicenseConfigurationRequest._(
        licenseConfigurationArn: licenseConfigurationArn);
  }

  /// Describes a license configuration.
  factory LaunchTemplateLicenseConfigurationRequest.build(
      [void Function(LaunchTemplateLicenseConfigurationRequestBuilder)
          updates]) = _$LaunchTemplateLicenseConfigurationRequest;

  const LaunchTemplateLicenseConfigurationRequest._();

  static const List<_i2.SmithySerializer> serializers = [
    LaunchTemplateLicenseConfigurationRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LaunchTemplateLicenseConfigurationRequestBuilder b) {}

  /// The Amazon Resource Name (ARN) of the license configuration.
  String? get licenseConfigurationArn;
  @override
  List<Object?> get props => [licenseConfigurationArn];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'LaunchTemplateLicenseConfigurationRequest');
    helper.add(
      'licenseConfigurationArn',
      licenseConfigurationArn,
    );
    return helper.toString();
  }
}

class LaunchTemplateLicenseConfigurationRequestEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<LaunchTemplateLicenseConfigurationRequest> {
  const LaunchTemplateLicenseConfigurationRequestEc2QuerySerializer()
      : super('LaunchTemplateLicenseConfigurationRequest');

  @override
  Iterable<Type> get types => const [
        LaunchTemplateLicenseConfigurationRequest,
        _$LaunchTemplateLicenseConfigurationRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplateLicenseConfigurationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchTemplateLicenseConfigurationRequestBuilder();
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
    final payload = (object as LaunchTemplateLicenseConfigurationRequest);
    final result = <Object?>[
      const _i2.XmlElementName(
        'LaunchTemplateLicenseConfigurationRequestResponse',
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
