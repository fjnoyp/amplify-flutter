// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.fleet_launch_template_specification; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'fleet_launch_template_specification.g.dart';

/// The Amazon EC2 launch template that can be used by a Spot Fleet to configure Amazon EC2 instances. You must specify either the ID or name of the launch template in the request, but not both.
///
/// For information about launch templates, see [Launch an instance from a launch template](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html) in the _Amazon EC2 User Guide for Linux Instances_.
abstract class FleetLaunchTemplateSpecification
    with
        _i1.AWSEquatable<FleetLaunchTemplateSpecification>
    implements
        Built<FleetLaunchTemplateSpecification,
            FleetLaunchTemplateSpecificationBuilder> {
  /// The Amazon EC2 launch template that can be used by a Spot Fleet to configure Amazon EC2 instances. You must specify either the ID or name of the launch template in the request, but not both.
  ///
  /// For information about launch templates, see [Launch an instance from a launch template](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html) in the _Amazon EC2 User Guide for Linux Instances_.
  factory FleetLaunchTemplateSpecification({
    String? launchTemplateId,
    String? launchTemplateName,
    String? version,
  }) {
    return _$FleetLaunchTemplateSpecification._(
      launchTemplateId: launchTemplateId,
      launchTemplateName: launchTemplateName,
      version: version,
    );
  }

  /// The Amazon EC2 launch template that can be used by a Spot Fleet to configure Amazon EC2 instances. You must specify either the ID or name of the launch template in the request, but not both.
  ///
  /// For information about launch templates, see [Launch an instance from a launch template](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html) in the _Amazon EC2 User Guide for Linux Instances_.
  factory FleetLaunchTemplateSpecification.build(
          [void Function(FleetLaunchTemplateSpecificationBuilder) updates]) =
      _$FleetLaunchTemplateSpecification;

  const FleetLaunchTemplateSpecification._();

  static const List<_i2.SmithySerializer> serializers = [
    FleetLaunchTemplateSpecificationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(FleetLaunchTemplateSpecificationBuilder b) {}

  /// The ID of the launch template.
  ///
  /// You must specify the `LaunchTemplateId` or the `LaunchTemplateName`, but not both.
  String? get launchTemplateId;

  /// The name of the launch template.
  ///
  /// You must specify the `LaunchTemplateName` or the `LaunchTemplateId`, but not both.
  String? get launchTemplateName;

  /// The launch template version number, `$Latest`, or `$Default`. You must specify a value, otherwise the request fails.
  ///
  /// If the value is `$Latest`, Amazon EC2 uses the latest version of the launch template.
  ///
  /// If the value is `$Default`, Amazon EC2 uses the default version of the launch template.
  String? get version;
  @override
  List<Object?> get props => [
        launchTemplateId,
        launchTemplateName,
        version,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('FleetLaunchTemplateSpecification');
    helper.add(
      'launchTemplateId',
      launchTemplateId,
    );
    helper.add(
      'launchTemplateName',
      launchTemplateName,
    );
    helper.add(
      'version',
      version,
    );
    return helper.toString();
  }
}

class FleetLaunchTemplateSpecificationEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<FleetLaunchTemplateSpecification> {
  const FleetLaunchTemplateSpecificationEc2QuerySerializer()
      : super('FleetLaunchTemplateSpecification');

  @override
  Iterable<Type> get types => const [
        FleetLaunchTemplateSpecification,
        _$FleetLaunchTemplateSpecification,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  FleetLaunchTemplateSpecification deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FleetLaunchTemplateSpecificationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'launchTemplateId':
          if (value != null) {
            result.launchTemplateId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'launchTemplateName':
          if (value != null) {
            result.launchTemplateName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'version':
          if (value != null) {
            result.version = (serializers.deserialize(
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
    final payload = (object as FleetLaunchTemplateSpecification);
    final result = <Object?>[
      const _i2.XmlElementName(
        'FleetLaunchTemplateSpecificationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.launchTemplateId != null) {
      result
        ..add(const _i2.XmlElementName('LaunchTemplateId'))
        ..add(serializers.serialize(
          payload.launchTemplateId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.launchTemplateName != null) {
      result
        ..add(const _i2.XmlElementName('LaunchTemplateName'))
        ..add(serializers.serialize(
          payload.launchTemplateName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.version != null) {
      result
        ..add(const _i2.XmlElementName('Version'))
        ..add(serializers.serialize(
          payload.version!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
