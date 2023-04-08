// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_launch_template_version_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_version.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/validation_warning.dart'
    as _i3;

part 'create_launch_template_version_result.g.dart';

abstract class CreateLaunchTemplateVersionResult
    with
        _i1.AWSEquatable<CreateLaunchTemplateVersionResult>
    implements
        Built<CreateLaunchTemplateVersionResult,
            CreateLaunchTemplateVersionResultBuilder> {
  factory CreateLaunchTemplateVersionResult({
    _i2.LaunchTemplateVersion? launchTemplateVersion,
    _i3.ValidationWarning? warning,
  }) {
    return _$CreateLaunchTemplateVersionResult._(
      launchTemplateVersion: launchTemplateVersion,
      warning: warning,
    );
  }

  factory CreateLaunchTemplateVersionResult.build(
          [void Function(CreateLaunchTemplateVersionResultBuilder) updates]) =
      _$CreateLaunchTemplateVersionResult;

  const CreateLaunchTemplateVersionResult._();

  /// Constructs a [CreateLaunchTemplateVersionResult] from a [payload] and [response].
  factory CreateLaunchTemplateVersionResult.fromResponse(
    CreateLaunchTemplateVersionResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    CreateLaunchTemplateVersionResultEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateLaunchTemplateVersionResultBuilder b) {}

  /// Information about the launch template version.
  _i2.LaunchTemplateVersion? get launchTemplateVersion;

  /// If the new version of the launch template contains parameters or parameter combinations that are not valid, an error code and an error message are returned for each issue that's found.
  _i3.ValidationWarning? get warning;
  @override
  List<Object?> get props => [
        launchTemplateVersion,
        warning,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateLaunchTemplateVersionResult');
    helper.add(
      'launchTemplateVersion',
      launchTemplateVersion,
    );
    helper.add(
      'warning',
      warning,
    );
    return helper.toString();
  }
}

class CreateLaunchTemplateVersionResultEc2QuerySerializer
    extends _i4.StructuredSmithySerializer<CreateLaunchTemplateVersionResult> {
  const CreateLaunchTemplateVersionResultEc2QuerySerializer()
      : super('CreateLaunchTemplateVersionResult');

  @override
  Iterable<Type> get types => const [
        CreateLaunchTemplateVersionResult,
        _$CreateLaunchTemplateVersionResult,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateLaunchTemplateVersionResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateLaunchTemplateVersionResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'launchTemplateVersion':
          if (value != null) {
            result.launchTemplateVersion.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.LaunchTemplateVersion),
            ) as _i2.LaunchTemplateVersion));
          }
          break;
        case 'warning':
          if (value != null) {
            result.warning.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.ValidationWarning),
            ) as _i3.ValidationWarning));
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
    final payload = (object as CreateLaunchTemplateVersionResult);
    final result = <Object?>[
      const _i4.XmlElementName(
        'CreateLaunchTemplateVersionResultResponse',
        _i4.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    if (payload.launchTemplateVersion != null) {
      result
        ..add(const _i4.XmlElementName('LaunchTemplateVersion'))
        ..add(serializers.serialize(
          payload.launchTemplateVersion!,
          specifiedType: const FullType(_i2.LaunchTemplateVersion),
        ));
    }
    if (payload.warning != null) {
      result
        ..add(const _i4.XmlElementName('Warning'))
        ..add(serializers.serialize(
          payload.warning!,
          specifiedType: const FullType(_i3.ValidationWarning),
        ));
    }
    return result;
  }
}
