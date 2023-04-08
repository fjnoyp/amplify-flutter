// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.launch_template_license_configuration; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'launch_template_license_configuration.g.dart';

/// Describes a license configuration.
abstract class LaunchTemplateLicenseConfiguration
    with
        _i1.AWSEquatable<LaunchTemplateLicenseConfiguration>
    implements
        Built<LaunchTemplateLicenseConfiguration,
            LaunchTemplateLicenseConfigurationBuilder> {
  /// Describes a license configuration.
  factory LaunchTemplateLicenseConfiguration(
      {String? licenseConfigurationArn}) {
    return _$LaunchTemplateLicenseConfiguration._(
        licenseConfigurationArn: licenseConfigurationArn);
  }

  /// Describes a license configuration.
  factory LaunchTemplateLicenseConfiguration.build(
          [void Function(LaunchTemplateLicenseConfigurationBuilder) updates]) =
      _$LaunchTemplateLicenseConfiguration;

  const LaunchTemplateLicenseConfiguration._();

  static const List<_i2.SmithySerializer> serializers = [
    LaunchTemplateLicenseConfigurationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LaunchTemplateLicenseConfigurationBuilder b) {}

  /// The Amazon Resource Name (ARN) of the license configuration.
  String? get licenseConfigurationArn;
  @override
  List<Object?> get props => [licenseConfigurationArn];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('LaunchTemplateLicenseConfiguration');
    helper.add(
      'licenseConfigurationArn',
      licenseConfigurationArn,
    );
    return helper.toString();
  }
}

class LaunchTemplateLicenseConfigurationEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<LaunchTemplateLicenseConfiguration> {
  const LaunchTemplateLicenseConfigurationEc2QuerySerializer()
      : super('LaunchTemplateLicenseConfiguration');

  @override
  Iterable<Type> get types => const [
        LaunchTemplateLicenseConfiguration,
        _$LaunchTemplateLicenseConfiguration,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplateLicenseConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchTemplateLicenseConfigurationBuilder();
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
    final payload = (object as LaunchTemplateLicenseConfiguration);
    final result = <Object?>[
      const _i2.XmlElementName(
        'LaunchTemplateLicenseConfigurationResponse',
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
