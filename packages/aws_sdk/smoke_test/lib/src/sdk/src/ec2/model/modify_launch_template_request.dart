// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.ec2.model.modify_launch_template_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'modify_launch_template_request.g.dart';

abstract class ModifyLaunchTemplateRequest
    with
        _i1.HttpInput<ModifyLaunchTemplateRequest>,
        _i2.AWSEquatable<ModifyLaunchTemplateRequest>
    implements
        Built<ModifyLaunchTemplateRequest, ModifyLaunchTemplateRequestBuilder> {
  factory ModifyLaunchTemplateRequest({
    bool? dryRun,
    String? clientToken,
    String? launchTemplateId,
    String? launchTemplateName,
    String? defaultVersion,
  }) {
    dryRun ??= false;
    return _$ModifyLaunchTemplateRequest._(
      dryRun: dryRun,
      clientToken: clientToken,
      launchTemplateId: launchTemplateId,
      launchTemplateName: launchTemplateName,
      defaultVersion: defaultVersion,
    );
  }

  factory ModifyLaunchTemplateRequest.build(
          [void Function(ModifyLaunchTemplateRequestBuilder) updates]) =
      _$ModifyLaunchTemplateRequest;

  const ModifyLaunchTemplateRequest._();

  factory ModifyLaunchTemplateRequest.fromRequest(
    ModifyLaunchTemplateRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ModifyLaunchTemplateRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyLaunchTemplateRequestBuilder b) {
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
  /// You must specify either the `LaunchTemplateName` or the `LaunchTemplateId`, but not both.
  String? get launchTemplateName;

  /// The version number of the launch template to set as the default version.
  String? get defaultVersion;
  @override
  ModifyLaunchTemplateRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        clientToken,
        launchTemplateId,
        launchTemplateName,
        defaultVersion,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifyLaunchTemplateRequest');
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
      'defaultVersion',
      defaultVersion,
    );
    return helper.toString();
  }
}

class ModifyLaunchTemplateRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ModifyLaunchTemplateRequest> {
  const ModifyLaunchTemplateRequestEc2QuerySerializer()
      : super('ModifyLaunchTemplateRequest');

  @override
  Iterable<Type> get types => const [
        ModifyLaunchTemplateRequest,
        _$ModifyLaunchTemplateRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyLaunchTemplateRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyLaunchTemplateRequestBuilder();
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
        case 'SetDefaultVersion':
          if (value != null) {
            result.defaultVersion = (serializers.deserialize(
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
    final payload = (object as ModifyLaunchTemplateRequest);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ModifyLaunchTemplateRequestResponse',
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
    if (payload.defaultVersion != null) {
      result
        ..add(const _i1.XmlElementName('SetDefaultVersion'))
        ..add(serializers.serialize(
          payload.defaultVersion!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
