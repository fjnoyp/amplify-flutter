// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.create_launch_template_version_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/request_launch_template_data.dart'
    as _i3;

part 'create_launch_template_version_request.g.dart';

abstract class CreateLaunchTemplateVersionRequest
    with
        _i1.HttpInput<CreateLaunchTemplateVersionRequest>,
        _i2.AWSEquatable<CreateLaunchTemplateVersionRequest>
    implements
        Built<CreateLaunchTemplateVersionRequest,
            CreateLaunchTemplateVersionRequestBuilder> {
  factory CreateLaunchTemplateVersionRequest({
    bool? dryRun,
    String? clientToken,
    String? launchTemplateId,
    String? launchTemplateName,
    String? sourceVersion,
    String? versionDescription,
    required _i3.RequestLaunchTemplateData launchTemplateData,
  }) {
    dryRun ??= false;
    return _$CreateLaunchTemplateVersionRequest._(
      dryRun: dryRun,
      clientToken: clientToken,
      launchTemplateId: launchTemplateId,
      launchTemplateName: launchTemplateName,
      sourceVersion: sourceVersion,
      versionDescription: versionDescription,
      launchTemplateData: launchTemplateData,
    );
  }

  factory CreateLaunchTemplateVersionRequest.build(
          [void Function(CreateLaunchTemplateVersionRequestBuilder) updates]) =
      _$CreateLaunchTemplateVersionRequest;

  const CreateLaunchTemplateVersionRequest._();

  factory CreateLaunchTemplateVersionRequest.fromRequest(
    CreateLaunchTemplateVersionRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    CreateLaunchTemplateVersionRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateLaunchTemplateVersionRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// Unique, case-sensitive identifier you provide to ensure the idempotency of the request. For more information, see [Ensuring idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  ///
  /// Constraint: Maximum 128 ASCII characters.
  String? get clientToken;

  /// The ID of the launch template.
  ///
  /// You must specify either the `LaunchTemplateId` or the `LaunchTemplateName`, but not both.
  String? get launchTemplateId;

  /// The name of the launch template.
  ///
  /// You must specify the `LaunchTemplateName` or the `LaunchTemplateId`, but not both.
  String? get launchTemplateName;

  /// The version number of the launch template version on which to base the new version. The new version inherits the same launch parameters as the source version, except for parameters that you specify in `LaunchTemplateData`. Snapshots applied to the block device mapping are ignored when creating a new version unless they are explicitly included.
  String? get sourceVersion;

  /// A description for the version of the launch template.
  String? get versionDescription;

  /// The information for the launch template.
  _i3.RequestLaunchTemplateData get launchTemplateData;
  @override
  CreateLaunchTemplateVersionRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        clientToken,
        launchTemplateId,
        launchTemplateName,
        sourceVersion,
        versionDescription,
        launchTemplateData,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateLaunchTemplateVersionRequest');
    helper.add(
      'dryRun',
      dryRun,
    );
    helper.add(
      'clientToken',
      clientToken,
    );
    helper.add(
      'launchTemplateId',
      launchTemplateId,
    );
    helper.add(
      'launchTemplateName',
      launchTemplateName,
    );
    helper.add(
      'sourceVersion',
      sourceVersion,
    );
    helper.add(
      'versionDescription',
      versionDescription,
    );
    helper.add(
      'launchTemplateData',
      '***SENSITIVE***',
    );
    return helper.toString();
  }
}

class CreateLaunchTemplateVersionRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateLaunchTemplateVersionRequest> {
  const CreateLaunchTemplateVersionRequestEc2QuerySerializer()
      : super('CreateLaunchTemplateVersionRequest');

  @override
  Iterable<Type> get types => const [
        CreateLaunchTemplateVersionRequest,
        _$CreateLaunchTemplateVersionRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateLaunchTemplateVersionRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateLaunchTemplateVersionRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value!,
            specifiedType: const FullType(bool),
          ) as bool);
          break;
        case 'ClientToken':
          if (value != null) {
            result.clientToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'LaunchTemplateId':
          if (value != null) {
            result.launchTemplateId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'LaunchTemplateName':
          if (value != null) {
            result.launchTemplateName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'SourceVersion':
          if (value != null) {
            result.sourceVersion = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'VersionDescription':
          if (value != null) {
            result.versionDescription = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'LaunchTemplateData':
          result.launchTemplateData.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.RequestLaunchTemplateData),
          ) as _i3.RequestLaunchTemplateData));
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
    final payload = (object as CreateLaunchTemplateVersionRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'CreateLaunchTemplateVersionRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        payload.dryRun,
        specifiedType: const FullType(bool),
      ));
    if (payload.clientToken != null) {
      result
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          payload.clientToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.launchTemplateId != null) {
      result
        ..add(const _i1.XmlElementName('LaunchTemplateId'))
        ..add(serializers.serialize(
          payload.launchTemplateId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.launchTemplateName != null) {
      result
        ..add(const _i1.XmlElementName('LaunchTemplateName'))
        ..add(serializers.serialize(
          payload.launchTemplateName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.sourceVersion != null) {
      result
        ..add(const _i1.XmlElementName('SourceVersion'))
        ..add(serializers.serialize(
          payload.sourceVersion!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.versionDescription != null) {
      result
        ..add(const _i1.XmlElementName('VersionDescription'))
        ..add(serializers.serialize(
          payload.versionDescription!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i1.XmlElementName('LaunchTemplateData'))
      ..add(serializers.serialize(
        payload.launchTemplateData,
        specifiedType: const FullType(_i3.RequestLaunchTemplateData),
      ));
    return result;
  }
}
