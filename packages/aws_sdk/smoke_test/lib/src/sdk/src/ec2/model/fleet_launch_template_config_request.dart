// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.fleet_launch_template_config_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_launch_template_overrides_request.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_launch_template_specification_request.dart'
    as _i2;

part 'fleet_launch_template_config_request.g.dart';

/// Describes a launch template and overrides.
abstract class FleetLaunchTemplateConfigRequest
    with
        _i1.AWSEquatable<FleetLaunchTemplateConfigRequest>
    implements
        Built<FleetLaunchTemplateConfigRequest,
            FleetLaunchTemplateConfigRequestBuilder> {
  /// Describes a launch template and overrides.
  factory FleetLaunchTemplateConfigRequest({
    _i2.FleetLaunchTemplateSpecificationRequest? launchTemplateSpecification,
    List<_i3.FleetLaunchTemplateOverridesRequest>? overrides,
  }) {
    return _$FleetLaunchTemplateConfigRequest._(
      launchTemplateSpecification: launchTemplateSpecification,
      overrides: overrides == null ? null : _i4.BuiltList(overrides),
    );
  }

  /// Describes a launch template and overrides.
  factory FleetLaunchTemplateConfigRequest.build(
          [void Function(FleetLaunchTemplateConfigRequestBuilder) updates]) =
      _$FleetLaunchTemplateConfigRequest;

  const FleetLaunchTemplateConfigRequest._();

  static const List<_i5.SmithySerializer> serializers = [
    FleetLaunchTemplateConfigRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(FleetLaunchTemplateConfigRequestBuilder b) {}

  /// The launch template to use. You must specify either the launch template ID or launch template name in the request.
  _i2.FleetLaunchTemplateSpecificationRequest? get launchTemplateSpecification;

  /// Any parameters that you specify override the same parameters in the launch template.
  ///
  /// For fleets of type `request` and `maintain`, a maximum of 300 items is allowed across all launch templates.
  _i4.BuiltList<_i3.FleetLaunchTemplateOverridesRequest>? get overrides;
  @override
  List<Object?> get props => [
        launchTemplateSpecification,
        overrides,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('FleetLaunchTemplateConfigRequest');
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

class FleetLaunchTemplateConfigRequestEc2QuerySerializer
    extends _i5.StructuredSmithySerializer<FleetLaunchTemplateConfigRequest> {
  const FleetLaunchTemplateConfigRequestEc2QuerySerializer()
      : super('FleetLaunchTemplateConfigRequest');

  @override
  Iterable<Type> get types => const [
        FleetLaunchTemplateConfigRequest,
        _$FleetLaunchTemplateConfigRequest,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  FleetLaunchTemplateConfigRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FleetLaunchTemplateConfigRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'LaunchTemplateSpecification':
          if (value != null) {
            result.launchTemplateSpecification.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i2.FleetLaunchTemplateSpecificationRequest),
            ) as _i2.FleetLaunchTemplateSpecificationRequest));
          }
          break;
        case 'Overrides':
          if (value != null) {
            result.overrides.replace((const _i5.XmlBuiltListSerializer(
              memberName: 'item',
              indexer: _i5.XmlIndexer.ec2QueryList,
            ).deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.FleetLaunchTemplateOverridesRequest)],
              ),
            ) as _i4.BuiltList<_i3.FleetLaunchTemplateOverridesRequest>));
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
    final payload = (object as FleetLaunchTemplateConfigRequest);
    final result = <Object?>[
      const _i5.XmlElementName(
        'FleetLaunchTemplateConfigRequestResponse',
        _i5.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.launchTemplateSpecification != null) {
      result
        ..add(const _i5.XmlElementName('LaunchTemplateSpecification'))
        ..add(serializers.serialize(
          payload.launchTemplateSpecification!,
          specifiedType:
              const FullType(_i2.FleetLaunchTemplateSpecificationRequest),
        ));
    }
    if (payload.overrides != null) {
      result
        ..add(const _i5.XmlElementName('Overrides'))
        ..add(const _i5.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i5.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          payload.overrides!,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.FleetLaunchTemplateOverridesRequest)],
          ),
        ));
    }
    return result;
  }
}
