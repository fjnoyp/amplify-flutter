// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.fast_launch_launch_template_specification_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'fast_launch_launch_template_specification_response.g.dart';

/// Identifies the launch template to use for faster launching of the Windows AMI.
abstract class FastLaunchLaunchTemplateSpecificationResponse
    with
        _i1.AWSEquatable<FastLaunchLaunchTemplateSpecificationResponse>
    implements
        Built<FastLaunchLaunchTemplateSpecificationResponse,
            FastLaunchLaunchTemplateSpecificationResponseBuilder> {
  /// Identifies the launch template to use for faster launching of the Windows AMI.
  factory FastLaunchLaunchTemplateSpecificationResponse({
    String? launchTemplateId,
    String? launchTemplateName,
    String? version,
  }) {
    return _$FastLaunchLaunchTemplateSpecificationResponse._(
      launchTemplateId: launchTemplateId,
      launchTemplateName: launchTemplateName,
      version: version,
    );
  }

  /// Identifies the launch template to use for faster launching of the Windows AMI.
  factory FastLaunchLaunchTemplateSpecificationResponse.build(
      [void Function(FastLaunchLaunchTemplateSpecificationResponseBuilder)
          updates]) = _$FastLaunchLaunchTemplateSpecificationResponse;

  const FastLaunchLaunchTemplateSpecificationResponse._();

  static const List<_i2.SmithySerializer> serializers = [
    FastLaunchLaunchTemplateSpecificationResponseEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(FastLaunchLaunchTemplateSpecificationResponseBuilder b) {}

  /// The ID of the launch template for faster launching of the associated Windows AMI.
  String? get launchTemplateId;

  /// The name of the launch template for faster launching of the associated Windows AMI.
  String? get launchTemplateName;

  /// The version of the launch template for faster launching of the associated Windows AMI.
  String? get version;
  @override
  List<Object?> get props => [
        launchTemplateId,
        launchTemplateName,
        version,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'FastLaunchLaunchTemplateSpecificationResponse');
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

class FastLaunchLaunchTemplateSpecificationResponseEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<
        FastLaunchLaunchTemplateSpecificationResponse> {
  const FastLaunchLaunchTemplateSpecificationResponseEc2QuerySerializer()
      : super('FastLaunchLaunchTemplateSpecificationResponse');

  @override
  Iterable<Type> get types => const [
        FastLaunchLaunchTemplateSpecificationResponse,
        _$FastLaunchLaunchTemplateSpecificationResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  FastLaunchLaunchTemplateSpecificationResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FastLaunchLaunchTemplateSpecificationResponseBuilder();
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
    final payload = (object as FastLaunchLaunchTemplateSpecificationResponse);
    final result = <Object?>[
      const _i2.XmlElementName(
        'FastLaunchLaunchTemplateSpecificationResponseResponse',
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
