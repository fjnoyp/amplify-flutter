// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.launch_template_and_overrides_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_launch_template_overrides.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_launch_template_specification.dart'
    as _i2;

part 'launch_template_and_overrides_response.g.dart';

/// Describes a launch template and overrides.
abstract class LaunchTemplateAndOverridesResponse
    with
        _i1.AWSEquatable<LaunchTemplateAndOverridesResponse>
    implements
        Built<LaunchTemplateAndOverridesResponse,
            LaunchTemplateAndOverridesResponseBuilder> {
  /// Describes a launch template and overrides.
  factory LaunchTemplateAndOverridesResponse({
    _i2.FleetLaunchTemplateSpecification? launchTemplateSpecification,
    _i3.FleetLaunchTemplateOverrides? overrides,
  }) {
    return _$LaunchTemplateAndOverridesResponse._(
      launchTemplateSpecification: launchTemplateSpecification,
      overrides: overrides,
    );
  }

  /// Describes a launch template and overrides.
  factory LaunchTemplateAndOverridesResponse.build(
          [void Function(LaunchTemplateAndOverridesResponseBuilder) updates]) =
      _$LaunchTemplateAndOverridesResponse;

  const LaunchTemplateAndOverridesResponse._();

  static const List<_i4.SmithySerializer> serializers = [
    LaunchTemplateAndOverridesResponseEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LaunchTemplateAndOverridesResponseBuilder b) {}

  /// The launch template.
  _i2.FleetLaunchTemplateSpecification? get launchTemplateSpecification;

  /// Any parameters that you specify override the same parameters in the launch template.
  _i3.FleetLaunchTemplateOverrides? get overrides;
  @override
  List<Object?> get props => [
        launchTemplateSpecification,
        overrides,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('LaunchTemplateAndOverridesResponse');
    helper.add(
      'launchTemplateSpecification',
      launchTemplateSpecification,
    );
    helper.add(
      'overrides',
      overrides,
    );
    return helper.toString();
  }
}

class LaunchTemplateAndOverridesResponseEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<LaunchTemplateAndOverridesResponse> {
  const LaunchTemplateAndOverridesResponseEc2QuerySerializer()
      : super('LaunchTemplateAndOverridesResponse');

  @override
  Iterable<Type> get types => const [
        LaunchTemplateAndOverridesResponse,
        _$LaunchTemplateAndOverridesResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplateAndOverridesResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LaunchTemplateAndOverridesResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'launchTemplateSpecification':
          if (value != null) {
            result.launchTemplateSpecification.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i2.FleetLaunchTemplateSpecification),
            ) as _i2.FleetLaunchTemplateSpecification));
          }
          break;
        case 'overrides':
          if (value != null) {
            result.overrides.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.FleetLaunchTemplateOverrides),
            ) as _i3.FleetLaunchTemplateOverrides));
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
    final payload = (object as LaunchTemplateAndOverridesResponse);
    final result = <Object?>[
      const _i4.XmlElementName(
        'LaunchTemplateAndOverridesResponseResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.launchTemplateSpecification != null) {
      result
        ..add(const _i4.XmlElementName('LaunchTemplateSpecification'))
        ..add(serializers.serialize(
          payload.launchTemplateSpecification!,
          specifiedType: const FullType(_i2.FleetLaunchTemplateSpecification),
        ));
    }
    if (payload.overrides != null) {
      result
        ..add(const _i4.XmlElementName('Overrides'))
        ..add(serializers.serialize(
          payload.overrides!,
          specifiedType: const FullType(_i3.FleetLaunchTemplateOverrides),
        ));
    }
    return result;
  }
}
